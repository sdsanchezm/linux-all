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
    - cat file.txt
    - cat -A file.txt - all non-printing characters
    - cat -n file.txt - - numbers
### cd
    - classic, real classic

### find 
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





### ps


### vmstat


### dig


### ip


### netstat


### ping


### traceroute




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

### adduser
- Example
    - `adduser`

### userdel
- Example
    - `userdel`

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

### 


## Networking and troubleshooting




## software and cloud concepts




## Security fundamentals





## Devops fundamentals





## supporting apps and devs





















