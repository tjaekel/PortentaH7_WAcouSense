# PortentaH7_WAcouSense
 Portenta H7 PDM MIC and IMU sensor

## STM32CubeIDE project
This project is __not__ an _Arduino/mbed sketch_. It is native C-code (not C++), as a STM32CubeIDE project. It uses the STM HAL drivers, CMSIS FreeRTOS.

## Project Purpose
- use the PDM MICs in order to get voice/audio via network to a host PC
- it adds an IMU (9-DOF sensor), just prepared to access via I2C

## HW Requirements
- Portenta H7 MCU module
- Portenta H7 VisionShield or Breakout Board: using ETH connection and PDM MICs on this board
  The VisionShield provides two PDM MICs (stereo)
- Breakout Board: using ETH, PDM MICs, IMU and USB-A connection
- with Breakout Board: add Adafruit PDM MIC ("Adafruit PDM MEMS") and IMU as "Adafruit LSM9DS1" (via flying wires)

## Features of the project
- it provides an UART shell via the USB-C connection, see "help" command there
- running FreeRTOS
- Network support: ETH (not WiFi), for web server running on MCU, UDP transfer, e.g. Audio via UDP, network commands to do SPI, I2C
- using SDRAM: used for Pico-C scripts
- Pico-C: a C-code interpreter (no compiler needed, write C-code scripts)
- PDM MICs for Audio to host (as VBAN, VB-Audio Voicemeeter) - via ETH network
- two PWM channels for RC model servos
- QSPI flash: used for man pages
- SPI and I2C peripherals
- USB-A on Breakout Board (for Audio, prepared for USB as external memory device, a second VCP UART)
- PDM MIC(s) on Breakout board (or on Vision Shield) - use Pico-C to initialize and read IMU data (wwithout any C-compiler needed)
- send PDM MIC audio via VBAN to a host PC

## Full Open Source
The project has all source code files, including the PMIC configuration, INT vectors, drivers, startup - not using any Arduino/mbed library.

## Without or with Arduino Bootloader
Project (linker script) can be configured to use an external debugger and utilize the entire Flash ROM space (overwrite the Bootloader).
Possible also to keep the Bootloader and flash MCU FW via command line.

See the Linker Script if with Arduino Bootloader (to flash FW)) or without (ST-LINK adaopter on Breakout Board is needed). See README.txt in BIN directrory (providing the CM7 FW file, CM4 is not used yet).

The provided BIN file in directory is intended to be flashed with the Arduino "dfu-util.exe": see the README.txt in bin directory. The Arduino bootloader must be already in MCU flash (at 0x08000000). The user BIN file starts at 0x08040000.

## Pico-C integrated
A C-code interpreter, no need to compile: enter C-code on UART command line or write C-code scripts, stored and read from SD card. Very convenient to extend system by writing C-programs without any compiler needed or to re-flash the MCU.

