from setuptools import setup, find_packages
import codecs
import os

here = os.path.abspath(os.path.dirname(__file__))

with codecs.open(os.path.join(here, "README.md"), encoding="utf-8") as fh:
    long_description = "\n" + fh.read()

VERSION = '1.1.1'
DESCRIPTION = 'Serializer and deserializer for mobile telegram session'

setup(
    name='AndroidTelePorter',
    version=VERSION,
    author='batreller',
    author_email='<batreller@gmail.com>',
    description=DESCRIPTION,
    long_description_content_type='text/markdown',
    long_description=long_description,
    url='https://github.com/batreller/AndroidTelePorter',
    packages=find_packages(),
    license='MIT',
    install_requires=['telethon', 'lxml~=5.2.2', 'opentele~=1.15.1', 'setuptools~=72.1.0', 'Pyrogram~=2.0.106'],
    classifiers=[
        'Development Status :: 5 - Production/Stable',
        'Intended Audience :: Developers',
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent'
    ],
    python_requires='>=3.9'
)
