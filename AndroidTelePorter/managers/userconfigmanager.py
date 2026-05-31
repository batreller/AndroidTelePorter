"""
UserConfigManager is a class used to work with user config files
it is based on NativeByteBuffer

Creator https://github.com/batreller/
Code https://github.com/batreller/AndroidTelePorter
"""

import base64

from telethon.errors import TypeNotFoundError
from telethon.tl.types import User, UserEmpty

from AndroidTelePorter.compat import read_user_config
from AndroidTelePorter.models.userconfig import UserConfig


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
    def __init__(self, userconfig: UserConfig) -> None:
        self.userconfig: UserConfig = userconfig

    @classmethod
    def from_base64(cls, data: str) -> 'UserConfigManager':
        return cls.from_bytes(base64.b64decode(clean_base64(data)))

    @classmethod
    def from_bytes(cls, data: bytes | bytearray) -> 'UserConfigManager':
        data = bytes(data)
        try:
            userconfig = read_user_config(data)
        except TypeNotFoundError as e:
            raise ValueError(
                f'Unknown constructor ID {hex(e.invalid_constructor_id)}. '
                f'This Telegram data uses an API layer not yet supported. '
                f'Fix: add this constructor (and any missing dependencies) to '
                f'AndroidTelePorter/compat/data/legacy.tl, or please open an issue at '
                f'https://github.com/batreller/AndroidTelePorter'
            ) from e

        if userconfig.id is None:
            raise ValueError('Invalid bytes')

        return cls(userconfig=userconfig)

    def to_telethon_user(self) -> User | UserEmpty:
        if self.userconfig.is_empty:
            return UserEmpty(id=self.userconfig.id)
        return User(
            id=self.userconfig.id,
            first_name=self.userconfig.first_name,
            username=self.userconfig.username,
            phone=self.userconfig.phone,
            bot=self.userconfig.bot,
        )
