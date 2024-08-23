# cert CS Topics

## Details

- Topics and %
    - Essential Commands (25%)
    - Operation of Running Systems (20%)
    - User and Group Management (10%)
    - Networking (12%)
    - Service Configuration (20%)
    - Storage Management (13%)
- Notes
    - Note: 120 mins
    - performance based


## General Topics

### Operations Deployment

- [] Configure 
    - kernel parameters
    - [x] persistent 
    - [] non-persistent
- Diagnose, identify, manage, and troubleshoot
    - processes []
    - services [x]
- Manage or schedule 
    - jobs for executing commands
- Search for, install, validate, and maintain 
    - software packages or repositories
- Recover 
    - from hardware failures
    - from operating system, or filesystem failures
    - from filesystem failures
- Manage
    - Virtual Machines (libvirt)
- Configure, create and manage
    - container engines
    - containers
- Create and enforce 
    - MAC using SELinux


### Networking

- Configure 
    - IPv4 and IPv6 networking 
    - hostname resolution
- Set and synchronize
    - system time using time servers
- Monitor and troubleshoot
    - networking
- Configure 
    - OpenSSH server
    - OpenSSH client
- Configure 
    - packet filtering
    - port redirection
    - NAT
- Configure
    - static routing
- Configure
    - bridge
    - bonding devices
- Implement
    - reverse proxies
    - load balancers


### Storage

- Configure and manage
    - LVM storage
- Manage and configure 
    - virtual file system
- Create, manage, and troubleshoot
    - filesystems
- Use
    - remote filesystems
    - network block devices
- Configure and manage
    - swap space
- Configure
    - filesystem
    - automounters
- Monitor
    - storage performance


### Essential Commands

- Basic Git Operations
- Create, configure, and troubleshoot
    - services
- Monitor and troubleshoot
    - system performance
    - system services
- Determine 
    - application specific constraints
    - service specific constraints
- Troubleshoot 
    - diskspace issues
- Work 
    - with SSL certificates


### Users and Groups

- Create and manage 
    - local user 
    - group accounts
- Manage 
    - personal environment profiles
    - system-wide environment profiles
- Configure 
    - user resource limits
- Configure and manage 
    - ACLs
- Configure 
    - system to use LDAP user
    - system to use group accounts



## Chapters

- Introduction
- Linux Filesystem Tree Layout
- User Environment
- User Account Management
- Group Management
- File Permissions and Ownership
- Package Management Systems
- dpkg
- APT
- RPM
- dnf and yum
- zypper
- GIT Fundamentals
- Processes
- Process Monitoring
- Memory Monitoring, Usage and Configuring Swap
- I/O Monitoring
- Containers Overview
- Linux Filesystems and the VFS
- Disk Partitioning
- Filesystem Features: Attributes, Creating, Checking, Usage, Mounting
- The EXT4 Filesystem
- Logical Volume Management (LVM)
- Kernel Services and Configuration
- Kernel Modules
- Devices and udev
- Network Addresses
- Network Devices and Configuration
- LDAP
- Firewalls
- System Init: systemd History and Customization
- Backup and Recovery Methods
- Linux Security Modules
- System Rescue

## Linux Mandatory Commands for admins

### 1. **Essential Commands**
   - **File Management:** Using `ls`, `cp`, `mv`, `rm`, `find`, `locate`, `grep`, `tar`, `gzip`, `bzip2`, `xz`, etc.
   - **Text Manipulation:** Using tools like `cat`, `head`, `tail`, `cut`, `sort`, `uniq`, `wc`, `sed`, and `awk`.
   - **File Permissions and Ownership:** Using `chmod`, `chown`, `umask`, and understanding permissions.
   - **Process Management:** Using `ps`, `top`, `htop`, `kill`, `nice`, `renice`, `jobs`, and `bg/fg` to manage processes.
   - **User and Group Management:** Adding, deleting, and modifying users and groups with `useradd`, `usermod`, `userdel`, `groupadd`, etc.

### 2. **System Initialization and Services**
   - **Boot Process:** Understanding GRUB, init, systemd, and managing the boot process.
   - **Managing Services:** Using `systemctl`, `service`, `chkconfig`, `journalctl` to control services, view logs, and manage units.
   - **Runlevels and Targets:** Understanding runlevels and systemd targets.
   - **Cron Jobs and At Jobs:** Scheduling tasks using `cron` and `at`.

### 3. **Networking**
   - **Basic Network Configuration:** Configuring network interfaces, using tools like `ip`, `ifconfig`, `nmcli`, and `ethtool`.
   - **Firewall and Security:** Setting up firewalls using `iptables`, `firewalld`, and understanding SELinux/AppArmor basics.
   - **Network Troubleshooting:** Tools like `ping`, `netstat`, `traceroute`, `dig`, `nslookup`, `tcpdump`, and `nmap`.
   - **DNS and DHCP Configuration:** Setting up and managing DNS/DHCP services.

### 4. **Storage and Filesystems**
   - **Partitioning and Filesystems:** Creating, formatting, and mounting partitions using `fdisk`, `parted`, `mkfs`, and `mount`.
   - **LVM Management:** Using Logical Volume Manager (LVM) for dynamic disk management (`pvcreate`, `vgcreate`, `lvcreate`, etc.).
   - **RAID:** Understanding RAID levels and how to configure software RAID with `mdadm`.
   - **Filesystem Maintenance:** Tools like `fsck`, `tune2fs`, `du`, `df`, `mount`, `umount`.
   - **Backup and Recovery:** Creating backups with tools like `rsync`, `tar`, and handling recovery processes.

### 5. **System Monitoring and Performance**
   - **Resource Usage Monitoring:** Monitoring CPU, memory, disk, and network using `top`, `htop`, `free`, `iotop`, `sar`, and `vmstat`.
   - **Logs and Troubleshooting:** Using `dmesg`, `/var/log/`, and `journalctl` to review logs and troubleshoot issues.
   - **Package Management:** Installing and managing packages with tools like `apt`, `yum`, `dnf`, `zypper`, `rpm`, `dpkg`.

### 6. **Shell Scripting and Automation**
   - **Bash Scripting:** Writing simple scripts to automate repetitive tasks.
   - **Variables, Loops, and Conditionals:** Basic knowledge of shell scripting constructs like `for`, `while`, `if`, `case`, etc.

### 7. **Security**
   - **User and Group Management:** Setting permissions, using `sudo`, and managing user privileges.
   - **Firewalls:** Configuring `iptables` or `firewalld`
   - **SSH Configuration:** Securing SSH, using keys for authentication, and configuring the `sshd_config` file
   - **SELinux and AppArmor:** Basic understanding of mandatory access controls (MAC) and how to work with SELinux or AppArmor

### 8. **Virtualization**
   - **Containers and Virtualization:** 
    - containerization tools like Docker and LXC
    - virtualization concepts KVM, QEMU, or VirtualBox

### 9. **System Maintenance**
   - **Backup Strategies:** 
    - Understanding of backup techniques (full, incremental, differential) and how to use tools like `rsync`, `tar`
   - **Upgrading and Patching Systems:** 
    - Using the package manager to keep systems updated and applying security patches

## Documentation

- [github simonesavi](https://github.com/simonesavi/lfcs?tab=readme-ov-file)
- [github StenlyTU/LFCS-official](https://github.com/StenlyTU/LFCS-official)

