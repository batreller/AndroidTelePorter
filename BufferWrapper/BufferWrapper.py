"""
BufferWrapper is a wrapper for NativeByteBuffer

Creator https://github.com/batreller/
Code https://github.com/batreller/telegram_android_session_converter
"""

import time
from typing import Literal

from BufferWrapper.models.auth import AuthCredentials
from BufferWrapper.models.datacenter import Datacenter
from BufferWrapper.models.headers import Headers
from BufferWrapper.models.ip import IP
from BufferWrapper.models.salt import Salt
from BufferWrapper.models.tg_android_session import TGAndroidSession
from NativeByteBuffer import NativeByteBuffer


class BufferWrapper:
    def __init__(self, bytes_: bytes):
        self.buffer = NativeByteBuffer(bytes_)
        self.NativeByteBuffer = NativeByteBuffer
        self._PADDING = 24
        self._CONFIG_VERSION = 99999
        self.currentVersion = 0

    def _get_current_time(self) -> int:
        return int(time.time())

    def get_tg_android_session(self) -> TGAndroidSession:
        session = TGAndroidSession()
        session.headers = self.front_headers()
        session.datacenters = self.datacenters()
        return session

    def front_headers(self) -> Headers:
        headers = Headers()
        self.buffer.readBytes(4)
        if self.buffer is not None:
            version = self.buffer.readUint32(None)
            headers.version = version

            if version <= self._CONFIG_VERSION:
                testBackend = self.buffer.readBool(None)
                headers.testBackend = testBackend
                if version >= 3:
                    clientBlocked = self.buffer.readBool(None)
                    headers.clientBlocked = clientBlocked
                if version >= 4:
                    lastInitSystemLangcode = self.buffer.readString(None)
                    headers.lastInitSystemLangcode = lastInitSystemLangcode

                if self.buffer.readBool():
                    currentDatacenterId = self.buffer.readUint32(None)
                    timeDifference = self.buffer.readInt32(None)
                    lastDcUpdateTime = self.buffer.readInt32(None)
                    pushSessionId = self.buffer.readInt64(None)

                    headers.currentDatacenterId = currentDatacenterId
                    headers.timeDifference = timeDifference
                    headers.lastDcUpdateTime = lastDcUpdateTime
                    headers.pushSessionId = pushSessionId

                    if version >= 2:
                        registeredForInternalPush = self.buffer.readBool(None)
                        headers.registeredForInternalPush = registeredForInternalPush
                    if version >= 5:
                        lastServerTime = self.buffer.readInt32(None)
                        currentTime = self._get_current_time()

                        headers.lastServerTime = lastServerTime
                        headers.currentTime = currentTime

                        if currentTime > timeDifference and currentTime < lastServerTime:
                            timeDifference += (lastServerTime - currentTime)

                    count = self.buffer.readUint32(None)
                    for a in range(count):
                        self.buffer.readInt64(None)
        return headers

    def get_ip(self, ip_type: Literal['addressesIpv4', 'addressesIpv6', 'addressesIpv4Download', 'addressesIpv6Download']) -> IP:
        ip = IP()
        ip.type_ = ip_type

        address = self.buffer.readString()
        port = self.buffer.readInt32()
        ip.address = address
        ip.port = port

        if self.currentVersion >= 7:
            flags = self.buffer.readInt32()
        else:
            flags = 0
        ip.flags = flags

        if self.currentVersion >= 11:
            secret = self.buffer.readString()
            ip.secret = secret

        elif self.currentVersion >= 9:
            secret = self.buffer.readString()
            if secret:
                size = len(secret) // 2
                result = bytearray(size)
                for i in range(size):
                    result[i] = int(secret[i * 2:i * 2 + 2], 16)
                secret = result.decode('utf-8')
            ip.secret = secret

        return ip

    def datacenters(self) -> list[Datacenter]:
        datacenters = []
        numOfDatacenters = self.buffer.readInt32()

        for i in range(numOfDatacenters):
            datacenter = Datacenter()

            currentVersion = self.buffer.readInt32()
            datacenter.currentVersion = currentVersion
            self.currentVersion = currentVersion
            datacenterId = self.buffer.readInt32()
            datacenter.datacenterId = datacenterId

            lastInitVersion = self.buffer.readInt32()
            datacenter.lastInitVersion = lastInitVersion

            if currentVersion > 10:
                lastInitMediaVersion = self.buffer.readInt32()
                datacenter.lastInitMediaVersion = lastInitMediaVersion

            count = 4 if currentVersion >= 5 else 1

            for b in range(count):
                array = None
                if b == 0:
                    array = 'addressesIpv4'
                elif b == 1:
                    array = 'addressesIpv6'
                elif b == 2:
                    array = 'addressesIpv4Download'
                elif b == 3:
                    array = 'addressesIpv6Download'

                if array is None:
                    continue

                ips = self.buffer.readInt32()

                for ip_index in range(ips):
                    ip = self.get_ip(array)
                    datacenter.ips.append(ip)

            if currentVersion >= 6:
                isCdnDatacenter = self.buffer.readBool()
                datacenter.isCdnDatacenter = isCdnDatacenter

            auth_credentials = self.auth_credentials()
            datacenter.auth = auth_credentials

            datacenter.salt = self.salt_info()
            datacenters.append(datacenter)

        return datacenters

    def auth_credentials(self) -> AuthCredentials:
        auth = AuthCredentials()
        len_of_bytes = self.buffer.readInt32()
        if len_of_bytes != 0:
            auth.authKeyPerm = self.buffer.readBytes(len_of_bytes)

        if self.currentVersion >= 4:
            auth.authKeyPermId = self.buffer.readInt64()

        else:
            len_of_bytes = self.buffer.readUint32()
            if len_of_bytes != 0:
                auth.authKeyPermId = self.buffer.readInt64()

        if self.currentVersion >= 8:
            len_of_bytes = self.buffer.readUint32()
            if len_of_bytes != 0:
                auth.authKeyTemp = self.buffer.readBytes(len_of_bytes)
            auth.authKeyTempId = self.buffer.readInt64()

        if self.currentVersion >= 12:
            len_of_bytes = self.buffer.readInt32()
            if len_of_bytes != 0:
                auth.authKeyMediaTemp = self.buffer.readBytes(len_of_bytes)
            auth.authKeyMediaTempId = self.buffer.readInt64()

        auth.authorized = self.buffer.readInt32()

        return auth

    def salt_info(self) -> list[Salt]:
        salts = []
        bytes_len = self.buffer.readInt32()
        for x in range(bytes_len):
            salt = Salt()
            salt.salt_valid_since = self.buffer.readInt32()
            salt.salt_valid_until = self.buffer.readInt32()
            salt.salt = self.buffer.readInt64()
            salts.append(salt)

        if self.currentVersion >= 13:
            bytes_len = self.buffer.readInt32()
            for x in range(bytes_len):
                salt = Salt()
                salt.salt_valid_since = self.buffer.readInt32()
                salt.salt_valid_until = self.buffer.readInt32()
                salt.salt = self.buffer.readInt64()
                salts.append(salt)

        return salts
