# open VPN Linux

# Install 

- Install
    - `sudo dnf install openvpn`
- get the file fro mprovider
    - `openvpn file.ovpn`
- provide user and passwrd
- to terminate connection:
    - `Ctrl + c`

- use a ovpn file to connect using terminal
  - `sudo openvpn --config /path/to/your/config.ovpn --daemon`
  - `sudo openvpn --config /path/to/your/config.ovpn`
- validate ip
  - `curl ifconfig.me`
- kill ovpn process (first check pids: `ps -A`)
  - `sudo killall openvpn`