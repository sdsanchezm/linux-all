# systemd all

## check

- check if system is using systemd or (runit or sysvinit)
    - `readlink /sbin/init`
        - if systemd, then `/lib/systemd/systemd` is systemd
        - else `/usr/bin/openrc-init` it is not
    - `stat /sbin/init`
        - if systemd then `/lib/systemd/systemd` 
        - else if only `/sbin/init` then it is not

## service change

- a daemon might be required to be restarted
    - `sudp systemctl daemon-reload`
    - then regular systemd manage commands

