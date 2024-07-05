"""
TgnetManager is a class used to work with tgnet.dat files
it is based on NativeByteBuffer

Creator https://github.com/batreller/
Code https://github.com/batreller/AndroidTelePorter
"""

import time
from typing import Literal

from AndroidTelePorter.utils.nativebytebuffer import NativeByteBuffer
from AndroidTelePorter.models.auth import AuthCredentials
from AndroidTelePorter.models.datacenter import Datacenter
from AndroidTelePorter.models.headers import Headers
from AndroidTelePorter.models.ip import IP
from AndroidTelePorter.models.salt import Salt
from AndroidTelePorter.models.tgnet_session import TgnetSession


class TgnetManager:
    def __init__(self, session: TgnetSession) -> None:
        self.session = session

    def to_buffer(self) -> NativeByteBuffer:
        buffer = NativeByteBuffer()
        self._write_front_headers(buffer=buffer, headers=self.session.headers)
        self._write_datacenters(buffer=buffer, datacenters=self.session.datacenters)
        self._write_buffer_length(buffer=buffer)
        return buffer

    @classmethod
    def from_buffer(cls, data: bytes | bytearray) -> 'TgnetManager':
        buffer = NativeByteBuffer(data)
        session = TgnetSession(
            headers=cls._read_headers(buffer),
            datacenters=cls._read_datacenters(buffer)
        )
        return cls(session=session)

    @staticmethod
    def _write_front_headers(buffer: NativeByteBuffer, headers: Headers):
        buffer.write_int(headers.version)
        buffer.write_bool(headers.test_backend)

        if headers.version >= 3:
            buffer.write_bool(headers.client_blocked)
        if headers.version >= 4:
            buffer.write_string(headers.last_init_system_langcode)
        buffer.write_bool(True)
        buffer.write_int(headers.current_dc_id)
        buffer.write_int(headers.time_difference)
        buffer.write_int(headers.last_dc_update_time)
        buffer.write_long(headers.push_session_id)

        if headers.version >= 2:
            buffer.write_bool(headers.registered_for_internal_push)
        if headers.version >= 5:
            buffer.write_int(headers.last_server_time)

        buffer.write_int(0)  # writing sessions_to_destroy is not implemented

    @staticmethod
    def _write_datacenters(buffer: NativeByteBuffer, datacenters: list[Datacenter]):
        buffer.write_int(len(datacenters))
        for datacenter in datacenters:
            buffer.write_int(datacenter.current_version)
            buffer.write_int(datacenter.dc_id)
            buffer.write_int(datacenter.last_init_version)

            if datacenter.current_version > 10:
                buffer.write_int(datacenter.last_init_media_version)

            # writing ips
            for address_group in datacenter.ips:
                buffer.write_int(len(datacenter.ips[address_group]))

                for ip in datacenter.ips[address_group]:
                    buffer.write_string(ip.address)
                    buffer.write_int(ip.port)

                    if datacenter.current_version >= 7:
                        buffer.write_int(ip.flags)

                    if datacenter.current_version >= 11:
                        buffer.write_string(ip.secret)
                    elif datacenter.current_version >= 9:
                        raise NotImplementedError(
                            'Writing sessions with Datacenter\'s versions 9 and 10 is not supported, please use another version')

            if datacenter.current_version >= 6:
                buffer.write_bool(datacenter.is_cdn_datacenter)

            # writing auth credentials
            if datacenter.auth.auth_key_perm:
                buffer.write_int(len(datacenter.auth.auth_key_perm), signed=False)
                buffer.write_bytes(datacenter.auth.auth_key_perm)
            else:
                buffer.write_int(0)

            if datacenter.current_version >= 4:
                buffer.write_long(datacenter.auth.auth_key_perm_id)
            else:
                raise NotImplementedError('Datacenters below version 4 are not supported')

            if datacenter.current_version >= 8:
                if datacenter.auth.auth_key_temp:
                    buffer.write_int(len(datacenter.auth.auth_key_temp), signed=False)
                    buffer.write_bytes(datacenter.auth.auth_key_temp)
                    buffer.write_long(datacenter.auth.auth_key_temp_id)
                else:
                    buffer.write_int(0)
                    buffer.write_long(0)

            if datacenter.current_version >= 12:
                if datacenter.auth.auth_key_media_temp:
                    buffer.write_int(len(datacenter.auth.auth_key_media_temp), signed=False)
                    buffer.write_bytes(datacenter.auth.auth_key_media_temp)
                    buffer.write_long(datacenter.auth.auth_key_media_temp_id)
                else:
                    buffer.write_int(0)
                    buffer.write_long(0)

            buffer.write_int(datacenter.auth.authorized)

            # writing salt info
            buffer.write_int(0)
            if datacenter.current_version >= 13:
                buffer.write_int(0)  # writing salts in session is not implemented

    @staticmethod
    def _write_buffer_length(buffer: NativeByteBuffer):
        buffer_with_length = NativeByteBuffer()
        buffer_with_length.write_int(len(buffer))
        buffer_with_length.write_bytes(buffer.get_value())
        buffer.stream.seek(0)
        buffer.write_bytes(buffer_with_length.get_value())

    @classmethod
    def _read_headers(cls, buffer: NativeByteBuffer) -> Headers:
        buffer.read_int()
        headers = Headers(
            version=buffer.read_int(),
            test_backend=buffer.read_bool()
        )
        if headers.version >= 3:
            client_blocked = buffer.read_bool()
            headers.client_blocked = client_blocked
        if headers.version >= 4:
            last_init_system_langcode = buffer.read_string()
            headers.last_init_system_langcode = last_init_system_langcode

        if buffer.read_bool():  # will be False if session is empty
            headers.current_dc_id = buffer.read_int(signed=False)
            headers.time_difference = buffer.read_int()
            headers.last_dc_update_time = buffer.read_int()
            headers.push_session_id = buffer.read_long()

            if headers.version >= 2:
                headers.registered_for_internal_push = buffer.read_bool()
            if headers.version >= 5:
                headers.last_server_time = buffer.read_int()
                headers.current_time = int(time.time())

                if headers.time_difference < headers.current_time < headers.last_server_time:
                    headers.time_difference += (headers.last_server_time - headers.current_time)

            count = buffer.read_int(signed=False)
            for _ in range(count):
                headers.sessions_to_destroy.append(buffer.read_long())
        return headers

    @classmethod
    def _get_ip(cls, buffer: NativeByteBuffer, current_version: int, ip_type: Literal[
            'addressesIpv4', 'addressesIpv6', 'addressesIpv4Download', 'addressesIpv6Download']) -> IP:
        ip = IP(
            type_=ip_type,
            address=buffer.read_string(),
            port=buffer.read_int()
        )

        if current_version >= 7:
            flags = buffer.read_int()
        else:
            flags = 0
        ip.flags = flags

        if current_version >= 11:
            secret = buffer.read_string()
            ip.secret = secret

        elif current_version >= 9:
            secret = buffer.read_string()
            if secret:
                size = len(secret) // 2
                result = bytearray(size)
                for i in range(size):
                    result[i] = int(secret[i * 2:i * 2 + 2], 16)
                secret = result.decode('utf-8')
            ip.secret = secret

        return ip

    @classmethod
    def _read_datacenters(cls, buffer: NativeByteBuffer) -> list[Datacenter]:
        datacenters = []
        num_of_datacenters = buffer.read_int()

        for i in range(num_of_datacenters):
            datacenter = Datacenter(
                current_version=buffer.read_int(),
                dc_id=buffer.read_int(),
                last_init_version=buffer.read_int()
            )

            if datacenter.current_version > 10:
                datacenter.last_init_media_version = buffer.read_int()

            count = 4 if datacenter.current_version >= 5 else 1

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

                ips_amount = buffer.read_int()
                for ip_index in range(ips_amount):
                    ip = cls._get_ip(buffer, datacenter.current_version, array)
                    datacenter.ips[array].append(ip)

            if datacenter.current_version >= 6:
                datacenter.is_cdn_datacenter = buffer.read_bool()

            auth_credentials = cls._auth_credentials(buffer, datacenter.current_version)
            datacenter.auth = auth_credentials

            datacenter.salt = cls._salt_info(buffer, datacenter.current_version)
            datacenters.append(datacenter)

        return datacenters

    @classmethod
    def _auth_credentials(cls, buffer: NativeByteBuffer, current_version: int) -> AuthCredentials:
        auth = AuthCredentials()
        len_of_bytes = buffer.read_int(signed=False)
        if len_of_bytes != 0:
            auth.auth_key_perm = buffer.read_bytes(len_of_bytes)

        if current_version >= 4:
            auth.auth_key_perm_id = buffer.read_long()

        else:
            len_of_bytes = buffer.read_int(signed=False)
            if len_of_bytes != 0:
                auth.auth_key_perm_id = buffer.read_long()

        if current_version >= 8:
            len_of_bytes = buffer.read_int(signed=False)
            if len_of_bytes != 0:
                auth.auth_key_temp = buffer.read_bytes(len_of_bytes)
            auth.auth_key_temp_id = buffer.read_long()

        if current_version >= 12:
            len_of_bytes = buffer.read_int(signed=False)
            if len_of_bytes != 0:
                auth.auth_key_media_temp = buffer.read_bytes(len_of_bytes)
            auth.auth_key_media_temp_id = buffer.read_long()
        auth.authorized = buffer.read_int()
        return auth

    @classmethod
    def _salt_info(cls, buffer: NativeByteBuffer, current_version: int) -> list[Salt]:
        salts = []
        bytes_len = buffer.read_int()
        for x in range(bytes_len):
            salt = Salt()
            salt.salt_valid_since = buffer.read_int()
            salt.salt_valid_until = buffer.read_int()
            salt.salt = buffer.read_long()
            salts.append(salt)

        if current_version >= 13:
            bytes_len = buffer.read_int()
            for x in range(bytes_len):
                salt = Salt()
                salt.salt_valid_since = buffer.read_int()
                salt.salt_valid_until = buffer.read_int()
                salt.salt = buffer.read_long()
                salts.append(salt)

        return salts
