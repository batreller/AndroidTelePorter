# AndroidTelePorter

Serializer and deserializer for mobile telegram session

## Table of Contents

- [Project Name](#project-name)
  - [Table of Contents](#table-of-contents)
  - [Description](#description)
  - [Installation](#installation)
  - [Usage](#usage)

## Description

This tool can be used to serialize and deserialize session on original Telegram client for Android phones.

It can extract any information stored in files/tgnet.dat and all needed information from shared_prefs/userconfing.xml

It also can deserialize existing session into object and convert it into other session formats (currently supported tdata, telethon and tgnet)

And you can serialize session manually into mobile tgnet format, all you need is just auth key, datacenter id and user id, it is minimum information needed for almost any session format

## Installation

You can easily set up this package as it is available on pypi by running the following command
```bash
pip install AndroidTelePorter
```

## Usage

#### Converting existing mobile session into other format
```python
from AndroidTelePorter import AndroidSession

# both tgnet.dat and userconfing.xml are stored in /data/data/org.telegram.messenger directory
# if you have more than 1 account you would need to use tgnet.dat from /files/account(account_number)/tgnet.dat
# and corresponding userconfig.xml file from /shared_prefs/userconfig(account_number).xml
session = AndroidSession.from_tgnet(
    tgnet_path=r'files\tgnet.dat',  # contains auth key and dc id
    userconfig_path=r'shared_prefs\userconfing.xml'  # contains user id
)

session.to_tgnet('converted/tgnet')  # will create all needed files right in directory that you specified
# or
session.to_tdata('converted/pc')  # will create another folder "tdata" inside directory that you specified
# or
session.to_telethon('converted/telethon.session')  # must end with .session
```

#### Creating mobile session from auth key, dc id and user id
```python
from AndroidTelePorter import AndroidSession

session = AndroidSession.from_manual(
    auth_key=bytes.fromhex('hex auth key'),
    dc_id=0,  # datacenter id (from 1 to 5)
    user_id=12345678  # telegram user id
)  # can be used to create any session (tgnet / tdata / telethon) from auth key, dc id and user id

session.to_tgnet('converted/tgnet')  # will create all needed files right in directory that you specified
```
