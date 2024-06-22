"""
UserConfigManager is a class used to work with user config files
it is based on NativeByteBuffer

Creator https://github.com/batreller/
Code https://github.com/batreller/AndroidTelePorter
"""

import base64
from typing import Union

from telethon.extensions import BinaryReader
from telethon.tl.types import UserFull, User, UserEmpty


def clean_base64(data: str) -> str:
    """Clean a base64 encoded string, so it can be read by from_bytes method.

    Args:
        data (str): The base64 encoded string.

    Returns:
        str: The cleaned base64 encoded string with correct padding and without useless symbols.

    """
    data = data.replace("&#10;", "")
    while len(data) % 4 != 0:
        data += '='
    return data


class UserConfigManager:
    def __init__(self, userconfig: User | UserEmpty | UserFull) -> None:
        self.userconfig: User | UserEmpty | UserFull = userconfig

    @classmethod
    def from_base64(cls, data: str) -> 'UserConfigManager':
        return cls.from_bytes(base64.b64decode(clean_base64(data)))

    @classmethod
    def from_bytes(cls, data: Union[bytes, bytearray]) -> 'UserConfigManager':
        user = BinaryReader(data).tgread_object()
        if not isinstance(user, (User, UserEmpty, UserFull)):
            raise ValueError('Invalid bytes')
        return cls(userconfig=user)
