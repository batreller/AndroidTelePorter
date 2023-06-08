"""
NativeByteBuffer class is a full copy of telegram's class NativeByteBuffer
https://github.com/DrKLO/Telegram/blob/master/TMessagesProj/jni/tgnet/NativeByteBuffer.cpp

Creator https://github.com/batreller/
Code https://github.com/batreller/telegram_android_session_converter
"""

import struct


class NativeByteBuffer:
    def __init__(self, bytes_: bytes):
        self.buffer = bytearray(bytes_)
        self._position = 0
        self._limit = len(self.buffer)

    def writeByteArray(self, b, offset=0, length=None, error=None):
        length = length or len(b)
        if error is not None and self._position + length > self._limit:
            error[0] = True
        self.buffer[self._position:self._position + length] = b[offset:offset + length]
        self._position += length

    def writeDouble(self, d, error=None):
        value = struct.pack("d", d)
        self.writeByteArray(value, error=error)

    def writeInt32(self, x, error=None):
        value = struct.pack("i", x)
        self.writeByteArray(value, error=error)

    def writeInt64(self, x, error=None):
        value = struct.pack("q", x)
        self.writeByteArray(value, error=error)

    def writeBool(self, value, error=None):
        constructor = 0x997275b5 if value else 0xbc799737
        self.writeUint32(constructor, error=error)

    def writeBytes(self, b, offset=0, length=None, error=None):
        self.writeByteArray(b, offset, length, error)

    def writeByte(self, i, error=None):
        self.buffer[self._position] = i
        self._position += 1

    def writeString(self, s, error=None):
        s = s.encode("utf-8")
        sl = 1
        l = len(s)
        if error is not None and self._position + l + sl > self._limit:
            error[0] = True
        if l >= 254:
            self.writeByte(254, error)
            self.writeUint32(l, error)
            sl = 4
        else:
            self.writeByte(l, error)
        addition = (l + sl) % 4
        if addition != 0:
            addition = 4 - addition
        self.writeByteArray(s, error=error)
        self._position += addition

    def writeUint32(self, x, error=None):
        self.writeInt32(x, error)

    def readInt32(self, error=None):
        if error is not None and self._position + 4 > self._limit:
            error[0] = True
        # print(int.from_bytes(self.buffer[self._position:self._position+4], 'little'))
        result = struct.unpack_from("<i", self.buffer, self._position)[0]
        self._position += 4
        return result

    def readUint32(self, error=None):
        return self.readInt32(error)

    def readUint64(self, error=None):
        return self.readInt64(error)

    def readBigInt32(self, error=None):
        if error is not None and self._position + 4 > self._limit:
            error[0] = True
        result = struct.unpack_from(">i", self.buffer, self._position)[0]
        self._position += 4
        return result

    def readInt64(self, error=None):
        if error is not None and self._position + 8 > self._limit:
            error[0] = True
        # result = struct.unpack_from("q", self.buffer, self._position)[0]
        result = struct.unpack_from("q", self.buffer, self._position)[0]
        self._position += 8
        return result

    def readByte(self, error=None):
        if error is not None and self._position + 1 > self._limit:
            error[0] = True
        result = self.buffer[self._position]
        self._position += 1
        return result

    def readBool(self, error=None):
        consructor = self.readBytes(4)
        # c1 = consructor.hex()
        # c2 = int.from_bytes(consructor, 'little')
        # consructor = self.readUint32(error)

        # not sure
        if consructor == 0x997275b5 or consructor == 1 or consructor == bytearray(b'\xb5ur\x99'):
            return True
        elif consructor == 0xbc799737 or consructor == 0 or consructor == '379779bc':
            return False
        if error is not None:
            error[0] = True
        return False

    def readBytes(self, length, error=None):
        if length > self._limit - self._position:
            if error is not None:
                error[0] = True
            return None
        result = self.buffer[self._position: self._position + length]
        self._position += length
        return result

    def readString(self, error=None):
        sl = 1
        if self._position + 1 > self._limit:
            if error is not None:
                error[0] = True
            return ""

        l = self.buffer[self._position]
        self._position += 1

        if l >= 254:
            if self._position + 3 > self._limit:
                if error is not None:
                    error[0] = True
                return ""
            l = self.buffer[self._position] | (self.buffer[self._position + 1] << 8) | (
                    self.buffer[self._position + 2] << 16)
            self._position += 3
            sl = 4
        addition = (l + sl) % 4
        if addition != 0:
            addition = 4 - addition
        if self._position + l + addition > self._limit:
            if error is not None:
                error[0] = True
            return ""
        result = self.buffer[self._position: self._position + l].decode()
        self._position += l + addition
        return result

    def readByteArray(self, error=None):
        sl = 1
        if self._position + 1 > self._limit:
            if error is not None:
                error[0] = True
            return None
        l = self.buffer[self._position]
        self._position += 1
        if l >= 254:
            if self._position + 3 > self._limit:
                if error is not None:
                    error[0] = True
                return None
            l = self.buffer[self._position] | (self.buffer[self._position + 1] << 8) | (
                    self.buffer[self._position + 2] << 16)
            self._position += 3
            sl = 4
        addition = (l + sl) % 4
        if addition != 0:
            addition = 4 - addition
        if self._position + l + addition > self._limit:
            if error is not None:
                error[0] = True
            return None
        result = self.buffer[self._position: self._position + l]
        self._position += l + addition
        return result

    def readByteBuffer(self, copy=True, error=None):
        sl = 1
        if self._position + 1 > self._limit:
            if error is not None:
                error[0] = True
            return None

        l = self.buffer[self._position]
        self._position += 1

        if l >= 254:
            if self._position + 3 > self._limit:
                if error is not None:
                    error[0] = True
                return None

            l = self.buffer[self._position] | (self.buffer[self._position + 1] << 8) | (
                    self.buffer[self._position + 2] << 16)
            self._position += 3
            sl = 4

        addition = (l + sl) % 4
        if addition != 0:
            addition = 4 - addition
        if self._position + l + addition > self._limit:
            if error is not None:
                error[0] = True
            return None
        if copy:
            result = self.buffer[self._position: self._position + l].copy()
        else:
            result = self.buffer[self._position: self._position + l]
        self._position += l + addition
        return result
