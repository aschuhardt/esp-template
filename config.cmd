@ECHO OFF

wsl --cd %CD%^
 export PATH=$PATH:$HOME/esp/xtensa-lx106-elf/bin ^&^& export IDF_PATH=$HOME/esp/ESP8266_RTOS_SDK ^&^& make menuconfig