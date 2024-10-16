# Tracking

- [Tracking](#tracking)
- [Generals](#generals)
- [Backup](#backup)
- [Filesystems and file management](#filesystems-and-file-management)
- [User and System Administration commands](#user-and-system-administration-commands)      
  - [cat](#cat)
  - [cd](#cd)
  - [find](#find)
  - [grep](#grep)
  - [info](#info)
  - [ls](#ls)
  - [man](#man)
  - [pwd](#pwd)
  - [chgrp](#chgrp)
  - [chmod](#chmod)
  - [chown](#chown)
  - [fdisk](#fdisk)
  - [iostat](#iostat)
  - [ss](#ss)
  - [free](#free)
  - [df](#df)
  - [ps](#ps)
  - [vmstat](#vmstat)
  - [dig](#dig)
  - [ip](#ip)
  - [netstat](#netstat)
  - [ping](#ping)
  - [traceroute](#traceroute)
  - [w](#w)
  - [Systemctl](#systemctl)
  - [adduser](#adduser)
  - [groups](#groups)
  - [users](#users)
  - [userdel](#userdel)
  - [usermod](#usermod)
  - [deluser](#deluser)
  - [User Files](#user-files)
  - [view all users](#view-all-users)
  - [view all groups](#view-all-groups)
  - [add a user to a group](#add-a-user-to-a-group)
  - [User password](#user-password)
  - [User shell (chsh)](#user-shell-(chsh))
  - [Log as user](#log-as-user)
  - [change the user id](#change-the-user-id)
  - [find all files from a specific user (using the user id)](#find-all-files-from-a-specific-user-(using-the-user-id))
  - [change the owner of a file or dir](#change-the-owner-of-a-file-or-dir)
  - [id](#id)
  - [blkid](#blkid)
  - [exa](#exa)
- [Networking and troubleshooting](#networking-and-troubleshooting)
  - [NetworkManager](#networkmanager)
    - [nmcli](#nmcli)
    - [nmtui](#nmtui)
    - [nm-connection-editor](#nm-connection-editor)
    - [ip](#ip)
    - [ipcalc](#ipcalc)
    - [host and dig](#host-and-dig)
- [Network Troubleshoot](#network-troubleshoot)
  - [Validate Adapter is up](#validate-adapter-is-up)
  - [Validate local configuration](#validate-local-configuration)
  - [Validate connections](#validate-connections)
  - [Validate server functions](#validate-server-functions)
- [software and cloud concepts](#software-and-cloud-concepts)
  - [Key Features](#key-features)
- [Security fundamentals](#security-fundamentals)
- [Devops fundamentals](#devops-fundamentals)
- [supporting apps and devs](#supporting-apps-and-devs)
- [Nice Linux Tools](#nice-linux-tools)
  - [xrandr](#xrandr)
  - [fzf](#fzf)
  - [bat](#bat)
  - [tldr](#tldr)
  - [eza](#eza)
  - [git-delta](#git-delta)
  - [nerd-fonts](#nerd-fonts)
  - [rsync](#rsync)
  - [xclip](#xclip)
  - [Packages](#packages)
  - [neovim](#neovim)

## Generals

- An OS manage resources
- Linux is distributed under the GNU General Public License, version 2 (GPLv2).
- Free, Stable, Secure, Maintable, Wide range of HW, Easyu to use, Supported, Open Source
- HW Access: HW > Device Drivers Privileged > Device Drivers User > GUI
- Types: Servers, desktops, Embedded systems 
- PCI is an internal bus for devices *
- CLI, GUI, WUI
- Character UI is CLI
- /proc and /sys shouldn't be backed up
- gpt can have 128 partitions

## Backup

- tar
- rsync
- Amanda
- Bacula

## Filesystems and file management

- View devices
    - `sudo lsblk -f | grep -v loop`

- Mount the usb/device and view after:
    - `sudo lsblk -f | grep -v loop`

- Umount:
    - `sudo umount /media/student/Fedora-WS-Live-25-1-3`

## User and System Administration commands

- Commands, list of options, arguments

## Monitoring

### top

### htop

### glances

### bpvtop


### cat
- Examples
    - `cat file.txt`
    - `cat -A file.txt - all non-printing characters`
    - `cat -n file.txt - - numbers`
### cd
- classic, real classic

### find 
- Example
    - **`-print`**:
    Outputs the full pathname of the matched files or directories. This is the default action if no other action is specified.

    - **`-empty`**:
    Finds empty files or directories.

    - **`-maxdepth level`**:
    Limits the search to a specific depth. For example, `-maxdepth 1` searches only in the current directory.

    - **`-xdev`**:
    Restricts the search to the same file system as the starting point, avoiding directories on other filesystems.

    - examples: 
        - **Using `-print`**:
        ```sh
        find /path/to/search -name "*.txt" -print
        ```
        Prints paths of all `.txt` files.

        - **Using `-empty`**:
        ```sh
        find /path/to/search -empty
        ```
        Finds all empty files and directories.

        - **Using `-maxdepth`**:
        ```sh
        find /path/to/search -maxdepth 1 -name "*.txt"
        ```
        Searches for `.txt` files only in the current directory.

        - **Using `-xdev`**:
        ```sh
        find /path/to/search -xdev -name "*.txt"
        ```
        Searches for `.txt` files only within the same filesystem as `/path/to/search`.

### grep 
- Examples
    - **`-i`**:
    Ignores case distinctions in patterns and input data.

    - **`-v`**:
    Inverts the match, showing lines that do not match the pattern.

    - **`-l`**:
    Prints the names of files with matching lines, without showing the actual lines.

    - **`-q`**:
    Runs quietly, suppressing normal output. Exits with 0 if a match is found, otherwise exits with 1.

    - Examples:
        - **Using `-i`**:
        ```sh
        grep -i "pattern" file.txt
        ```
        Searches for "pattern" case-insensitively.

        - **Using `-v`**:
        ```sh
        grep -v "pattern" file.txt
        ```
        Displays lines that do not contain "pattern".

        - **Using `-l`**:
        ```sh
        grep -l "pattern" *.txt
        ```
        Lists filenames of `.txt` files that contain "pattern".

        - **Using `-q`**:
        ```sh
        grep -q "pattern" file.txt
        ```
        Silently checks if "pattern" exists in `file.txt`.


### info
- Examples
    - -a, --all:
    Display all available top-level Info documents.

    -h, --help:
    Show a summary of info command usage and options.

    --version:
    Display the version of the info program.

    - Example:
        - `info info`
        - `info ls`
        - `info cd`

### ls 

- Example
    - `-a`: Lists all files, including hidden files (those starting with a dot).
    Example: `ls -a`

    - `-d`: Lists only directories themselves, not their contents.
    Example: `ls -d */`

    - `-i`: Displays the inode number of each file or directory.
    Example: `ls -i`

    - `-l`: Long listing format, displaying detailed information about files and directories.
    Example: `ls -l`

    - `-L`: If argument is a symbolic link, lists the file or directory the link references, rather than the link itself.
    Example: `ls -L`

    - `ls -ial` : list inodes of all files in a list

    - devices:
        - 0=unknown
        - 1=regular-file 
        - 2=directory, 
        - 3=character-device
        - 4=block-device
        - 5=FIFO
        - 6=socket
        - 7=symbolic-link

### man
- Examples

    - `-k`: Searches for a keyword in the short descriptions and manual page names.
    Example: `man -k keyword`

    - `-f`: Displays the one-line description of a command (equivalent to `whatis`).
    Example: `man -f command`

### pwd
- Examples

    - `-L`: Displays the logical current working directory (default behavior).
    Example: `pwd -L`

    - `-P`: Displays the physical current working directory (resolves symbolic links).
    Example: `pwd -P`

### chgrp

- Examples 
    - -R: Recursively changes group ownership of directories and their contents.
    - Example: 
        - `chgrp -R groupname directory`

### chmod

- Examples

    - `-R`: Recursively changes permissions of directories and their contents.
    - Example: `chmod -R 755 directory`

    - The `chmod` command in Linux is used to change file or directory permissions, allowing users to specify who can read, write, and execute files. The `-R` flag is useful for applying changes recursively to all files and directories within a specified directory.

### chown

- Example
    - `-R`: Recursively changes ownership of directories and their contents
    - Example: `chown -R user:group directory`

    - The `chown` command is used to change the ownership of files and directories in Unix and Linux systems. The `-R` flag is recursively throug directory trees

### fdisk

- examples
    - `-l`: Lists the partition table for all available block devices.
    - Example: `fdisk -l`
    - `fdisk` is a command-line utility for disk partitioning on Linux systems, allowing users to create, delete, and manage disk partitions.
    - `sudo fdisk -l  /dev/sdb`
        ```
        Disk /dev/sda: 40 GiB, 21949672960 bytes, 83886080 sectors
        Disk model: VBOX HARDDISK   
        Units: sectors of 1 * 512 = 512 bytes
        Sector size (logical/physical): 512 bytes / 512 bytes
        I/O size (minimum/optimal): 512 bytes / 512 bytes
        Disklabel type: gpt
        Disk identifier: 212121-D7A7-4469-811A-D9275F6958DF

        Device       Start      End  Sectors Size Type
        /dev/sda1     2048     4095     2048   1M BIOS boot
        /dev/sda2     4096  2101247  2097152   1G Linux filesystem
        /dev/sda3  2101248 83884031 81782784  39G Linux filesystem
        ```

### iostat

- Install `sudo dnf install sysstat`
- example:
    - `iostat`
        - -d: Displays disk utilization statistics (reads/writes) for each device. Example: iostat -d
        - -c: Continuously displays CPU utilization statistics. Example: iostat -c
        - -k: Displays statistics in kilobytes per second. Example: iostat -k

### ss
- Must be sudo to display processes
- Example
    - check ports opened
        - `ss -t -a -n` 
        - `ss -t -a -n -p` 
            ```
            State    Recv-Q   Send-Q     Local Address:Port      Peer Address:Port   Process                                      
            LISTEN   0        4096          127.0.0.54:53             0.0.0.0:*       users:(("systemd-resolve",pid=714,fd=19))   
            LISTEN   0        4096           127.0.0.1:631            0.0.0.0:*       users:(("cupsd",pid=931,fd=7))              
            LISTEN   0        4096       127.0.0.53%lo:53             0.0.0.0:*       users:(("systemd-resolve",pid=714,fd=17))   
            LISTEN   0        4096             0.0.0.0:5355           0.0.0.0:*       users:(("systemd-resolve",pid=714,fd=11))   
            LISTEN   0        4096               [::1]:631               [::]:*       users:(("cupsd",pid=931,fd=6))              
            LISTEN   0        4096                [::]:5355              [::]:*       users:(("systemd-resolve",pid=714,fd=13)) 
            ```
        - `sudo ss -t -a -n -p` - must be sudo in order to show programs/processes names
            ```
            State    Recv-Q   Send-Q     Local Address:Port      Peer Address:Port   Process                                      
            LISTEN   0        4096          127.0.0.54:53             0.0.0.0:*       users:(("systemd-resolve",pid=714,fd=19))   
            LISTEN   0        4096           127.0.0.1:631            0.0.0.0:*       users:(("cupsd",pid=931,fd=7))              
            LISTEN   0        4096       127.0.0.53%lo:53             0.0.0.0:*       users:(("systemd-resolve",pid=714,fd=17))   
            LISTEN   0        4096             0.0.0.0:5355           0.0.0.0:*       users:(("systemd-resolve",pid=714,fd=11))   
            LISTEN   0        4096               [::1]:631               [::]:*       users:(("cupsd",pid=931,fd=6))              
            LISTEN   0        4096                [::]:5355              [::]:*       users:(("systemd-resolve",pid=714,fd=13))
            ```
    - -t or --tcp: This option tells ss to display TCP sockets. If you want to see UDP sockets, you would use -u instead.

    - -a or --all: This option shows all sockets, including listening and non-listening (established) sockets.

    - -n or --numeric: This option avoids converting port numbers to service names. It displays the numerical addresses instead of trying to resolve hostnames.

    - -p or --processes: This option shows the process using the socket. It will display the process ID (PID) and the process name.


### free
- Example (check memory available)
    - `free -m`
        ```
                    total        used        free      shared  buff/cache   available
        Mem:            3901        1233        1366          51        1597        2667
        Swap:           3900           2        3898

        ```    

### df 
- file system space usage
    - `df`

### ps

- `Ps`
- `Ps -aux`
- `Ps -aux | grep davs`
- `Ps -aux | grep less`
- More at:
    - [https://www.tecmint.com/linux-process-management/]

### pidof, lsof
- pidof
    - `pidof less` (all pids using less)
    - `pidof vim`
    - `pidof systemd`

- lsof (list all socket files)
    - `sudo lsof -I :22` (list all socket connections on port 22, must be sudo)


### vmstat


### dig


### ip


### netstat


### ping


### traceroute



### w, who and users
- Example:
    - show who is logged in and what they're doing
    - `w` - shows who is connected to the server
    - `who` - shows who is connected to the server
    - `users` - shows who is connected to the server


### Systemctl

- Example
    - `systemctl`
    - `systemctl start <service>`
    - `systemctl stop <service>`
    - `systemctl enable <service>`
    - `systemctl restart <service>`
    - `systemctl disable <service>`
    - `systemctl --all status`
    - `systemctl --now enable <service>`
    - `systemctl --failed`
- Examples:
    - `sudo systemctl status smb.service`
    - `sudo systemctl stop smb.service`
    - `sudo systemctl disable smb.service`
    - `sudo systemctl enable smb.service`
    - `sudo systemctl start smb.service`
    - `sudo systemctl` -- all installed services status

### adduser
- Example
    - `adduser`
    - `sudo adduser jara1` - create the new user
    - `sudo id jara1` - check the id of the new user
    - `sudo usermod -a -G adm jara1` - add the group adm to jara1
    - `id jara1` - verify jara1 id
    - `userdel --remove jara1` - delete user jara1
    - `id jara1` - verify jara1 was deleted

### groups
- Examples
    - `groups`
    - `groupadd`
    - `groupdel`
    - `groupmems`
    - `groupmod`

### users
- Example
    - `useradd`
    - `userdbctl`
    - `userhelper`
    - `users`
    - `usermode`
    - `USER`
    - `USERS`


### userdel
- Example
    - `userdel`
    - `sudo userdel jara1` - do not rm home dir
    - `sudo userdel jara1 --remove-home jara1` - removes home dir

### usermod
- Example
    - `usermod`
- Lock a user
    - `sudo passwd -l username`
    - `sudo usermod -L username`
- Unlock a user
    - `sudo passwd -u username`
    - `sudo usermod -U username`

### deluser
- Example
    - `deluser`

### User Files
- Files for user management
    - `/etc/group` - Each line: a group that includes: group name, password, Group ID (GID), and a list of members
    - `/etc/passwd` - Each line: a user that includes: username, password User ID (UID), Group ID (GID), user information, home directory, and login shell
    - `/etc/shadow` - Each line: a user that includes: username, password (encrypted), date of last password change, and other fields related to password expiration and account locking
    - `/etc/gshadow` - Each line: a group that includes: group name, password (encrypted), Group Administrators, and group members/users
    - `/etc/sudoers` - Shouldn't be modified, instead user the `visudo` command
        - `visudo` - do not edit sudoers, just use `visudo` command
            - `tiche    ALL=(ALL:ALL) ALL` - that's all, jsut add this line
    - `/etc/default/useradd` - this defines default aspects of user creation, like the terminal, home directory, etc
- Files under `/etc/skel` will be automatically copied into the `/home/<user>` everytime a new user is created [x]


### view all users
- Example
    - `cat /etc/passwd`
    - `cut -d: -f1 /etc/passwd`

### view all groups
- Example
    - `cat /etc/group`
    - `cut -d: -f1 /etc/group`

### add a user to a group
- Example
    - `sudo usermod -aG myGroup tiche`

### User password
- Change password of a user (user: jara in this case): 
    - `sudo passwd jara`

### User shell (chsh)
- To validate `/etc/passwd` - last record
- Example
    - `sudo chsh jara` - then `/usr/bin/zsh`

### Log as user
- Example
    - `su - jara`
    - `su jara`

### change the user id
- files and folders wil not automatically change, might be rquired to manually update files
- Example
    - `sudo usermod -u 2021 tiche` - 2021 is a random user id
- updating files: change from 1001 to 550
    - `find / -user 1001 -exec chown -h 550 {} \;`

### find all files from a specific user (using the user id)
- Example
    - `find /home -user 1001`

### change the owner of a file or dir
- Example
    - `chown -h user /home/tiche/folder`
    - Recursively (all dirs)
        - `chown -R tiche:tichegroup /home/tiche/folder`


### id 

- display the actual user id and groups
    - Example:
        - `id`
            - `uid=1000(ss) gid=1000(ss) groups=1000(ss),10(wheel) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023`
        - `sudo id`
            - `uid=0(root) gid=0(root) groups=0(root) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023`


### blkid
- locate or print block device attributes
    - ``
- Example
    - `sudo blkid`:
        ```
        /dev/sda2: UUID="2189fc48-6f31-4245-a3da-e70de19432aa" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="21ba02d8-672f-4519-952d-a76b84aec5b6"
        /dev/sda3: LABEL="fedora" UUID="212e2c02-c5e6-42a4-a92b-04e455270a9b" UUID_SUB="21dd569c-aaac-49c7-a37d-423932884851" BLOCK_SIZE="4096" TYPE="btrfs" PARTUUID="21b9a81c-069a-4d0f-9472-6ee77fbe2966"
        /dev/sda1: PARTUUID="21dfd57e-229d-4e99-86e2-13f1f6a963a6"
        /dev/zram0: LABEL="zram0" UUID="21583b11-6b1d-41ae-bc51-23f860552fd7" TYPE="swap"
        ```
    - devices, block is 4
        - 0=unknown
        - 1=regular-file
        - 2=directory, 
        - 3=character-device
        - 4=block-device
        - 5=FIFO
        - 6=socket
        - 7=symbolic-link
    - `sudo blkid | grep -v loop` - excludes loop devices

### exa
- Example
    - `sudo dnf install exa` - Install
    - `exa --long --header --git` - usage

### Logs
- by defaul stored on:
    - `/ver/logs`
- Config
    - `/etc/syslog.conf`
    - `/etc/rsyslog.conf`


## Networking and troubleshooting

### NetworkManager


- Componentes
    - Ip addresses
    - Netmasks
    - Default route
    - Dns Nameserver

- Interfaces
    - `enp0s3`
    - `ens32`
    - `lo`

#### nmcli

- Example
    - `nmcli`
    - `nmcli device show` - complete list of devices
    - `nmcli connection show` - overview of active connection profiles
    - `nmcli device show enp0s3` - details of the interface enp0s3

#### nmtui



#### nm-connection-editor


#### ip

- Display and manager network data/info
- Examples
    - `ip route`
        ```
        1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000 link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
            inet 127.0.0.1/8 scope host lo
            valid_lft forever preferred_lft forever
            inet6 ::1/128 scope host
            valid_lft forever preferred_lft forever
        2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
            link/ether 08:00:21:15:21:11 brd ff:ff:ff:ff:ff:ff
            inet 192.168.101.13/24 brd 192.168.100.255 scope global dynamic noprefixroute enp0s3
            valid_lft 85194sec preferred_lft 85194sec
            inet6 fe80::a16:f250:fc8e:620/64 scope link noprefixroute
            valid_lft forever preferred_lft forever
        ```
    - `ip address show`
        ```
        1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000 link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
            inet 127.0.0.1/8 scope host lo
            valid_lft forever preferred_lft forever
            inet6 ::1/128 scope host
            valid_lft forever preferred_lft forever
        2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
            link/ether 08:00:27:21:11:11 brd ff:ff:ff:ff:ff:fa
            inet 192.168.100.12/24 brd 192.168.100.255 scope global dynamic noprefixroute enp0s3
            valid_lft 95994sec preferred_lft 85194sec
            inet6 fe20::a26:f210:fc8e:620/24 scope link noprefixroute
            valid_lft forever preferred_lft forever
        ```

#### ipcalc
- Example
    - `ipcalc 192.168.91.23/24`

#### host and dig
- Example
    - `host www.linuxfoundation.org`
    - `dig www.linuxfoundation.org`
- Nameserver can be entered at `/etc/resolv.conf`


## Services and daemons

- how to create, normally 3 sections (/etc/serviceName/)
    ```bash
    [Unit]
    Description=Custom Logging SS
    After=multi-user.target
    
    [Service]
    Type=simple
    Restart=Always
    ExecStart=sh /datelogs/scripts/logger1.sh
    
    [Install]
    WantedBy=multi-user.target
    ```
- service mgmt
    - `systemctl daemon-reload`
    - `sudo systemctl status <serviceName>`
    - `sudo systemctl start <serviceName>`
    - `sudo systemctl enable <serviceName`>`
    - `sudo systemctl status <serviceName>`
    - `sudo systemctl disable <serviceName>`

## Network Troubleshoot

- Steps:
    - Validate Adapter is up
        - Connections plugged in
    - Validate local configuration
        - ip
        - netmask
        - routes
        - dhcp client
    - Validate connections
        - local system
        - access defaul route service
        - connect to a known good host by name
    - Validate server functions
        - validate daemons
        - validate correct port
        - validate localhost to check
        - validate firewall

### Validate Adapter is up
- Examples
    - List of devices:
        - `ip link`
        - `ip link | grep ": en"`
        - `ip link | grep ": et"`

    - disconnect/deactivate
        - `sudo ip link set eno1 down`
            -
                ```
                
                ```
    - connect/activate
        - `sudo ip link set eno1 up`
    - check
        - `ip link | grep "eno1"`

    - check the driver or optional driver for the device
        - `sudo ethtool -i enp1s0`

    - check the driver or optional driver for the device
        - `sudo lshw -C network`


### Validate local configuration
- 2 ways:
    - NetworkManager to check info from local DHCP
        - `nmcli con sho -a`
    - Using ISC DHCP client
        - `sudo dhclient -v eno1`
        - `cat /var/lib/dhclient/dhclient.leases`
        - `sudo ip address show`
        - `sudo ip a`
    

### Validate connections
- Examples
    - `ping -c 4 127.0.0.1`
    - `ping -c 4 192.168.0.1`
    - `ping -c 4 8.8.8.8`
    - `ping -c 4 w‌ww.google.com`
    - `elinks -dump w‌ww.google.com`


### Validate server functions

- Example
    - Checking daemons
        - `sudo systemctl`
        - `sudo systemctl status sshd.service`
    - Verifying ports:
        - `sudo ss -tlap`
        - `sudo ss -tlapn`
        - `curl ht‌‌‌tp://127.0.0.1:631 | head`
        - `curl ht‌tp://127.0.0.1:19999 | head`
    - checking firewall here
        - `sudo iptables -vnL` 



## software and cloud concepts

### Key Features

- Key points
    - More performant and agile
    - Save money
    - Easy Access
    - Maintenance done
    - Multi-tenant
    - More Reliable
    - More Secure

- Models
    - All 3 classic, plus: FaaS

- Type of Cloud deploys
    - public
    - private
    - hybrid

- Cost and Savings
    - Implementation Phase
        - identify, what can stay onPremise and what can go to the cloud
        - Reduced phgysical infrastructure
        - Cloud does not age
        - planning and implementation analysis is available from major cloud providers
    - Runtime phase
        - Right Size
        - autoScaling - consume while need
        - Use low performant resources on cloud, could help to save
        - Low usage resourses

## Security fundamentals

### sudoers
- Examples
    - the file is in `/etc/sudoers`
    - Example for the user jara (should include `@include /etc/sudoers.d` in the file in sudoers.d/jara dir)
        - `cat /etc/sudoers.d/jara`
            - `student  ALL=(ALL:ALL) ALL`
    - Example of a full sudo privileges
        - `username ALL=(ALL:ALL) ALL`
    - Example of a sudo privileges with no passwd
        - `username ALL=(ALL:ALL) NOPASSWD: ALL`
    - Example of a group with sudo privileges
        - `%thisisagroup ALL=(ALL:ALL) ALL`
    - Example to allow user to run 
        - `username ALL=(ALL) /usr/bin/commandA, /usr/bin/commandB`
    - Example to allow user to run all commands in a specific directory
        - `username ALL=(ALL) /usr/bin/`
    - Example of passwd file
        - `tail -n 3 /etc/passwd`
            - `jara:x:1002:1002::/home/jara:/usr/bin/zsh`
                - jara - is the username
                - x os the encrypted password
                - userid
                - groupid
                - gecos
                - home dir
                - default shell

- File `etc/shadow`
    - username
    - encrypted password
    - last changed
    - min pass age
    - pass warning period
    - pass inactivity period
    - account expiration date
    - reserved field

- View details about the user password
    - `chage -l jara`
        ```bash
        Last password change                                 : Jul 03, 2024
        Password expires                                     : never
        Password inactive                                    : never
        Account expires                                      : never
        Minimum number of days between password change       : 0
        Maximum number of days between password change       : 99999
        Number of days of warning before password expires    : 7    
        ``` 
    - Examples
        - `chage -M 30 jara` - max number of days betw pass change
        - `chage -m 7 jara`- min number of days betw pass change
        - `chage -W 10 jara` - set number of days of warning before passw expires
        - `chage -E 2024-12-31 jara` - set the account expiry date
        - `chage -I 7 jara` - set user inactive for 7 days after pass expire
        - `chage -d 2024-07-01 jara` - Set account exp date
        - `chage -E -1 jara` - remove expire date for the user jara
        - `chage -M 60 -m 5 -W 7 jara` - all combined


### ACL
- Example
    - getfacl
        - `getfacl Main.java`
    - setfacl
        - `setfacl --modify u:jara:rw Main.java`


### AIDE
- Advanced Intrusion Detection environment (AIDE)
- Examples:
    - Instal
        - `sudo dnf install aide`
    - Start
        - `sudo aideinit`
    - Config
        - `sudo aide --config-check /etc/aide/aide.conf`
- Other security systems are:
    - Selinux
    - Tripwire (open)
    - Fail2Ban
    - OSSEC
    - Snort

### Single user mode
- Example
    - `sudo init 1` - this is a way to enable the single user mode
    - `sudo reboot` - o back to multi user mode or graphical
    - `sudo init 3` - multi user mode
    - `sudo init 5` - graphical mode
- with `systemd` init has been replaced
    - `sudo systemctl isolate rescue.target`
    - `sudo systemctl isolate emergency.target`



### File Permissions

- Example
    - `ls -l`
        - mode of permissions fields
        - link count
        - user/owner of the file
        - group of the file
        - size (bytes)
        - month
        - day
        - time
        - file
    - rwx - Read Write Execute (4,2,1)
        - 777 => 
            - 4 + 2 + 1 = 7
            - 4 + 2 + 1 = 7
            - 4 + 2 + 1 = 7
        - UGO - User, Group, Others
    - Example:
        - -rw-r--r--
            - file (first - indicates regular file)
            - rw- means 4 + 2 + 0 = 6 (User can read and write no execute)
            - r-- means 4 + 0 + 0 = 4 (Group can read no write no execute)
            - r-x means 4 + 0 + 1 = 5 (Others can read no write and execute)
        - `chmod 645 file1.txt`
        - `chmod o-x file1.txt`
        - `chmod g+x file1.txt`
        - `chmod u+w file1.txt`
        - `chmod o-w,g+r file1.txt`
        - `chmod u=rwx, g=rwx, o=rwx file1.txt`


## Devops fundamentals

- Configuration Management
- Continuos Integration
- Automated test
- Infrastructure as code
- Continuos Delivery
- Continuos Deployment
- Continuos Monitoring



## supporting apps and devs
- SDLC
- SW PM
    - Waterfall
        - phases
            - plan
            - design
            - deliver
            - test
            - launch
        - issues
            - changes in later stages
            - dependencies
    - Agile
        - Meetings
            - Daily, 10 to 15mins a day
        - Unit of work
            - sprints (1 t o4 weeks)
        - Requirements are prioritized
        - Produce something taht works during each sprint
        - Feedback is provided every sprint (from stakeholders)
        - Feedback is used to make changes considered in the next sprint
        - In Backlog
            - broken down
            - prioritized
            - sized (effort)
        - Use 12 Agile principles
            1. The highest priority is to satisfy the customer through the early and continuous delivery of valuable software.
            2. Welcome changing requirements, even late in development. Agile processes harness change for the customer’s competitive advantage.
            3. Deliver working software frequently, from a couple of weeks to a couple of months, with a preference to the shorter timescale.
            4. Business people and developers must work together daily throughout the project.
            5. Build projects around motivated individuals. Give them the environment and support they need, and trust them to get the job done.
            6. The most efficient and effective method of conveying information to and within a development team is face-to-face conversation.
            7. Working software is the primary measure of progress.
            8. Agile processes promote sustainable development. The sponsors, developers, and users should be able to maintain a constant pace indefinitely.
            9. Continuous attention to technical excellence and good design enhances agility.
            10. Simplicity, the art of maximizing the amount of work not done–is essential.
            11. The best architectures, requirements, and designs emerge from self-organizing teams.
            12. At regular intervals the team reflects on how to be more effective, then adapt and adjusts its behavior accordingly.
- SW Architecture
    - FrontEnd
        - Frameworks
            - router
            - modules
            - 
    - BackEnd
        - Servers
        - apis
        - database servers
        - Frameworks
            - Ruby
            - Express
    - Design Patterns
        - monolithic architecture
        - Client-server (2-tier, 3-tiner)
        - event driven
        - component based
        - rule based
        - peer to peer
        - multilayered
        - service oriented arch (link)[https://en.wikipedia.org/wiki/Service-oriented_architecture]
        - microservices
        - rest 

- Git
    - Best Practices
        1. commit often -  small changes are more trackable 
        2. detailed notes in commit log - Changelog should be clear, save time, other teammates need to understand changes
        3. work on latest version - may miss changes made by others
        4. Review changes before commit - better to avoid correct commits
        5. Use branches. - allow collaboration easy. Work can be done in parallel


## Nice Linux Tools

### xrandr

- Change resolution (tested on rockyLinux 9)
- Example
    - `xrandr --screen 0 -s 1024x768`
    - `xrandr --screen 0 -s 1280x960`

### fzf
- Fuzy finder, helps find things easyly
- Info at: (repo here)[https://github.com/junegunn/fzf?tab=readme-ov-file]
- Install
    - `git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf`
    - `~/.fzf/install`


### bat 
- Is like cat but with colors
- Source `mmqDYw9C30I`
- Install
    - `sudo dnf install bat`
- Usage
    - `bat ** [tab]` - it highlights the text

### tldr
- Nice summary for a command
- Install
    - `sudo dnf install tldr`
- Usage example
    - `tldr eza`

### eza
- it's a better ls
- might required nerd-fonts
- Install 
    - `dnf install eza`
- Usage
    - `eza --color=always --long --git`
    - `eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions`
    - `eza --tree --level=2`

### git-delta
- Install
    - `sudo dnf install git-delta`
- Setup on .gitconfig:
    ```
    [user]
        name = Rober Galarga
        email = rober.galar@example.com
        username = example
    [core]
        editor = nvim
    [init]
        defaultBranch = main
    [core]
        pager = delta
    [interactive]
        diffFilter = delta --color-only
    [delta]
        navigate = true
    [merge]
        conflictStyle = diff3
    [diff]
        colorMoved = default
    ```
- Usage:
    - `git diff oyiu8ew7r`
- nice gitconfig example
    - (here)[https://gist.github.com/pksunkara/988716]


### nerd-fonts
- jsut cool fonts
- get ttf files from: (fonts)[https://www.nerdfonts.com/font-downloads]
- Install (just copy ttfs into `~/.local/share/fonts`)
    - `cd ~/.local/share`
    - `mkdir fonts`
    - `mv ~/temp\*ttf ./`
- Font is now selectable (fira code is the best XD)



### rsync
- Examples
    - `rsync -avh /home/thisistheuser /home/thisistheuser/otherdirectory` - 
    - `rsync -avh /home/thisistheuser thisistheuser@remoteHost:/home/thisistheuser/otherdirectory` - using ssh
    - `rsync -avh --delete /home/thisistheuser /home/thisistheuser/otherdirectory` - this will not preserve deleted files in local to remote

### xclip
- there are 2 "buffers":
    - System clipbard (normally the `-selection clipboard` flag, is used)
    - X Window clipboard (use just the `xclip` and the `xclip -o` in terminal)
- install
    - `sudo dnf install xclip`
- Example
    - `pwd | xclip -selection clipboard`
    - `ssh thisistheuser@remoteHost "cat /aFile.txt" | xclip -selection clipboard`
    - `echo "qweasdzxc" | xclip -selection clipboard`
    - `xclip -o` - shows the content of xclip
    - `xclip -o > file.txt` - send the content of xclip to a file.txt
    - `xclip`
    - `xclip-copyfile`
    - `xclip-cutfile`
    - `xclip-pastefile`


### Packages and dnf
- List all packages installed by the user
    - `dnf history userinstalled` - history of installed packages
    - `rpm -qa` - all rpm installed
    - `dnf list installed` - list all packages installed
    - `pkcon search name ftp` - search for an specific package

- list repos
    - `dnf repolist`
- clean metadata
    - `dnf clean metadata`
- show duplicates of specific lib (libuv in this case)
    - `sudo dnf --showduplicates list libuv`
- remove duplicates
    - `sudo dnf remove --duplicates`
- reset the module and reinstall the module
    - `sudo dnf module reset libluv`
    - `sudo dnf reinstall libluv`
- remove neovim, clean and reinstall neovim
    - `sudo dnf remove neovim && sudo dnf clean all && sudo dnf install neovim`
- package info
    - `dnf info neovim`
    - `dnf info libuv`
    - `dnf info libluv`

### Vscodium 
- official site: [https://vscodium.com/](here)

### Neovim
- official: [https://neovim.io/](https://neovim.io/)
- [docs](https://github.com/neovim/neovim/blob/master/INSTALL.md)
- Extract
    - `sudo tar -C /opt -xzf nvim-linux64.tar.gz`
- add to path
    - `export PATH="$PATH:/opt/nvim-linux64/bin"`
- validate version
    - `nvim -v`
- Install Fonts:
    - `cp *.*tf ~/.local/share/fonts`
    - `ls ~/.local/share/fonts`
    - `fc-cache -vf`
- documentation:
  - [here](http://www.lazyvim.org/installation)
  - `mkdir ~/.config/nvim`
  - `git clone https://github.com/LazyVim/starter ~/.config/nvim`
  - `rm -rf ~/.config/.git`
  - `nvim`

### Services

- systemd also manage scripts at startup
- on `/etc/systemd/system`
    ```sh
    # /etc/systemd/system/sstest.service
    [Service]
    Type=oneshot
    RemainAfterExit=yes
    ExecStart=/usr/local/libexec/my-startup-script
    ExecStart=/etc/sstest.local

    [Install]
    WantedBy=multi-user.target
    ```
    ```sh
    [Unit]
    Description=/etc/sstest.local Compatibility
    ConditionPathExists=/etc/sstest.local

    [Service]
    Type=forking
    ExecStart=/etc/sstest.local start
    TimeoutSec=0
    StandardOutput=tty
    RemainAfterExit=yes
    SysVStartPriority=99

    [Install]
    WantedBy=multi-user.target
    ```
- the script should be (shebang required) `/etc/datetofile.sh` or `/etc/rc.local` or `sstest.local`:
    ```sh
    #!/bin/bash
    #echo $(date) > ~/date.txt
    #
    # eog ~/Pictures/dom2.png
    wall "test"
    exit 0
    ```

- Reload the daemon if required
    - `systemctl daemon-reload `
- Enable and restart the service
    - `systemctl enable sstest.service`
    - `systemctl restart sstest.service`
- review the journal in case errors
    - `journalctl -xeu sstest.service`

- [documentation](https://linuxhandbook.com/create-systemd-services/)


### Environment Variables

1. `PATH`: Specifies a list of directories where the shell looks for executable files. When you type a command, the shell searches these directories in the specified order
2. `HOME`: Represents the current user's home directory
3. `USER`: Contains the username of the current user
4. `SHELL`: Specifies the path to the current user's shell, like `/bin/bash` or `/bin/zsh`
5. `PWD`: Stands for "Present Working Directory," indicating the current directory the user is in
6. `LOGNAME`: Contains the name of the current user
7. `LANG` or `LC_*`: Defines the locale settings, which determine the language and regional settings for the system
8. `TERM`: Specifies the type of terminal to emulate when running the shell
9. `EDITOR` or `VISUAL`: Defines the default text editor to be used, e.g., `vim` or `nano`
10. `MANPATH`: Specifies the list of directories to search for manual pages
11. `MAIL`: Contains the path to the user's mailbox
12. `TMPDIR`: Defines the directory for temporary files
13. `HOSTNAME`: Indicates the name of the host system
14. `OLDPWD`: Stores the previous working directory, allowing you to return to it with `cd -`
15. `DISPLAY`: Used in systems running X11 to define the display server used for GUI applications
    - `export DISPLAY=:0`
    - `xdpyinfo`
16. `SSH_CLIENT` and `SSH_CONNECTION`: Provide information about the current SSH connection, such as the client IP address and port
17. `LD_LIBRARY_PATH`: Specifies directories to search for shared libraries before the default locations

- env vars can be:
    - set - `set`
    - modified - `export`
    - viewed - `env`, and `printenv`



