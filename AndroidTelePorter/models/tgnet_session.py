from dataclasses import dataclass

from AndroidTelePorter.models.datacenter import Datacenter
from AndroidTelePorter.models.headers import Headers


@dataclass
class TgnetSession:
    headers: Headers
    datacenters: list[Datacenter]

    def __post_init__(self):
        self.__dcs = {}
        for datacenter in self.datacenters:
            self.__dcs[datacenter.dc_id] = datacenter

    @property
    def current_dc(self) -> Datacenter:
        return self.get_dc(self.headers.current_dc_id)

    @property
    def auth_key(self) -> bytes:
        """
        Returns: bytes (auth key for current dc)
        """
        return self.current_dc.auth.auth_key_perm

    @property
    def dc_id(self) -> int:
        return self.headers.current_dc_id

    def get_dc(self, dc_id: int) -> Datacenter | None:
        return self.__dcs.get(dc_id)
