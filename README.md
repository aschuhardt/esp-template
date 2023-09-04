# ESP8266 + RTOS + WSL Template Project
This is a template project that I use for developing for the ESP8266 chip in Windows.  This project format is set up to run its configuration and build tasks in the user's default WSL instance.  See the \*.cmd scripts for how it operates.  Modify the commands in those scripts in order to suit your workstation.

## Requirements
This project template assumes the following about the system it's running on:

- WSL is installed and the default instance is running
- Your WSL instance (Debian 11 in my case) has the following:
	- CMake
	- The [ESP8266 RTOS SDK](https://docs.espressif.com/projects/esp8266-rtos-sdk/en/latest/index.html) and toolchain [installed](https://docs.espressif.com/projects/esp8266-rtos-sdk/en/latest/get-started/linux-setup.html) in `$HOME/esp`
- [usbipd-win](https://github.com/dorssel/usbipd-win) is [installed](https://learn.microsoft.com/en-us/windows/wsl/connect-usb)
	- It may take some experimentation to get this working on your system; I had to use a [different set of command-line arguments](https://github.com/dorssel/usbipd-win/issues/251#issuecomment-1704416339) on my workstation

## Usage
Clone the repo and its submodules with `git clone --recursive https://github.com/aschuhardt/esp-template#install-the-usbipd-win-project`

Run `config.cmd` from the project root to generate the SDK configuration file

Run `build.cmd` to compile the application

Run `monitor.cmd` to open the serial monitor

## Notice
Feel free to use this however you please.

This is something I set up for my own personal use.  I don't intend on providing support for it.