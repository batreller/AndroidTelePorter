import base64
import os
from lxml import etree

from AndroidTelePorter.managers import TgnetManager, UserConfigManager
import xml.etree.ElementTree as ET


def read_tgnet(path: str) -> TgnetManager:
    with open(path, 'rb') as f:
        buffer = f.read()

    return TgnetManager.from_buffer(buffer)


def read_userconfig(path: str) -> UserConfigManager:
    try:
        tree = ET.parse(path, parser=ET.XMLParser(encoding='utf8'))
    except ET.ParseError:
        raise ValueError('Invalid file passed as userconfig, make sure you are using shared_prefs/userconfing.xml file')
    user_info_element = tree.find(".//string[@name='user']")
    if user_info_element is None or not user_info_element.text:
        raise ValueError(f"{path} does not contain user id. This user config file is invalid.")

    return UserConfigManager.from_base64(user_info_element.text)


def write_tgnet(tgnet_manager: TgnetManager, path: str) -> None:
    os.makedirs(path, exist_ok=True)
    with open(os.path.join(path, 'tgnet.dat'), 'wb') as f:
        f.write(tgnet_manager.to_buffer().get_value())


def write_userconfig(userconfig_manager: UserConfigManager, path: str) -> None:
    os.makedirs(path, exist_ok=True)
    root = etree.Element("map")
    user_element = etree.SubElement(root, "string")
    user_element.set("name", "user")
    user_element.text = base64.b64encode(userconfig_manager.userconfig._bytes()).decode('utf-8')
    tree = etree.ElementTree(root)
    tree.write(os.path.join(path, 'userconfing.xml'), pretty_print=True, xml_declaration=True,
               encoding="utf-8", standalone="yes")
