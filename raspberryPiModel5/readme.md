# General Configuration in Raspberry Pi Model 5

# Raspberry Pi Tools

## geekpi n04 hat config

- on the rpi5, run: `sudo rpi-eeprom-config --edit` (need an sdCard and boot the actual device to run the command)
	- The actual config working is:
		```bash
			[all]
			BOOT_UART=1
			BOOT_ORDER=0xf416
			PCIE_PROBE=1
			PSU_MAX_CURRENT=5000

			POWER_OFF_ON_HALT=1
			WAKE_ON_GPIO=0

		```
	- Some others worked with this one:
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

- Edit file */config.txt* (in some cases the *config.txt* file might be in */boot/firmware/config.txt*)
	- This file is in the disk where the rpi OS in installed (in this case the nvme, could be the sd card)
	- Working configuration:
		```bash
		[all]
		dtparam=pciex1
		dtparam=pciex1_gen=3
		```

- validate
	- `lsblk`
	- `dmesg`
	- `lspci -vvv`

## no hdmi sound
- fix: [https://forums.raspberrypi.com/viewtopic.php?t=383491]
- steps
    - `sudo apt install pipewire` (it is not installed by default in the Rpi5
    - `sudo raspi-config` then 6, then A7 (System Tools and Audio Settings, select use pipewire)
    -  might be required to restart


## Documentation
- [https://forums.raspberrypi.com/viewtopic.php?t=357129](https://forums.raspberrypi.com/viewtopic.php?t=357129)
- [EXWu4SUsaY8]
- []()