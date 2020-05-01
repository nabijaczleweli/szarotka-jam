# szarotka-jam [![Licence](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)
Some filling to deliciously contrast the dry biscuit.

## [`ppp@.service`](ppp@.service)
Modified version of the ppp service [posted](https://github.com/systemd/systemd/issues/481#issuecomment-544337575) by the Marco d'ItrI
	to the systemd issue tracker that:
1. Uses pppd's `call` option to better fit with the standard config,
2. Uses pppd's `linkname` option and `PIDFile=` service key, and therefore
3. The template binds to the peer from `/etc/ppp/peers/` rather than carrier name, plus
4. Different ordering to make it play better with units that depend on the interfaces created by pppd.

## [`etc/ppp/`](etc-ppp/)
Parts of my PPPoE configuration not present in Debian.

Under [`peers/`](etc-ppp/peers), a redacted config based on [the Arch wiki PPP article](https://wiki.archlinux.org/index.php/Ppp).

[`ip-pre-up`](etc-ppp/ip-pre-up), a modified `ip-up`, and hooks in the corresponding [`ip-pre-up.d`](etc-ppp/ip-pre-up.d) directory.

TODO: document these when they settle
