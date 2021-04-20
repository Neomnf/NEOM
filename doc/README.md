NEOM Core
=============

Setup
---------------------
NEOM Core is the original NEOM client and it builds the backbone of the network. It downloads and, by default, stores the entire history of NEOM transactions (which is currently more than 100 GBs); depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download NEOM Core, visit [neomcore.org](https://neomcore.org/en/releases/).

Running
---------------------
The following are some helpful notes on how to run NEOM Core on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/neom-qt` (GUI) or
- `bin/neomd` (headless)

### Windows

Unpack the files into a directory, and then run neom-qt.exe.

### macOS

Drag NEOM Core to your applications folder, and then run NEOM Core.

### Need Help?

* See the documentation at the [NEOM Wiki](https://en.neom.it/wiki/Main_Page)
for help and more information.
* Ask for help on [#neom](http://webchat.freenode.net?channels=neom) on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net?channels=neom).
* Ask for help on the [NEOMTalk](https://neomtalk.org/) forums, in the [Technical Support board](https://neomtalk.org/index.php?board=4.0).

Building
---------------------
The following are developer notes on how to build NEOM Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [macOS Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [NetBSD Build Notes](build-netbsd.md)
- [Gitian Building Guide](gitian-building.md)

Development
---------------------
The NEOM repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://dev.visucore.com/neom/doxygen/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [Travis CI](travis-ci.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [NEOMTalk](https://neomtalk.org/) forums, in the [Development & Technical Discussion board](https://neomtalk.org/index.php?board=6.0).
* Discuss project-specific development on #neom-core-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=neom-core-dev).
* Discuss general NEOM development on #neom-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=neom-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
This product includes software developed by the OpenSSL Project for use in the [OpenSSL Toolkit](https://www.openssl.org/). This product includes
cryptographic software written by Eric Young ([eay@cryptsoft.com](mailto:eay@cryptsoft.com)), and UPnP software written by Thomas Bernard.
