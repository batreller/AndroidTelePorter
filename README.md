# AndroidTelePorter
Converts Android's telegram session into telethon / pyrogram session, also can be used to exctract AuthKey from Android's session

# There are no currently working analogues on the internet.
##### The software can be used to convert mobile android sessions to any other type of session (pyrogram, telethon, TDATA etc.) or just to extract auth key from the session

##### To convert the session all you need is just tgnet.dat file from the root directory of your telegram app on the phone, it's located at data/data/org.telegram.messenger.web, it ca be extracted using ADB (Android Debug Bridge)

##### You can download example file just for tests here: https://drive.google.com/file/d/13xy2EQ_F1ScdFQNONqLoWwbY-ltOk8HF/view?usp=sharing
###### ps. the software will work and will return you the string session and auth key of that session, but as that session is public, it may already be invalid

Technically it is a copy of [Telegram's class NativeByteBuffer](https://github.com/DrKLO/Telegram/blob/master/TMessagesProj/jni/tgnet/NativeByteBuffer.cpp)
