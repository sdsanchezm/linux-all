# Networking configuration in Raspberry Pi Model 3B

## Install tools

- `sudo apt install wireless-tools wpasupplicant`

## Scan

- `sudo ip link set wlan0 up`
- `sudo iwlist wlan0 scan`

## Connect
- scan
	- sudo iwlist wlan0 scan

- SSID and pashphr configuration file
	- `sudo nano /etc/wpa_supplicant/wpa_supplicant.conf`
	- ```
		ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
		update_config=1
		country=CA

		network={
			ssid="Network-Name B57"
			psk="This~Is+A=Password"
			key_mgmt=WPA-PSK
		}
	```

- restart the interface 
	- `sudo ip link set wlan0 down`
	- `sudo ip link set wlan0 up`
- or
	- sudo ifconfig wlan0 down
	- sudo ifconfig wlan0 up

- restart NetworkManager and network
	- `sudo systemctl restart NetworkManager`
	- `sudo systemctl restart networking`

- Check drivers
	- `wpa_supplicant -h`

- Load the wpa_supplicant configuration
	- sudo wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf 
- if required:
	- `sudo rm /var/run/wpa_supplicant/wlan0`
- Note: for most model 3B, it is required to remove the existing `wlan0`;

## Verify

- `sudo dhclient wlan0`
- `ip addr show wlan0`

## Misc

- stop wpa_supplicant
	- `sudo killall wpa_supplicant`
- release ip
	- `sudo dhclient -r wlan0`
- interface down
	- `sudo ip link set wlan0 down`



