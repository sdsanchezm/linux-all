
# Samba configuration in Fedora Linux 39

## Install 
- `sudo apt update`
-   ```
    sudo apt install samba, samba-usershares
    ```

-   ```
    sudo systemctl status smb
    ```
- `sudo systemctl stop smb`

- File `sudo nvim /etc/samba/smb.conf`
    ```
    [global]
    server string = File Server
    workgroup = SNTT
    security = user
    map to guest = Bad User
    name resolve order = bcast host
    ```

- must install `samba-usershares` to make the below file works
- `include = /etc/samba/usershares.conf`

- Create file (in Fedora it is auto created)
- `sudo vim /etc/samba/usershares.conf`

- This is the content of the file `usershares.conf`

- File `sudo nvim /etc/samba/usershares.conf`
    ```
    [Public Files]
    path = /home/kk1/toshare/public_files
    force user = sambauser
    force group = sambagroup
    create mask = 0664
    force create mode = 0664
    directory mask = 0775
    force directory mode = 0775
    public = yes
    writable = yes
    
    [Protected Files]
    path = /home/kk1/toshare/private_files
    force user = sambauser
    force group = sambagroup
    create mask = 0664
    force create mode = 0664
    directory mask = 0775
    force directory mode = 0775
    public = yes
    writable = no
    ```

## Create samba user and group

- Add user and group for samba usage
    - `sudo groupadd --system sambagroup`
    - `sudo useradd --system --no-create-home --group sambagroup -s /bin/false sambauser`

- validate if user sambauser was created and registered ok
    - `cat /etc/passwd`

- Create shared directories

    - `sudo mkdir -p /home/kk1/toshare/public_files`
    - `sudo mkdir /home/kk1/toshare/private_files`

- Change ownership/permissions

    - `sudo chown -R sambauser:sambagroup /home/kk1/toshare`
    - `sudo chmod -R g+w /home/kk1/toshare`

## documentation

- [https://www.redhat.com/sysadmin/samba-windows-linux](link)






