from typing import Literal


class IP:
    type_: Literal['addressesIpv4', 'addressesIpv6', 'addressesIpv4Download', 'addressesIpv6Download']
    address: str  # readString
    port: str  # int32
    flags: int  # int32
    secret: str  # readString

    def __str__(self):
        return f'{self.address}:{self.port}'
