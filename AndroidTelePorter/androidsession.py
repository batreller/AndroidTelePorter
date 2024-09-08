import os
import sqlite3
import time

from opentele.api import API
from opentele.td import TDesktop, Account, AuthKeyType
from opentele.td import AuthKey as AuthKeyOpentele
from opentele.td.configs import DcId
from pyrogram.storage.sqlite_storage import SCHEMA
from telethon.crypto import AuthKey as AuthKeyTelethon
from telethon.sessions import SQLiteSession

from AndroidTelePorter.managers import TgnetManager, UserConfigManager
from AndroidTelePorter.constants.datacenters import DATACENTERS
from AndroidTelePorter.models.auth import AuthCredentials
from AndroidTelePorter.models.datacenter import Datacenter
from AndroidTelePorter.models.headers import Headers
from AndroidTelePorter.models.tgnet_session import TgnetSession
from telethon.tl.types import UserEmpty, User
from AndroidTelePorter.utils.filesmanager import read_tgnet, read_userconfig, write_tgnet, write_userconfig
from AndroidTelePorter.utils.auth_key import calculate_id


class AndroidSession:
    def __init__(self, tgnet_manager: TgnetManager, userconfig_manager: UserConfigManager):
        self._tgnet_manager = tgnet_manager
        self._userconfig_manager = userconfig_manager

    @classmethod
    def from_tgnet(cls, tgnet_path: str, userconfig_path: str) -> 'AndroidSession':
        """Read tgnet.dat and userconfing.xml file and return instance of current class
        that in future can be used for conversion between other formats

        Args:
            tgnet_path: path to tgnet.dat file
            userconfig_path: path to userconfing.xml file
        """
        return cls(
            tgnet_manager=read_tgnet(path=tgnet_path),
            userconfig_manager=read_userconfig(path=userconfig_path)
        )

    @classmethod
    def from_manual(cls, auth_key: bytes, dc_id: int, user_id: int,
                    config_version: int = 5,
                    test_backend: bool = False,
                    client_blocked: bool = False,
                    last_init_system_langcode: str = 'en-us',
                    time_difference: int = 0,
                    last_dc_update_time: int = 0,
                    push_session_id: int = 0,
                    registered_for_internal_push: bool = True,
                    last_server_time: int = 0,
                    current_time: int = int(time.time()),
                    sessions_to_destroy: list[int] | None = None,

                    current_dc_version: int = 13,
                    last_dc_init_version: int = 48502,
                    last_dc_media_init_version: int = 48502,
                    is_cdn_datacenter: bool = False,
                    dc_salt: list[int] | None = None,
                    auth_key_temp: bytes = 0,
                    auth_key_media_temp: bytes = 0,
                    authorized: int = 1
                    ) -> 'AndroidSession':
        """Create instance of current object with all needed fields
        In future can be used to convert to any possible format.

        Args:
            auth_key: 256 bytes auth key used to log into account
            dc_id: datacenter id of current account
            user_id: user id of current account
            config_version: version of tgnet.dat file (default 5)
            test_backend: whether this session is used to test backend (default False)
            client_blocked: whether current client is blocked (default False)
            last_init_system_langcode: last lang code on client's system (default 'en-us')
            time_difference: time difference between client and server (default 0)
            last_dc_update_time: last time when datacenter was updated (default 0)
            push_session_id: push session id (default 0)
            registered_for_internal_push: whether client is registered for internal push (default True)
            last_server_time: last server time (default 0)
            current_time: current unix timestamp (default time.time())
            sessions_to_destroy: sessions to destroy (default [])
            current_dc_version: current dc version (default 13)
            last_dc_init_version: last dc init version (default 48502)
            last_dc_media_init_version: last dc media init version (default 48502)
            is_cdn_datacenter: whether current dc is a cdn datacenter (default False)
            dc_salt: dc salts, used somewhere deeply by MTProto
             you can read more detailed here https://core.telegram.org/schema/mtproto (default [])
            auth_key_temp: temporary auth key, used by telegram client while generating permanent auth key (default None)
            auth_key_media_temp: have no idea what is this for (default None)
            authorized: integer 1 or 0, does not really affect anything in the session (default 1)
        """
        if not auth_key:
            raise ValueError('auth_key must be passed')
        if not dc_id:
            raise ValueError('dc_id must be passed')
        if not user_id:
            raise ValueError('user_id must be passed')

        if sessions_to_destroy is None:
            sessions_to_destroy = []
        if dc_salt is None:
            dc_salt = []

        tgnet_manager = TgnetManager(
            session=TgnetSession(
                headers=Headers(
                    version=config_version,
                    test_backend=test_backend,
                    client_blocked=client_blocked,
                    last_init_system_langcode=last_init_system_langcode,
                    current_dc_id=dc_id,
                    time_difference=time_difference,
                    last_dc_update_time=last_dc_update_time,
                    push_session_id=push_session_id,
                    registered_for_internal_push=registered_for_internal_push,
                    last_server_time=last_server_time,
                    current_time=current_time,
                    sessions_to_destroy=sessions_to_destroy
                ),
                datacenters=[
                    Datacenter(
                        current_version=current_dc_version,
                        dc_id=dc_id,
                        last_init_version=last_dc_init_version,
                        last_init_media_version=last_dc_media_init_version,
                        is_cdn_datacenter=is_cdn_datacenter,
                        auth=AuthCredentials(
                            auth_key_perm=auth_key,
                            auth_key_perm_id=calculate_id(auth_key),
                            auth_key_temp=auth_key_temp,
                            auth_key_temp_id=calculate_id(auth_key_temp) if auth_key_temp else 0,
                            auth_key_media_temp=auth_key_media_temp,
                            auth_key_media_temp_id=calculate_id(auth_key_media_temp) if auth_key_media_temp else 0,
                            authorized=authorized
                        ),
                        ips=DATACENTERS[dc_id],
                        salt=dc_salt,
                    )
                ]
            )
        )
        userconfig = UserConfigManager(UserEmpty(id=user_id))
        return cls(tgnet_manager=tgnet_manager, userconfig_manager=userconfig)

    def to_telethon(self, filename: str, force: bool = True) -> None:
        """Create telethon .session file and save it.

        Args:
            filename: Filename with full path where .session file will be saved
            force: if True, will overwrite existing .session file, otherwise will raise an error
        """
        if not filename.endswith('.session'):
            raise ValueError('filename must end with .session')
        if not force and os.path.exists(filename):
            raise FileExistsError(f"{filename} already exists")
        if not force and not os.path.exists(os.path.dirname(filename)):
            raise FileExistsError(f"The folder where you are trying to write .session file does not exist, you can set force=True to avoid this error")
        os.makedirs(os.path.dirname(filename), exist_ok=True)

        sqlite_session = SQLiteSession(filename)

        sqlite_session.auth_key = AuthKeyTelethon(data=self._tgnet_manager.session.auth_key)
        sqlite_session.set_dc(
            dc_id=self._tgnet_manager.session.current_dc.dc_id,
            server_address=self._tgnet_manager.session.current_dc.ips['addressesIpv4'][0].address,
            port=self._tgnet_manager.session.current_dc.ips['addressesIpv4'][0].port
        )

        # telethon always adds first entity with user_id=0 and access_hash=user_id for some reason
        user_id_entity = User(
            id=0,
            access_hash=self._userconfig_manager.userconfig.id,
            username=self._userconfig_manager.userconfig.username if hasattr(self._userconfig_manager.userconfig,
                                                                             'username') else None,
            phone=self._userconfig_manager.userconfig.phone if hasattr(self._userconfig_manager.userconfig,
                                                                       'phone') else None,
            first_name=self._userconfig_manager.userconfig.first_name if hasattr(self._userconfig_manager.userconfig,
                                                                                 'first_name') else None,
        )
        sqlite_session.process_entities([user_id_entity, self._userconfig_manager.userconfig])
        sqlite_session.save()

    def to_tdata(self, path: str, force: bool = True) -> None:
        """Create tdata session.

        Args:
            path: Path to folder where /tdata folder will be created and saved
            force: if True, will overwrite existing /tdata folder, otherwise will raise an error
        """
        tdata_path = os.path.join(path, 'tdata')
        if not force and os.path.exists(tdata_path):
            raise FileExistsError(f"{tdata_path} already exist")
        if not force and not os.path.exists(path):
            raise FileExistsError(f"The folder {path} does not exist")
        os.makedirs(os.path.dirname(tdata_path), exist_ok=True)

        if self._tgnet_manager.session.headers.last_init_system_langcode:
            system_lang_code = self._tgnet_manager.session.headers.last_init_system_langcode
        else:
            system_lang_code = 'en-us'

        if self._tgnet_manager.session.headers.last_init_system_langcode:
            lang_code = self._tgnet_manager.session.headers.last_init_system_langcode.split('-')[0]
        else:
            lang_code = 'en'

        api = API.TelegramAndroid(
            app_version='10.13.2 (4850)',
            lang_code=lang_code,
            system_lang_code=system_lang_code,
            lang_pack='android'
        )
        client = TDesktop()
        client._TDesktop__generateLocalKey()
        account = Account(owner=client, api=api)
        dc_id = DcId(self._tgnet_manager.session.dc_id)
        auth_key = AuthKeyOpentele(self._tgnet_manager.session.auth_key, AuthKeyType.ReadFromFile, dc_id)
        account._setMtpAuthorizationCustom(dc_id, self._userconfig_manager.userconfig.id, [auth_key])
        client._addSingleAccount(account)
        client.SaveTData(tdata_path)

    def to_pyrogram(self, filename: str, force: bool = True) -> None:
        """Create pyrogram .session file and save it.

        Args:
            filename: Filename with full path where .session file will be saved
            force: if True, will overwrite existing .session file, otherwise will raise an error
        """

        if not filename.endswith('.session'):
            raise ValueError('filename must end with .session')
        if os.path.exists(filename):
            if not force:
                raise FileExistsError(f"{filename} already exists")
            else:
                os.remove(filename)
        if not force and os.path.exists(os.path.dirname(filename)):
            raise FileExistsError(f"The folder where you are trying to write .session file does not exist, you can set force=True to avoid this error")
        os.makedirs(os.path.dirname(filename), exist_ok=True)

        with sqlite3.connect(filename) as db:
            db.executescript(SCHEMA)
            db.commit()
            db.execute("INSERT INTO version VALUES (?)", (3,))
            params = (
                self._tgnet_manager.session.dc_id,  # dc id
                6,  # api id
                self._tgnet_manager.session.headers.test_backend,  # test mode
                self._tgnet_manager.session.auth_key,  # auth key
                0,  # timestamp
                self._userconfig_manager.userconfig.id or 9999,  # user id
                self._userconfig_manager.userconfig.bot if hasattr(self._userconfig_manager.userconfig, 'bot') else False  # is bot
            )
            db.execute("INSERT INTO sessions VALUES (?, ?, ?, ?, ?, ?, ?)", params)
            db.commit()

    def to_tgnet(self, path: str, force: bool = True) -> None:
        """Create mobile telegram tgnet session for original telegram client (not Telegram X).

        Args:
            path: Path to folder where /files and /shared_prefs folders will be created
            force: if True, will overwrite existing content in folders, otherwise will raise an error
        """

        files_path = os.path.join(path, 'files')
        shared_prefs_path = os.path.join(path, 'shared_prefs')

        if not force and os.path.exists(path):
            raise FileExistsError(f"{path} already exist")

        write_tgnet(self._tgnet_manager, files_path)
        write_userconfig(self._userconfig_manager, shared_prefs_path)
