from typing import Optional


class AuthCredentials:
    authKeyPerm: Optional[bytearray] = None
    authKeyPermId: Optional[int] = None
    authKeyTemp: Optional[bytearray] = None
    authKeyTempId: Optional[int] = None
    authKeyMediaTempId: Optional[int] = None
    authorized: int

    def __str__(self):
        return str(self.authKeyPerm)
