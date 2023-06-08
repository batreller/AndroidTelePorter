from typing import Optional, List

from BufferWrapper.models.datacenter import Datacenter
from BufferWrapper.models.headers import Headers


class TGAndroidSession:
    headers: Headers
    datacenters: list[Datacenter] = []

    def validate_telethon_sessions(self) -> Optional[List[Datacenter]]:
        """
        :return: list of datacenters with valid session

        :example:
        >>> valid_sessions: Optional[List[Datacenter]] = TGAndroidSession.validate_telethon_sessions()
        >>> for session in valid_sessions:
        >>>     client = session.telethon_client
        >>>     client.send_message('me', 'Hello, World!')
        """

        res = []
        for datacenter in self.datacenters:
            if datacenter.validate_telethon_session():
                res.append(datacenter)
        return res

    def __str__(self):
        """
        :return: `DC: 4 | en-US`
        """
        res = ''
        if hasattr(self.headers, 'currentDatacenterId'):
            res += f'DC: {self.headers.currentDatacenterId}'

        if hasattr(self.headers, 'lastInitSystemLangcode'):
            res += f' | {self.headers.lastInitSystemLangcode}'

        return res
