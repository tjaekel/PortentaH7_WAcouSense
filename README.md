# PortentaH7_WAcouSense
 Portenta H7 PDM MIC, IMU sensor and TOF sensor

## STM32CubeIDE project
This project is __not__ an _Arduino/mbed sketch_. It is native C-code (not C++), as a STM32CubeIDE project. It uses the STM HAL drivers, CMSIS FreeRTOS.

## Project Purpose
- use the PDM MICs in order to get voice/audio via network to a host PC
- it adds an IMU (9-DOF sensor), just prepared to access via I2C (optional, enabled but not used)
- it adds a TOF sensor, as Sparkfun VL53L5CX, for 8x8 distance measurment

## HW Requirements
- Portenta H7 MCU module
- Portenta H7 VisionShield or Breakout Board: using ETH connection and PDM MICs on this board
  The VisionShield provides two PDM MICs (stereo)
- Breakout Board: using ETH, PDM MICs, IMU and USB-A connection
- with Breakout Board: add Adafruit PDM MIC ("Adafruit PDM MEMS") and IMU as "Adafruit LSM9DS1" (via flying wires, optional)
- SparkFun VL53L5CX TOF sensor (connected via I2C flying wires)
- using the User USB for PDM MIC to host nees an USB-A to USB-A cable, but only on breakout board

## Features of the project
- it provides an UART shell via the USB-C connection, see "help" command there - the UART is used to control the MCU, to set
  parameters, to enable or disable features, the main data (audio and sensors) are sent via network
- running FreeRTOS
- Network support: ETH (not WiFi), for web server running on MCU, UDP transfer, e.g. Audio via UDP, network commands to do SPI, I2C,
  use a Web Browser or Python network script to control the MCU (in parallel to UART as USB VCP)
- using SDRAM: used for Pico-C scripts
- Pico-C: a C-code interpreter (no compiler needed, write C-code scripts)
- PDM MICs for Audio to host (as VBAN, VB-Audio Voicemeeter) - via ETH network, run a Python script to get the PDM MIC audio on a host PC
- two PWM channels for RC model servos
- QSPI flash: used for man pages
- SPI and I2C peripherals
- USB-A on Breakout Board (for Audio, prepared for USB as external memory device (noat active), a second VCP UART)
- PDM MIC(s) on Breakout board (or on Vision Shield) - use Pico-C to initialize and read IMU data (without any C-compiler needed)
- send PDM MIC audio via VBAN to a host PC or use Usedr USB on breakout board
- it gets the TOF sensor data and sends it via UDP to a host PC (use Python scripts to post-process)
- several signal generators (sine wave): played as PCM (without PDM), as PDM (instead of MIC), recorded sine waves via MICs, record one via MIC and replay

## Full Open Source
The project has all source code files, including the PMIC configuration, INT vectors, drivers, startup - not using any Arduino/mbed library.

## Without or with Arduino Bootloader
Project (linker script) can be configured to use an external debugger and utilize the entire Flash ROM space (overwrite the Bootloader).
Possible also to keep the Bootloader and flash MCU FW via command line.

See the Linker Script if with Arduino Bootloader (to flash FW)) or without (ST-LINK adaopter on Breakout Board is needed). See README.txt in BIN directrory (providing the CM7 FW file, CM4 is not used yet).

The provided BIN file in directory is intended to be flashed with the Arduino "dfu-util.exe": see the README.txt in bin directory. The Arduino bootloader must be already in MCU flash (at 0x08000000). The user BIN file starts at 0x08040000.

## Pico-C integrated
A C-code interpreter, no need to compile: enter C-code on UART command line or write C-code scripts, stored and read from SD card. Very convenient to extend system by writing C-programs without any compiler needed or to re-flash the MCU.

## TOF Sensor LIB
The CubeMX X-CUBE-TOF1 for the TOF sensor is integreated (and modified to  used on a STM32H7 MCU, not intendend originally).
See more details here: https://www.st.com/en/ecosystems/x-cube-tof1.html

## Python scripts
I add demo Python scripts, e.g. to get the PDM MIC audio and the TOF sensor data, via network (using UDP sockets).
There are also Python and Matlab script for generating a PDM signal.

