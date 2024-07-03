# Tracking


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


### vmstat


### dig


### ip


### netstat


### ping


### traceroute


### xrandr

- Change resolution (tested on rockyL)
- Example
    - `xrandr --screen 0 -s 1024x768`
    - `xrandr --screen 0 -s 1280x960`


### w
- Example:
    - show who is logged in and what they're doing


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

### deluser
- Example
    - `deluser`

### id 

- display the actual user id and groups
    - Example:
        - `id`
            - `uid=1000(ss) gid=1000(ss) groups=1000(ss),10(wheel) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023`
        - `sudo id`
            - `uid=0(root) gid=0(root) groups=0(root) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023`

### blkid
- locate or print block device attributes
    - 
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




### Validate connections


### Validate server functions



### Validate local configuration







## software and cloud concepts




## Security fundamentals





## Devops fundamentals





## supporting apps and devs





Id,Name,Number1,Value,Tax,Total
1,qwe,123,20,2,30
2,asd,234,40,4,40
3,zxc,345,50,5,60
4,zxc,345,60,7,70
5,asd,234,10,4,40
6,asd,234,30,4,40
7,qwe,123,80,1,90















