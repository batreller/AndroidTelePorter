import base64
import ipaddress
import struct
from typing import Optional

from telethon.sync import TelegramClient
from telethon.sessions.string import CURRENT_VERSION, _STRUCT_PREFORMAT, StringSession

from BufferWrapper.models.auth import AuthCredentials
from BufferWrapper.models.ip import IP
from BufferWrapper.models.salt import Salt


class Datacenter:
    # default android's api id and api hash, using desktop's api id and api hash strictly NOT recommended
    API_ID = 6
    API_HASH = 'eb06d4abfb49dc3eeb1aeb98ae0f581e'

    # default port of production server
    PROD_PORT = 443
    DATACENTERS = {
        1: "149.154.175.53",
        2: "149.154.167.51",
        3: "149.154.175.100",
        4: "149.154.167.91",
        5: "91.108.56.130"
    }

    currentVersion: int
    datacenterId: int
    lastInitVersion: int
    lastInitMediaVersion: Optional[int]

    ips: list[IP] = []
    isCdnDatacenter: bool

    auth: AuthCredentials
    salt: list[Salt] = []

    _telethon_string_session: Optional[str] = None
    _telethon_client: Optional[TelegramClient] = None

    def validate_telethon_session(self) -> bool:
        """
        connects to telegram via telethon and validate session

        :return: if session is valid

        :example:
        >>> if Datacenter.validate_telethon_session():
        >>>     client = Datacenter.telethon_client
        >>>     client.send_message('me', 'Hello, World!')
        """

        # it's nonsense to check session without auth key
        if self.telethon_string_session is None:
            return False

        client = self.telethon_client
        client.connect()
        self._telethon_client = client
        return client.is_user_authorized()

    @property
    def telethon_client(self) -> TelegramClient:
        """
        creates Telethon if it was not created before

        :return: Telethon client

        :raise ValueError: if invalid dc provided
        """
        if self.telethon_string_session is None:
            raise ValueError(f'Datacenter provided does not have authPermKey, try using validate_telethon_session() instead')

        if self._telethon_client is None:
            client = TelegramClient(StringSession(self.telethon_string_session), self.API_ID, self.API_HASH)
            client.connect()
            self._telethon_client = client

        return self._telethon_client

    @property
    def telethon_string_session(self) -> Optional[str]:
        """
        creates session string if it wasn't created before

        :return: Telethon's String session or None
        """

        # if there is no auth key, dc is not valid
        if self.auth.authKeyPerm is None:
            return None

        # if not generated yet, create it
        if not self._telethon_string_session:
            ip = ipaddress.ip_address(self.DATACENTERS[self.datacenterId]).packed
            self._telethon_string_session = CURRENT_VERSION + base64.urlsafe_b64encode(struct.pack(
                _STRUCT_PREFORMAT.format(len(ip)),
                self.datacenterId,
                ip,
                self.PROD_PORT,
                self.auth.authKeyPerm
            )).decode('ascii')

        return self._telethon_string_session

    # todo implement pyrogram string session

    def __str__(self):
        return str(self.auth.authKeyPerm)
