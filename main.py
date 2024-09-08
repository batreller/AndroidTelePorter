"""Telegram android session converter or AndroidTelePorter

Is a code used to scrap all needed session info
from original telegram's client on Android
and convert it into other formats or to mobile format.

There are 4 locations of tgnet.dat file:
/data/data/org.telegram.messenger.web/files/tgnet.dat
/data/data/org.telegram.messenger.web/files/account1/tgnet.dat
/data/data/org.telegram.messenger.web/files/account2/tgnet.dat
/data/data/org.telegram.messenger.web/files/account3/tgnet.dat

and 4 locations of userconfing.xml file:
/data/data/org.telegram.messenger.web/shared_prefs/userconfing.xml
/data/data/org.telegram.messenger.web/shared_prefs/userconfig1.xml
/data/data/org.telegram.messenger.web/shared_prefs/userconfig2.xml
/data/data/org.telegram.messenger.web/shared_prefs/userconfig3.xml

But in real-life scenario if you only have 1 account on your phone
you will only need /files/tgnet.dat and userconfing.xml

tgnet.dat contains auth key and dc id
userconfing.xml contains user id

Creator https://github.com/batreller/
Code https://github.com/batreller/AndroidTelePorter
"""

from AndroidTelePorter import AndroidSession

if __name__ == '__main__':
    session = AndroidSession.from_manual(
        auth_key=bytes.fromhex(
            'hex auth key'
        ),
        dc_id=0,  # datacenter id (from 1 to 5)
        user_id=12345678  # telegram user id
    )  # can be used to create any session (tgnet / tdata / telethon) from auth key, dc id and user id

    session = AndroidSession.from_tgnet(
        tgnet_path=r'files\tgnet.dat',  # contains auth key and dc id
        userconfig_path=r'shared_prefs\userconfing.xml'  # contains user id
    )  # can be used to convert session from tgnet.dat and userconfing.xml into any other format

    session.to_tgnet('converted/tgnet')  # will create all needed files right in directory that you specified
    session.to_tdata('converted/pc')  # will create another folder "tdata" inside directory that you specified
    session.to_telethon('converted/telethon.session')  # must end with .session
    session.to_pyrogram('converted/pyrogram.session')  # must end with .session
