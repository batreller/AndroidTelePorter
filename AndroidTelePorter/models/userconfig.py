from dataclasses import dataclass


@dataclass
class UserConfig:
    """The only user fields the converters actually need.

    Decoded from the Android ``userconfing.xml`` "user" blob (see
    ``AndroidTelePorter.compat.injector.read_user_config``) or built manually via
    ``AndroidSession.from_manual``.

    ``is_empty`` mirrors the Telegram ``userEmpty`` constructor (a placeholder
    that carries only an ``id``); when it is True the other fields are unset.
    """
    id: int
    first_name: str | None = None
    username: str | None = None
    phone: str | None = None
    bot: bool = False
    is_empty: bool = False
