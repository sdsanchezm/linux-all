# Tracking

  - [Tracking](#tracking)
    - [Generals](#generals)
    - [Backup](#backup)
    - [Filesystems and file management](#filesystems-and-file-management)
    - [User and System Administration commands](#user-and-system-administration-commands)
    - [Monitoring](#monitoring)
      - [top](#top)
      - [htop](#htop)
      - [glances](#glances)
      - [bpvtop](#bpvtop)
      - [cat](#cat)
      - [less](#less)
      - [tail](#tail)
      - [head](#head)
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
      - [pidof, lsof](#pidof,-lsof)
      - [vmstat](#vmstat)
      - [dig](#dig)
      - [ip](#ip)
      - [netstat](#netstat)
      - [ping](#ping)
      - [traceroute](#traceroute)
      - [ssh and ssh-copy-id](#ssh-and-ssh-copy-id)
        - [ssh-keygen and ssh-add](#ssh-keygen-and-ssh-add)
      - [w who and users](#w-who-and-users)
      - [tty](#tty)
      - [chvt](#chvt)
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
      - [change the owner of a file or dir](#change-the-owner-of-a-file-or-dir)
      - [id](#id)
      - [blkid](#blkid)
      - [exa](#exa)
      - [getent](#getent)
      - [Logs](#logs)
    - [Networking and troubleshooting](#networking-and-troubleshooting)
      - [NetworkManager](#networkmanager)
        - [nmcli](#nmcli)
        - [nmtui](#nmtui)
        - [nm-connection-editor](#nm-connection-editor)
        - [ip](#ip)
        - [ipcalc](#ipcalc)
        - [host and dig](#host-and-dig)
        - [kill and killall](#kill-and-killall)
        - [fg bg and jobs](#fg-bg-and-jobs)
    - [Processes](#processes)
    - [Services and daemons](#services-and-daemons)
    - [Network Troubleshoot](#network-troubleshoot)
      - [Validate Adapter is up](#validate-adapter-is-up)
      - [Validate local configuration](#validate-local-configuration)
      - [Validate connections](#validate-connections)
      - [Validate server functions](#validate-server-functions)
    - [software and cloud concepts](#software-and-cloud-concepts)
      - [Key Features](#key-features)
    - [Security fundamentals](#security-fundamentals)
      - [sudoers](#sudoers)
      - [ACL](#acl)
      - [AIDE](#aide)
      - [Single user mode](#single-user-mode)
      - [File Permissions](#file-permissions)
    - [Devops fundamentals](#devops-fundamentals)
    - [supporting apps and devs](#supporting-apps-and-devs)
    - [Storage](#storage)
      - [lsblk](#lsblk)
      - [fdisk](#fdisk)
      - [mkfs](#mkfs)
      - [mount and umount](#mount-and-umount)
      - [fstab](#fstab)
      - [Raids](#raids)
      - [LVM](#lvm)
      - [grub](#grub)
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
      - [Packages and dnf](#packages-and-dnf)
      - [Vscodium](#vscodium)
      - [Neovim](#neovim)
      - [Services](#services)
      - [Environment Variables](#environment-variables)


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
- `top`
    - load average: cpu (measures at: 1min, 5min and 15 min)
- `free` - check memory of the system
- `free -h` - check the memoty of the system
- `du`

### htop

- List of Signals in htop > F9
    - Htop also allows to kill a process, using F9 > select Signal > press Enter
- the menu is available in the application

### glances

### bpvtop


### cat
- Examples
    - `cat file.txt`
    - `cat -A file.txt - all non-printing characters`
    - `cat -n file.txt - - numbers`

### less
- `less a.txt`
- `ls -l | grep a | less`

### tail
- `tail ./a.txt`
- `tail -n 10 ./a.txt` - last 10 lines
- `tail -f ./a.txt ./b.txt` - follow 1 or more files (changes in real time)
- `tail +40 ./a.txt` - counts 40 from the start

### head
- `head ./a.txt`
- `head -n 10 ./a.txt`

### cd
- classic, real classic

### find
- find all executables in a path and remove them
    - `find /some/dir -type f -executable -exec rm {} \;`
- find all files that have not been accessed in the last 30 days and move them into another dir
    - `find /some/dir -type f -atime +30 -exec mv {} /some/destination/ \;`
    - `find /some/dir -type f -atime +30 -exec mv -t /some/destination/ {} +`
- options for `-type`
    - `f` - regular file
    - `d` - directory
    - `l` - symbolic link
    - `c` - character device
    - `b` - block device
    - `p` - named pipe (FIFO)
    - `s` - socket
- options for properties
    - `-executable` - in the find command
    - `-readable` - readable files
    - `-writable` - writable files
    - `-empty` - empty files or directories
    - `-user [name]` - files owned by a specific user
    - `-group [name]` - files owned by a specific group
    - `-size [N]` - files of a specific size
    - `-iname [pattern]` - case-insensitive name matching
    - `-perm [mode]` - files with specific permissions
        - `find /dir/path -type f -perm 755` - specifically 755
        - `find /dir/path -type f -perm -200` - at least write for the user (UGO)

- finding all files from a specific user
- Example
    - `find /home -user 1001`
- Example
    - outputs the full pathname of the matched files or directories. This is the default action if no other action is specified
        - `-print`

    - finds empty files or directories
        - `-empty`

    - limits the search to a specific depth. For example, `-maxdepth 1` searches only in the current directory
        - `-maxdepth level`:

    - restricts the search to the same file system as the starting point, avoiding directories on other filesystems
        - `-xdev`

    - examples: 
        - Using `-print`
        ```sh
        find /path/to/search -name ".txt" -print
        ```
        Prints paths of all `.txt` files

        - Using `-empty`
        ```sh
        find /path/to/search -empty
        ```
        Finds all empty files and directories

        - Using `-maxdepth`
        ```sh
        find /path/to/search -maxdepth 1 -name ".txt"
        ```
        Searches for `.txt` files only in the current directory

        - Using `-xdev`
        ```sh
        find /path/to/search -xdev -name "*.txt"
        ```
        Searches for `.txt` files only within the same filesystem as `/path/to/search`

### grep 
- Examples
    - *`-i`*:
    Ignores case distinctions in patterns and input data.

    - *`-v`*:
    Inverts the match, showing lines that do not match the pattern.

    - *`-l`*:
    Prints the names of files with matching lines, without showing the actual lines.

    - *`-q`*:
    Runs quietly, suppressing normal output. Exits with 0 if a match is found, otherwise exits with 1.

    - Examples:
        - *Using `-i`*:
        ```sh
        grep -i "pattern" file.txt
        ```
        Searches for "pattern" case-insensitively.

        - *Using `-v`*:
        ```sh
        grep -v "pattern" file.txt
        ```
        Displays lines that do not contain "pattern".

        - *Using `-l`*:
        ```sh
        grep -l "pattern" *.txt
        ```
        Lists filenames of `.txt` files that contain "pattern".

        - *Using `-q`*:
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
    - `-R`: recursively changes ownership of directories and their contents
    - Example: `chown -R user:group directory`
- Example2:
    - `chwon user /path/file`
    - `chwon user /path/folder`

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

- `man ps` - just the man, but a bunch of commands
- `ps`
- `ps -aux`
- `ps -aux | grep davs`
- `ps -aux | grep less`
- More at:
    - [https://www.tecmint.com/linux-process-management/]
- `ps -ft tty1` - list terminals

### pidof, lsof
- pidof
    - `pidof less` (all pids using less)
    - `pidof vim`
    - `pidof systemd`

- lsof (list all socket files)
    - `sudo lsof -I :22` (list all socket connections on port 22, must be sudo)


### vmstat
- virtual memor stats


### ssh and ssh-copy-id
- `ssh-keygen` - key is normally/ByDefault stored at `/home/<user>/.ssh/id_rsa`
- the *.pub* file go to the remote server (this is the public key)
- the other one stays locally (the private one)
    - `ssh-copy-id -i keyPath/<keyName>.pub <user>@<serverIp>` - copy public key
        ```
        /usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "id_ed25519.pub"
        The authenticity of host '192.x.x.x (192.x.x.x)' can't be established.
        ED25519 key fingerprint is SHA256:qweasd
        This key is not known by any other names.
        Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
        /usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
        /usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
        jamecho@192.x.x.x's password:

        Number of key(s) added: 1

        Now try logging into the machine, with:   "ssh 'jamecho@192.x.x.x'"
        and check to make sure that only the key(s) you wanted were added.
        ```
- `ssh <user>@<serverIp>` - validate in `~/.ssh/authorized_keys`
- `ssh -vvvv <user>@<serverIp>` - verbose, the more v, the more verbose
- config file: `/etc/ssh/sshd_config` - content:
    ```bash
    PasswordAuthentication yes
    PertmiEmptyPasswords no
    ChallengeResponseAuthentication no
    PermitRootLogin no
    AllowUsers <user>
    ```
#### ssh-keygen and ssh-add
- `ssh-keygen -t ed25519 -C "j@example.com"`
- `eval "$(ssh-agent -s)"` - (here we ensure ssh service is up) and the result:
    - id_ed25519      id_ed25519.pub
- `ssh-add ~/.ssh/id_ed25519` - result:
    - Enter passphrase for /home/jamecho/.ssh/id_ed25519:
    - Identity added: /home/jamecho/.ssh/id_ed25519 (j@example.com)


### w who and users
- Example:
    - show who is logged in and what they're doing
    - `w` - shows who is connected to the server
    - `who` - shows who is connected to the server
    - `users` - shows who is connected to the server

### tty
- check the actual vt
    - `tty`

### chvt
- change virtual terminal (like pressing Ctrl+Alt+Fx)
    - `sudo chvt 6`
    - `sudo chvt 7` - normally used in ubuntu

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
- interactive way to create a user (ask for each detail)
- Example
    - `adduser jara1`
    - `sudo adduser jara1` - create the new user
    - `sudo id jara1` - check the id of the new user
    - `id -u` - once logged in, check the id
    - `id -un` - once logged in, check the username
    - `cat /etc/passwd` - check the passwd file to see if user is created
    - `su jara1` - log as the new user
    - `sudo usermod -a -G adm jara1` - add the group adm to jara1
    - `id jara1` - verify jara1 id
    - `userdel --remove jara1` - delete user jara1
    - `id jara1` - verify jara1 was deleted
    - `sudo chfn jara1` - update user info
    - `usermod --lock jara1` - lock a user ()
    - `usermod --unlock jara1` - unlock a user
    - `usermod -U jara1` - unlock a user
    - `userdel jara1` - removes jara1
    - `userdel -r jara1` - removes jara1 also removing directory


### groups
- file
    - `/etc/group` - file for all groups in system
    - `ss:x:1002` - username:pwrt:groupid
- find groups for a specific user
    - `cat /etc/group | grep jara1`
    - `groups` - show all groups of the actual user
    - `getent group sudo`
- Examples
    - `groupmod -n <newname> <oldname>` - change the name of a group
    - `groupmod -gid <newID> <groupname>` - change the id of a group
    - `groupadd <name>` - add a new group
    - `groupdel <groupName>` - remove a group
    - `gpasswd -d <nameOfUser> <nameOfGroup>` - remove a user from the group
    - `gpasswd -a <nameOfUser> <nameOfGroup>` - adds a user to a group
    - `groupmems`
    - `usermod -a -G <groupname> <username>` - add a user to a group
        - `usermod -aG <groupname> <username>` - add a user to a group
    - `chgrp <NameOfGroup> <pathToFileOrDirectory>`
    - `chmod +s /share`

- Example 2 (good practice)
    - `cat /etc/group`
    - `groups <userName>`
    - `less /etc/group | grep <userName>`
    - `getent group sudo`
    - `getent group friends`
    - `sudo groupadd <groupName>`
    - `sudo groupadd friends`
    - `sudo groupmod -n <newNanme> <oldName>`
    - `sudo groupmod -n friends freunde`
    - `sudo chgrp <groupName> <pathOfFileOrDirectory>`
    - `sudo chgrp friends /sharex`
    - `mkdir ~/kk1`
    - `chmod 770 ~/sharex`
    - `sudo chmod +s /kk1`
    - `sudo chmod +s /sharex` - any file/folder created inside this folder, will belong to the groupOwner (same as folder)
    - `usermod -a -G friends jamecho`
    - `usermod -a -G friends jara`
    - `groupdel <groupName>`

    - `sudo chmod g+<permisos> <pathToFileOrDir>`
    - `sudo getfacl /pathToFileOrDir`
    - `sudo gpasswd -d <userName> <groupName>`

### newgrp
- `newgrp <groupName>` - changes user primary group membership

### users
- Example
    - `useradd` - basic way, it does not create a home user and assign sh as default shell
        - `useradd -m jara2` - creates a home folder
        - `useradd -m -d /path/asd <userName>`
    - `userdbctl`
    - `userhelper`
    - `users`
    - `userdel`
    - `deluser`
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

### chpasswd and passwd
- `tldr chpasswd`
- `chpasswd` is for multiple users
    - `printf "username:new_pass" | sudo chpasswd`
    - `printf "username:new_pass1\nusername:new_pass2" | sudo chpasswd`
    - `printf "username:new_pass_encrypted2\nusername2:new_pass_encrypted2" | sudo chpasswd --encrypted`
- `passwd` is for a single user
- `sudo passwd -S <user>` - status of the user


### gpasswd and chgpasswd
- `gpasswd -a user group`
- `gpasswd group`
- `gpasswd -d user group`
- `sudo gpasswd -A user1,user2 group`
- `sudo gpasswd -M user1,user2 group`


### chsh
- change the shell of a user
- Example
    - `chsh` - interactive
    - `sudo chsh /usr/bin/zsh jara` - change jara shell
    - `chsh --shell jara` - change the shell for the user
    - `chsh --shell /shell/path jara` - change the shell for the user
    - `chsh --list-shell` - list shells
- To validate changes `/etc/passwd` - last record

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

### getent
- `getent` - get entries from Name Service Switch (NSS) libraries
- Example
    - `getent group sudo`
    - `getent passwd ss`
	- `getent group ss`
	- `getent services `
	- `getent services fido`
	- `getent hosts`
	- `getent networks`
- Databases that can be queried by getent:
    - `passwd` - user account information
    - `group` - group account details
    - `hosts` - hostnames and IP addresses
    - `services` - network services and their associated ports
    - `protocols` - network protocols
    - `networks` - network names
    - `shadow` - user password information (requires proper permissions)
    - `aliases` - mail alias information
    - `ahostsv4`
    - `ahostsv6` (address resolution)
    - `ahosts`
    - `gshadow` (secure group information)
    - `netgroup`
    - `rpc` 
    - `ethers` (Ethernet addresses)

### Logs
- by defaul stored on:
    - `/ver/logs`
- Config
    - `/etc/syslog.conf`
    - `/etc/rsyslog.conf`


## Networking and troubleshooting


### dig
- dns lookup utility


### netstat
- network stats


### ping
- icmp (internet control message protocol)


### traceroute
- trace every router from origin to destiny


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
            inet6 aa80::a16:f250:fc8e:620/64 scope link noprefixroute
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
            inet6 aa20::a26:f210:fc8e:620/24 scope link noprefixroute
            valid_lft forever preferred_lft forever
        ```



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

#### ipcalc
- Example
    - `ipcalc 192.168.91.23/24`

#### host and dig
- Example
    - `host www.linuxfoundation.org`
    - `dig www.linuxfoundation.org`
- Nameserver can be entered at `/etc/resolv.conf`


#### kill and killall

- Sends a signal to the process with the specified ID by default: SIGTERM
- `kill <OPTION> <PID>`

- `killall -9 <nameOfApp>`
- killall -9 less (will kill all named "less" apps in use)

- kill <pid>
- kill -9 <pid> (9 is the SIGKILL)
- kill -s SIGKILL <pid>
    - -1 # SIGHUP, restart the process
    - -2 # SIGINT, interrupt the process
    - -9 # SIGKILL, terminate the process forcing it
    - -15 # SIGTERM, terminate the process in a normal way (default)
    - -19 # SIGSTOP, pause the process
    - -18 # SIGCONT, resume the process

- List of Signals in htop > F9
    - Htop also allows to kill a process, using F9 > select Signal > press Enter

- kill does not terminate bg processes
    - kill -s SIGKILL <pid>
- Equivalent to
    - kill -9 <pid> (9 is the SIGKILL)


#### fg bg and jobs
- Ampersand at the end (background execution)
    - `fg %2` - rh based
    - `fg 3` - debian based
    - `bg`
- Jobs -l (view all background jobs)
    - Fg 1 (job 1 is brought it back to foreground)
    - Fg 2 (job 2 is brought it back to foreground)
    - `jobs` list all jobs
- open `vim a.txt` then Ctrl+z then `jobs` it will be sent to background
    - then `fg 1` to come back
    - `jobs` if need a list
- terminate one of the jobs
    - `kill %[job number]`
    - `kill %1`


## Processes

- solumn "S" in htop
    - running or runable (R)
    - uninterruptible sleep (D)
    - interruptible sleep (S)
    - stopped (T)
    - zombie (Z)

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

- Add a user to the sudoers file:

    1. `sudo usermod -aG wheel jamecho`
    1. `sudo usermod -a -G sudo jamecho`
    2. `sudo visudo` - the way to edit the */etc/sudoers* file
- or add
    - `%wheel ALL=(ALL) ALL`
- edit `/etc/sudoers` (is a readonly file)
    - to add `<userName> ALL=(ALL) ALL`


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


## Storage

### lsblk 

- `lsblk` - list all devices

### fdisk 

- `sudo fdisk -l` - list all devices
- `sudo fdisk /dev/sdb` - starts the fdisk utility on /dev/sdb
    - `m` - list all options
    - peress n - creates a new partition
    - then press p to select primary
    - then keeps 2048 (hit enter)
    - then enters the size (it could be `+3G` for 3 GB)
    - then press `p` to preview the partitions
    - then press `w` is to write partitions (no undo, NO UNDO)
    - or press `q` exit with no changes
- to validate
    - `lsblk`

### mkfs

- `mkfs.ext4 /dev/sdb1` - creates a new ext4 fs on sdb1

### mount and umount

- `mkdir /temp1`
- `sudo mount /dev/sdb1 /temp1`
- `sudo umount /dev/sdb1`

### fstab

- automatically mounts a partition after reboot
- `sudo vim /etc/fstab` - file system table
    - `/dev/sdb1    /temp1    ext4    defaults    0   0` - the new line should look like this (it uses tabs, no spaces)
- to validate after reboot: `lsblk`


### Raids

- create a raid 1
    - `sudo fdisk /dev/sdc` and `sudo fdisk /dev/sdd` 
        - `n` - new partition
        - `p` - primary
        - [enter] - start sector
        - [enter] - size of partition, enter for default
        - `w` - write
    - `sudo apt install mdadm` - utility 
    - `sudo mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sd[cd]` - 
    - `lsblk` - check partitions and raid
    - `sudo mdadm --misc --detail /dev/md0` - check the raid
- `sudo mdadm --help` - get general help
- `sudo mdadm --create --help` - get specific help


### LVM 

- install lvm
    - `sudo apt install lvm2`
    - `lsblk` lvm still considers md0 as a disk (unique block disk)
        ```bash
            sdc      8:32   0     5G  0 disk  
            ├─sdc1   8:33   0     5G  0 part  
            └─md0    9:0    0     5G  0 raid1 
            sdd      8:48   0     5G  0 disk  
            ├─sdd1   8:49   0     5G  0 part  
            └─md0    9:0    0     5G  0 raid1 
        ```
- On md0 we're gonna create a (logical volume group)
- first we create our physical device (required by lvm)
    - `pvcreate /dev/md0` - created the physical volume
    - `pvdisplay` - view/validate

      ```bash
        "/dev/md0" is a new physical volume of "<5.00 GiB"
        --- NEW Physical volume ---
        PV Name               /dev/md0
        VG Name               
        PV Size               <5.00 GiB
        Allocatable           NO
        PE Size               0   
        Total PE              0
        Free PE               0
        Allocated PE          0
        PV UUID               sss-ooo-lll-uuu-ccc
        ```

- then create the logical volume groups
    - `vgcreate volumegroup1 /dev/md0` - create volume group (like a big disk we can resize)
    - `vgdisplay` - validate
        ```bash
          --- Volume group ---
            VG Name               volumegroup1
            System ID             
            Format                lvm2
            Metadata Areas        1
            Metadata Sequence No  1
            VG Access             read/write
            VG Status             resizable
            MAX LV                0
            Cur LV                0
            Open LV               0
            Max PV                0
            Cur PV                1
            Act PV                1
            VG Size               4.99 GiB
            PE Size               4.00 MiB
            Total PE              1278
            Alloc PE / Size       0 / 0   
            Free  PE / Size       1278 / 4.99 GiB
            VG UUID               sss-ooo-lll-uuu-ccc
        ```

- then create logical volumes
    - `lvcreate --name private1 --size 2Gb volumegroup1`
    - `lvcreate --name public1 --size 2.99Gb volumegroup1`
    - `lvdisplay` - validate the lv (logical volume)
        - 
        ```bash
                --- Logical volume ---
                LV Path                /dev/volumegroup1/private1
                LV Name                private1
                VG Name                volumegroup1
                LV UUID                sss-ooo-lll-uuu-ccc
                LV Write Access        read/write
                LV Creation host, time davsvm2, 2010-10-26 16:19:50 -0500
                LV Status              available
                # open                 0
                LV Size                2.00 GiB
                Current LE             512
                Segments               1
                Allocation             inherit
                Read ahead sectors     auto
                - currently set to     256
                Block device           252:0
                
                --- Logical volume ---
                LV Path                /dev/volumegroup1/public1
                LV Name                public1
                VG Name                volumegroup1
                LV UUID                ccc-uuu-lll-ooo-sss
                LV Write Access        read/write
                LV Creation host, time davsvm2, 2010-10-21 12:21:21 -0500
                LV Status              available
                # open                 0
                LV Size                2.99 GiB
                Current LE             766
                Segments               1
                Allocation             inherit
                Read ahead sectors     auto
                - currently set to     256
                Block device           252:1
        ```
    - `vgdisplay` - validate
    - `lsblk` - validate partition tables
        ```bash
            sdc                         8:32   0     5G  0 disk  
            ├─sdc1                      8:33   0     5G  0 part  
            └─md0                       9:0    0     5G  0 raid1 
            ├─volumegroup1-private1 252:0    0     2G  0 lvm   
            └─volumegroup1-public1  252:1    0     3G  0 lvm   
            sdd                         8:48   0     5G  0 disk  
            ├─sdd1                      8:49   0     5G  0 part  
            └─md0                       9:0    0     5G  0 raid1 
            ├─volumegroup1-private1 252:0    0     2G  0 lvm   
            └─volumegroup1-public1  252:1    0     3G  0 lvm   
        ```
    - `lvm --help`

- then we can use `fstab` to auto mount
    - `lsblk`
    - `sudo fdisk -l`
    - 
        ```bash
        Disk /dev/md0: 5 GiB, 5363466240 bytes, 10475520 sectors
        Units: sectors of 1 * 512 = 512 bytes
        Sector size (logical/physical): 512 bytes / 512 bytes
        I/O size (minimum/optimal): 512 bytes / 512 bytes

        Disk /dev/mapper/volumegroup1-private1: 2 GiB, 2147483648 bytes, 4194304 sectors
        Units: sectors of 1 * 512 = 512 bytes
        Sector size (logical/physical): 512 bytes / 512 bytes
        I/O size (minimum/optimal): 512 bytes / 512 bytes

        Disk /dev/mapper/volumegroup1-public1: 2.99 GiB, 3212836864 bytes, 6275072 sectors
        Units: sectors of 1 * 512 = 512 bytes
        Sector size (logical/physical): 512 bytes / 512 bytes
        I/O size (minimum/optimal): 512 bytes / 512 bytes
        ```
    - `sudo mkfs.ext4 /dev/volumegroup1/public1` - format using ext4
    - `sudo mkfs.ext4 /dev/volumegroup1/private1`
    - `sudo mkdir /tempPublic1`
    - `sudo mkdir /tempPrivate1`
    - `sudo mount /dev/volumegroup1/private1 /tempPrivate1/` - mount 
    - `sudo mount /dev/volumegroup1/public1 /tempPublic1/`
    - `sudo touch /tempPrivate1/thisIsPrivate.txt` - create a file to test
    - `sudo touch /tempPublic1/thisIsPublic.txt`
    - `sudo umount /dev/volumegroup1/public1` - mount the volumes
    - `sudo umount /dev/volumegroup1/private1`
    - `ls /tempPublic1/` - validate
    - `ls /tempPrivate1/`
    - `sudo vim /etc/fstab` - edit fstab
        ```bash
        # / was on /dev/sda2 during curtin installation
        /dev/disk/by-uuid/4c390b9c-f536-4e7c-befa-e2b8de7bd23c / ext4 defaults 0 1
        /swap.img	none	swap	sw	0	0
        /dev/volumegroup1/public1	/tempPublic1 ext4	defaults	0	0
        ```
    - `reboot`
    - public1 is automatically mounted (private1 is not)


### grub

- process must be from the recover disk and disk shouldn't be ciphered (encrypted)
- to broke the grub, just rename the grub.cfg file to something else
- file:
    - `/boot/grub/grub.cfg`

- binding process
    - `mount -o bind /dev/ /mnt/dev`
    - `mount -o bind /dev/pts /mnt/dev/pts`
    - `mount -o bind /proc/ /mnt/proc`
    - `mount -o bind /run/ /mnt/run`
    - `mount -o bind /sys/ /mnt/sys`

- change root root of the system
    - `chroot /mnt/ /bin/bash`

- repair grub
    - `grub-mkconfig -o / boot/grub/grub.cfg`

- reinstall grub
    - `grub-install –boot-directory=/boot/ --recheck /dev/sda`


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
- `rsync -options <origin> <destination>`
- complete and tested examples (using watch in real time)
    - `rsync temp.txt /home/marrana` 
    - `rsync -a ./origin1 ./destination1` - copies the entire folder origin1
    - `rsync -avh ./origin1 ./destination1` - same but verbose, human readable
    - `rsync -a ./origin1/ ./destination1/` - this copies content, not directory itself (`/` at the end)
    - `rsync -avzh ./origin1/ ./destination1/` - preserves permissions, verbose, compressed mode, human readable
    - `rsync -a kali@191.161.1.131:/home/kali/Downloads/serie1/ ./files1/` - using a remote origin
    - `rsync -a ./files2/ kali@191.161.1.131:/home/marrana/Downloads/serie2/` - using a remote destination 
    - Example 1 `--delete` option, if a file was delete on origin: using this option, rsync will delete destiny
    - Example 2 `--delete` option, if a file was delete on destiny: using this option, rsync will sync from origin to destiny (wont delete origin)
        - `rsync -avh --delete ./origin1/ ./destiny1/`
    - `rsync -avz --exclude '*.mp4' --exclude '*.mp3' ./origin1/ ./destiny/` - excluding extensions
    - `rsync -avz ./origin1/ ./destiny/ --dry-run` - test/preview before run it
    - `rsync -au ./origin1/ ./destiny/` - skip files that are newer in the destination
- options
    - `-a` - archive mode (preserves permissions and symbolic links)
    - `-v` - verbose
    - `-z` - compress
    - `-h` - human readable verbosity
    - `-u` - skip newer files in the destination (to avoid overwriting them)
    - `--progress` - display progress
    - `--delete` - delete extraneous files from destiny
    - `--exclude` - exclude specific folders/dirs
    - `--dry-run` - simulate (recommended before transfer)

### watch
- keeps a command to diplay updates in real time
- Examples
    - `watch ls -a` - basic
    - `watch -n 1 ls /home/marrana` - set 1 second
    - `watch -n 1 ls -l /home/marrana` - same with list
    - `watch -n 1 -d ls -l /home/marrana` - highlight changes
    - `watch -n 1 'ls -lt /home/marrana'` - most recent modified files

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



