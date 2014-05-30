odroid-xu-support
===============

Ebuilds and config files for the odroid-xu board to run with Gentoo Linux.

To add this overlay using layman, add this overlay to layman configuration:
```bash
cp /etc/layman/layman.cfg /etc/layman/layman.cfg.bkp && \
cat /etc/layman/layman.cfg.bkp | sed '/^overlays/a \            https://raw.githubusercontent.com/wabbit01/odroid-xu-support/master/overlay.xml' > /etc/layman/layman.cfg
```
And then add the overlay:
```bash
layman -L
layman -a odroid-xu-support
```

If layman configuration file became damaged, just use the backup file (/etc/layman/layman.cfg.bkp) to revert changes.

