from AndroidTelePorter.models.ip import IP

DATACENTERS = {
    1: {
        'addressesIpv4': [
            IP(type_='addressesIpv4', address='149.154.175.52', port=443, flags=0, secret=''),
            IP(type_='addressesIpv4', address='149.154.175.54', port=443, flags=16, secret='')
        ],
        'addressesIpv6': [
            IP(type_='addressesIpv6', address='2001:0b28:f23d:f001:0000:0000:0000:000a', port=443, flags=1, secret='')],
        'addressesIpv4Download': [],
        'addressesIpv6Download': [],
    },
    2: {
        'addressesIpv4': [IP(type_='addressesIpv4', address='149.154.167.41', port=443, flags=0, secret='')],
        'addressesIpv6': [
            IP(type_='addressesIpv6', address='2001:067c:04e8:f002:0000:0000:0000:000a', port=443, flags=1, secret='')],
        'addressesIpv4Download': [
            IP(type_='addressesIpv4Download', address='149.154.167.151', port=443, flags=2, secret='')],
        'addressesIpv6Download': [
            IP(type_='addressesIpv6Download', address='2001:067c:04e8:f002:0000:0000:0000:000b', port=443, flags=3,
               secret='')],
    },
    3: {
        'addressesIpv4': [IP(type_='addressesIpv4', address='149.154.175.100', port=443, flags=0, secret='')],
        'addressesIpv6': [
            IP(type_='addressesIpv6', address='2001:0b28:f23d:f003:0000:0000:0000:000a', port=443, flags=1, secret='')],
        'addressesIpv4Download': [],
        'addressesIpv6Download': [],
    },
    4: {
        'addressesIpv4': [IP(type_='addressesIpv4', address='149.154.167.92', port=443, flags=0, secret='')],
        'addressesIpv6': [
            IP(type_='addressesIpv6', address='2001:067c:04e8:f004:0000:0000:0000:000a', port=443, flags=1, secret='')],
        'addressesIpv4Download': [
            IP(type_='addressesIpv4Download', address='149.154.165.96', port=443, flags=2, secret='')],
        'addressesIpv6Download': [
            IP(type_='addressesIpv6Download', address='2001:067c:04e8:f004:0000:0000:0000:000b', port=443, flags=3,
               secret='')],
    },
    5: {
        'addressesIpv4': [IP(type_='addressesIpv4', address='91.108.56.197', port=443, flags=0, secret='')],
        'addressesIpv6': [
            IP(type_='addressesIpv6', address='2001:0b28:f23f:f005:0000:0000:0000:000a', port=443, flags=1, secret='')],
        'addressesIpv4Download': [],
        'addressesIpv6Download': [],
    },
}
