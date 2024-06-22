from dataclasses import dataclass, field

from AndroidTelePorter.models.auth import AuthCredentials
from AndroidTelePorter.models.ip import IP
from AndroidTelePorter.models.salt import Salt


@dataclass
class Datacenter:
    current_version: int
    dc_id: int
    last_init_version: int

    auth: AuthCredentials = field(default_factory=lambda: AuthCredentials)

    last_init_media_version: int | None = field(default_factory=lambda: None)  # added in 10 version

    is_cdn_datacenter: bool | None = field(default_factory=lambda: None)  # added in 6 version

    ips: dict[str, list[IP]] = field(default_factory=lambda: {
        'addressesIpv4': [],
        'addressesIpv6': [],
        'addressesIpv4Download': [],
        'addressesIpv6Download': [],
    })

    salt: list[Salt] = field(default_factory=lambda: [])

    def __str__(self):
        return f'DC ID: {self.dc_id} | Auth Key: {len(self.auth.auth_key_perm)} bytes'
