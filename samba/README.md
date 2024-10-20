
# Samba configuration in Fedora Linux 39

## Install 
- install: samba
    ```
    sudo dnf install samba samba-usershares samba-common samba-client wsdd
    sudo dnf groupinstall "Development Tools"
    ```
## Stop Services
- check status and Stop the services
    - `sudo systemctl status smb`
    - `sudo systemctl status nbm`
    - `sudo systemctl status wsdd`
    - `sudo systemctl start smb`
    - `sudo systemctl start nbm`
    - `sudo systemctl start wsdd`

## Configuration (key part)
- File `sudo vim /etc/samba/smb.conf`
    - Example 1:
        ```
        [global]
        server string = File Server
        workgroup = SNTT
        security = user
        map to guest = Bad User
        name resolve order = bcast host
        include = /etc/samba/usershares.conf
        ```
    - Example 2:
        ```
        [global]
        workgroup = SNKNTT
        security = user
        passdb backend = tdbsam
        printing = cups
        printcap name = cups
        load printers = yes
        cups options = raw

        [sambashare]
        comment = public folder
        path = /share
        comment = samba
        browseable = yes
        writeable = yes
        guest ok = yes
        read only = no
        ```
    - Example 3:
        ```
        [global]
        workgroup = SNKNTT
        server string = Samba Server %v
        netbios name = samba-server
        security = user
        map to guest = bad user
        dns proxy = no

        [Public]
        path = /sambashares/public_files
        browsable =yes
        writable = yes
        guest ok = yes
        read only = no
        ```
    - This is the content of the file `usershares.conf`
        ```
        [Public Files]
        path = /sambashares/public_files
        force user = sambauser
        force group = sambagroup
        create mask = 0664
        force create mode = 0664
        directory mask = 0775
        force directory mode = 0775
        public = yes
        writable = yes
        
        [Protected Files]
        path = /sambashares/private_files
        force user = sambauser
        force group = sambagroup
        create mask = 0664
        force create mode = 0664
        directory mask = 0775
        force directory mode = 0775
        public = yes
        writable = no
        ```

- must install `samba-usershares` to make the below file automatically appear on `/etc/samba/`
    - `sudo vim /etc/samba/usershares.conf`
    - and the below line to include it in the global configuration
        - `include = /etc/samba/usershares.conf`


## Create samba user and group

- Add user and group for samba usage
    - `sudo groupadd --system sambagroup`
    - `sudo useradd --system --no-create-home --group sambagroup -s /bin/false sambauser`

- validate if user sambauser was created and registered ok
    - `cat /etc/passwd`

- create samba user:
    - `sudo smbpasswd -a sambauser`

## Create folders and set permissions

- Create shared directories
    - `sudo mkdir -p /sambashares/public_files`
    - `sudo mkdir /sambashares/private_files`

- Change ownership/permissions
    - either
        - `sudo chown -R sambauser:sambagroup /sambashares`
    - or
        - `sudo chmod -R nobody:nobody /sambashares`
    - `sudo chmod -R g+w /sambashares`
    - `sudo chcon -t samba_share_t /sambashares`
    - either:
        - `sudo chmod -R 777 /sambashares`
        - or
        - `sudo chmod -R 755 /sambashares`
        
    - may vary depending on distro...


## Restart Services

- Start/Restart the services, necesarry in Rocky Linux
    - `sudo systemctl restart wsdd`
    - `sudo systemctl restart smb`
    - `sudo systemctl restart nbm`

## Firewall config 

- use firewall-cmd to allow services permanently
    - `firewall-cmd --add-service=samba --zone=public --permanent`
    - `firewall-cmd --permanent --add-service=samba`
    - `firewall-cmd --reload`

- Allow the services: `smb` `nmb` and `wsdd` in the firewall configuration
    - open `firewall-config`
    - allow `smb` `nmb` and `wsdd` services
    - restart the 3 services

## kali (debian based) samba config

- example `/etc/samba/smb.conf`
    ```bash
    [global]
        workgroup = SNKNTT
        security = user
        passdb backend = tdbsam
        printing = cups
        printcap name = cups
        load printers = no
        cups options = raw
        include = /etc/samba/usershares.conf
        client min protocol = SMB2

    [samba1]
        comment = public folder
        path = /shared/samba1
        writeable = yes
        browseable = yes
        public = yes
        guest ok = yes
        read only = no
        force user = nobody
        create mask = 0777
        directory mask = 0777
        write list = user
        force create mode = 777
        force directory mode = 777
        force security mode = 777
        force directory security mode = 777

    ```
- example `/etc/samba/usershares.conf`
    ```bash
    [global]
	    usershare max shares = 100
	    usershare allow guests = yes
    ```
- commands
    - install
        - `sudo apt install samba`
        - `sudo service nmbd status`
        - `sudo service smbd status `
    - user
        - `sudo useradd --system --no-create-home --group sambagroup -s /bin/false sambauser`
        - `sudo groupadd --system sambagroup`
        - `sudo chown -R sambauser:sambagroup /shared`
        - `sudo chown -R sambauser:sambagroup /shared/samba1`
        - `getent passwd sambauser`
    - sambauser
        - `sudo smbpasswd -a sambauser`
        - `testparm`
    - firewall
        - `sudo firewall-cmd --permanent --add-service=samba\nsudo firewall-cmd --reload`
        - `sudo firewall-cmd --add-service=samba --zone=public --permanent`
        - `sudo firewall-cmd --add-service=samba`
        - `sudo firewall-cmd --reload`
        - `sudo firewall-config`
        - `sudo service firewalld status`
        - `sudo service firewalld stop`
    - folder config
        - `sudo chmod -R 777 /shared`
        - `sudo chmod -R g+w /shared`
        - `sudo chmod -R g+w /shared/samba1`
        - `sudo chmod -R nobody:nobody /shared/samba1`
        - `sudo chmod -R nobody:nobody /shared`
        - `sudo chcon -t samba_share_t /shared/samba1`


## Testing access
- test samba parameters
    - `testparm`

- use sambaclient to validate access
    - `smbclient -L 192.168.100.129 -U davstemp`
    - `smbclient -L 192.168.100.137 -U kraus`

## documentation

- [https://www.redhat.com/sysadmin/samba-windows-linux](https://www.redhat.com/sysadmin/samba-windows-linux)
- [iHmcV5vbuUg](iHmcV5vbuUg)






