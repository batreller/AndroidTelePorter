"""
NativeByteBuffer class is a full copy of telegram's class NativeByteBuffer
https://github.com/DrKLO/Telegram/blob/master/TMessagesProj/jni/tgnet/NativeByteBuffer.cpp

Creator https://github.com/batreller/
Code https://github.com/batreller/AndroidTelePorter
"""

from io import BytesIO


class NativeByteBuffer:
    def __init__(self, data: bytes | bytearray = None):
        self.stream = BytesIO(data)

    def __len__(self):
        return len(self.stream.getvalue())

    def get_value(self):
        return self.stream.getvalue()

    def read_bytes(self, length: int) -> bytes:
        return self.stream.read(length)

    def read_byte(self):
        return self.read_bytes(1)[0]

    def read_number(self, length: int, signed=True):
        return int.from_bytes(self.read_bytes(length), byteorder='little', signed=signed)

    def read_int(self, signed=True):
        return self.read_number(4, signed=signed)

    def read_long(self, signed=True):
        return self.read_number(8, signed=signed)

    def read_bool(self):
        value = self.read_int(signed=False)
        if value == 0x997275b5:
            return True
        elif value == 0xbc799737:
            return False
        raise BufferError('Unexpected byte value')

    def read_byte_array(self):
        sl = 1
        length = self.read_number(1, signed=False)
        if length >= 254:
            length = self.read_number(3, signed=False)
            sl = 4

        addition = (length + sl) % 4
        if addition != 0:
            addition = 4 - addition

        result = self.read_bytes(length)
        self.read_bytes(addition)
        return result

    def read_string(self):
        return str(self.read_byte_array(), encoding='utf-8', errors='replace')

    def write_bytes(self, data: bytearray | bytes):
        self.stream.write(data)

    def write_number(self, number: int, length: int, signed=True):
        self.write_bytes(number.to_bytes(length, byteorder='little', signed=signed))

    def write_int(self, number: int, signed=True):
        self.write_number(number=number, length=4, signed=signed)

    def write_long(self, number: int, signed=True):
        self.write_number(number=number, length=8, signed=signed)

    def write_bool(self, value: bool):
        if value is True:
            self.write_int(0x997275b5, signed=False)
        else:
            self.write_int(0xbc799737, signed=False)

    def write_byte_array(self, data: bytearray | bytes):
        length = len(data)
        if length < 254:  # 1byte(len) + data
            self.write_number(length, 1, signed=False)
        else:  # 1byte(len) + 3bytes(lenMore254) + data
            self.write_number(254, 1, signed=False)
            self.write_number(length, 3, signed=False)

        self.write_bytes(data)

        # calculate padding
        sl = 1 if length < 254 else 4
        total_length = length + sl
        padding = (4 - (total_length % 4)) % 4

        # write padding bytes
        if padding:
            self.write_bytes(b'\x00' * padding)

    def write_string(self, value: str):
        self.write_byte_array(value.encode('utf-8'))
