from dataclasses import dataclass, field
from typing import Literal


@dataclass
class IP:
    type_: Literal['addressesIpv4', 'addressesIpv6', 'addressesIpv4Download', 'addressesIpv6Download']
    address: str
    port: int
    flags: int = field(default_factory=lambda: None)
    secret: str | None = field(default_factory=lambda: None)  # added in 9 version

    def __str__(self):
        return f'{self.address}:{self.port}'
