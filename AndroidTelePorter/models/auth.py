from dataclasses import dataclass, field


@dataclass
class AuthCredentials:
    auth_key_perm: bytearray | bytes | None = field(default_factory=lambda: None)  # will be None in empty session
    auth_key_perm_id: int | None = field(default_factory=lambda: None)  # will be None in empty session
    auth_key_temp: bytearray | bytes | None = field(default_factory=lambda: None)  # added in 8 version
    auth_key_temp_id: int | None = field(default_factory=lambda: None)  # added in 8 version
    auth_key_media_temp: bytearray | bytes | None = field(default_factory=lambda: None)  # added in 12 version
    auth_key_media_temp_id: int | None = field(default_factory=lambda: None)  # added in 12 version
    authorized: int = field(default_factory=lambda: None)

    def __str__(self):
        return str(self.auth_key_perm)
