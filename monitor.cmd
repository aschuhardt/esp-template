@ECHO OFF

:: attach the serial debugger and wait for WSL to register it 
usbipd wsl attach --busid 1-6
timeout 2 > NUL

:: udev "doesn't support containers" for whatever reason, so we have to do this by hand
wsl -u root chmod 0666 /dev/ttyUSB0

wsl --cd %CD%^
 export PATH=$PATH:$HOME/esp/xtensa-lx106-elf/bin ^&^& export IDF_PATH=$HOME/esp/ESP8266_RTOS_SDK ^&^& make monitor

:: detach the debugger
usbipd wsl detach --busid 1-6