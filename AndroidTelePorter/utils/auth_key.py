import hashlib


def calculate_id(auth_key: bytes | bytearray) -> int:
    return int.from_bytes(hashlib.sha1(auth_key).digest()[12:12 + 8], "little", signed=True)
