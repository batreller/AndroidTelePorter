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
    package_data={'AndroidTelePorter': ['compat/data/*.tl']},
    include_package_data=True,
    license='MIT',
    install_requires=[
        'telethon',
        'lxml>=5.3.0',
        # pinned fork with python 3.13 support
        'opentele @ git+https://github.com/surfaceflinger/opentele.git@786afa220e786b8967d41ae66082f122c040ceb7',
        'setuptools>=65.0.0',
        # drop-in pyrogram fork, actively maintained
        'kurigram>=2.2.23',
    ],
    classifiers=[
        'Development Status :: 5 - Production/Stable',
        'Intended Audience :: Developers',
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent'
    ],
    python_requires='>=3.9'
)
