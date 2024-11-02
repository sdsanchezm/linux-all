# General Configuration in Raspberry Pi Model 5

## Raspberry Pi Tools

## geekpi n04 hat config

- `sudo rpi-eeprom-config --edit`
	```bash
	[all]
	BOOT_UART=1
	POWER_OFF_ON_HALT=0
	BOOT_ORDER=0xf416
	PSU_MAX_CURRENT=5000
	```
	- doc1: [https://www.jeffgeerling.com/blog/2023/nvme-ssd-boot-raspberry-pi-5]
		- potentially a solution on `sudo rpi-eeprom-config --edit`
			```bash
			# Add the following line if using a non-HAT+ adapter:
			PCIE_PROBE=1
			```

- file */boot/firmware/config.txt*
	```bash
	[all]
	dtparam=pciex1
	dtparam=pciex1_gen=3
	```

- validate
	- `lsblk`
	- `dmesg`
	- `lspci -vvv`

## Documentation
- [https://forums.raspberrypi.com/viewtopic.php?t=357129](https://forums.raspberrypi.com/viewtopic.php?t=357129)
- [EXWu4SUsaY8](EXWu4SUsaY8)
- []()