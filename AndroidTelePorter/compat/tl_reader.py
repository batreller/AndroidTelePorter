"""
tl_reader.py — Parser for the historical TL schema in ``data/legacy.tl``.

Why this module exists
----------------------
Telethon only models the constructors of the API layer it was generated
against, so it cannot decode the older ``User`` / ``UserFull`` / ``UserEmpty``
versions (and their recursive dependencies) that an Android ``userconfig`` blob
may contain. To fix that, :mod:`AndroidTelePorter.compat.injector` synthesizes a
class for every missing constructor and registers it into Telethon so that
native ``tgread_object()`` can decode the whole blob.

This module is the *schema* half of that mechanism: it reads ``data/legacy.tl``
and builds :data:`_REGISTRY` — a ``{constructor_id: _Constructor}`` map where
each :class:`_Constructor` carries its pre-classified :class:`_Arg` list. The
injector consumes ``_REGISTRY`` / ``_SCALARS`` / ``_Constructor`` / ``_Arg`` to
generate the per-constructor ``from_reader`` bodies. It deliberately contains no
reader of its own — Telethon does the actual byte reading.

Wire-format facts the arg classification relies on (verified against the schema):
* No bare object fields (``%``) and no bare ``vector<...>`` exist in the tree, so
  EVERY non-scalar field is boxed -> read a 4-byte constructor id and dispatch.
* ``Vector<...>`` is the standard boxed vector (id 0x1cb5c415 + count + items);
  items are boxed when their element type is an object, bare when scalar.
* ``x:flags.N?true`` is a flag-only bool (0 bytes); ``flags:#`` / ``flags2:#`` are
  the 32-bit flag words.
"""

import os
import re

_LEGACY_TL_PATH = os.path.join(os.path.dirname(__file__), 'data', 'legacy.tl')

# Scalar TL types and how to read each from a Telethon BinaryReader.
_SCALARS = {
    'int': lambda r: r.read_int(),
    'long': lambda r: r.read_long(),
    'double': lambda r: r.read_double(),
    'int128': lambda r: r.read_large_int(bits=128, signed=False),
    'int256': lambda r: r.read_large_int(bits=256, signed=False),
    'string': lambda r: r.tgread_string(),
    'bytes': lambda r: r.tgread_bytes(),
    'date': lambda r: r.read_int(),
}


# ---------------------------------------------------------------------------
# Schema model
# ---------------------------------------------------------------------------

class _Arg:
    """One `name:type` argument, pre-classified for fast reading."""

    __slots__ = ('name', 'flag_indicator', 'flag', 'flag_bit',
                 'is_vector', 'kind', 'scalar')

    def __init__(self, name, flag_indicator=False, flag=None, flag_bit=-1,
                 is_vector=False, kind='object', scalar=None):
        self.name = name
        self.flag_indicator = flag_indicator
        self.flag = flag            # 'flags' / 'flags2' this arg is gated on
        self.flag_bit = flag_bit
        self.is_vector = is_vector
        self.kind = kind            # 'scalar' | 'object' | 'bool' | 'true'
        self.scalar = scalar        # scalar type name when kind == 'scalar'


class _Constructor:
    __slots__ = ('name', 'id', 'args')

    def __init__(self, name, cid, args):
        self.name = name
        self.id = cid
        self.args = args


def _classify_type(type_token: str):
    """Return (kind, scalar_name) for a bare (flag/vector-stripped) type token."""
    low = type_token.lower()
    if low == 'true':
        return 'true', None
    if low == 'bool':
        return 'bool', None
    if low in _SCALARS:
        return 'scalar', low
    # Abstract boxed (`UserStatus`) or concrete id-suffixed (`photo_82d1f706`):
    # both are boxed on the wire.
    return 'object', None


def _parse_arg(token: str) -> _Arg:
    name, _, type_str = token.partition(':')

    if type_str == '#':
        return _Arg(name, flag_indicator=True)

    flag = None
    flag_bit = -1
    flag_match = re.match(r'(flags\d*)\.(\d+)\?(.+)$', type_str)
    if flag_match:
        flag = flag_match.group(1)
        flag_bit = int(flag_match.group(2))
        type_str = flag_match.group(3)

    is_vector = False
    vector_match = re.match(r'[Vv]ector<(.+)>$', type_str)
    if vector_match:
        is_vector = True
        type_str = vector_match.group(1)

    kind, scalar = _classify_type(type_str)
    return _Arg(name, flag=flag, flag_bit=flag_bit,
                is_vector=is_vector, kind=kind, scalar=scalar)


_LINE_RE = re.compile(r'^(\S+)\s*(.*?)\s*=\s*[\w.<>]+;$')


def _parse_constructor(line: str):
    match = _LINE_RE.match(line)
    if not match:
        return None
    predicate = match.group(1)
    args_str = match.group(2).strip()

    # Standard TL form: `name_idhex#idhex` — the real constructor id sits after
    # `#`. The id is also kept as a `_idhex` name suffix for readability, which
    # we strip so the stored name stays the bare predicate (e.g. `userEmpty`).
    if '#' not in predicate:
        return None
    name_part, _, id_part = predicate.partition('#')
    id_part = id_part.split('#', 1)[0]  # guard against a stray second '#'
    try:
        cid = int(id_part, 16)
    except ValueError:
        return None
    suffix = '_' + id_part
    name = name_part[:-len(suffix)] if name_part.lower().endswith(suffix.lower()) else name_part

    args = [_parse_arg(tok) for tok in args_str.split()] if args_str else []
    return _Constructor(name, cid, args)


def _build_registry(tl_path: str = _LEGACY_TL_PATH) -> dict:
    try:
        with open(tl_path, encoding='utf-8') as f:
            text = f.read()
    except FileNotFoundError:
        return {}

    registry: dict[int, _Constructor] = {}
    for raw in text.splitlines():
        comment = raw.find('//')
        if comment != -1:
            raw = raw[:comment]
        line = raw.strip()
        if not line:
            continue
        try:
            ctor = _parse_constructor(line)
        except Exception:
            ctor = None
        if ctor is not None:
            registry.setdefault(ctor.id, ctor)
    return registry


_REGISTRY = _build_registry()
