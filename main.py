"""
Telegram android session auth key scrapper

This is a code that scrap all data (auth_key, datacenter_id etc.) from tgnet.dat file
tgnet.dat is telegram's session file on android

There are 4 locations of this file:
/data/data/org.telegram.messenger.web/files/tgnet.dat
/data/data/org.telegram.messenger.web/files/account1/tgnet.dat
/data/data/org.telegram.messenger.web/files/account2/tgnet.dat
/data/data/org.telegram.messenger.web/files/account3/tgnet.dat

Creator https://github.com/batreller/
Code https://github.com/batreller/telegram_android_session_converter
"""

from BufferWrapper import BufferWrapper

tgnet_path = 'tgnets/tgnet.dat'
with open(tgnet_path, 'rb') as f:
    buffer = BufferWrapper(f.read())

tgdata = buffer.get_tg_android_session()
valid_dcs = tgdata.validate_telethon_sessions()

for session in valid_dcs:
    client = session.telethon_client
    client.send_message('me', 'Hello, World!')
