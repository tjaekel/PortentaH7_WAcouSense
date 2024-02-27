Flash Portenta-H7 MCU with Arduino flash loader (it must be in MCU flash).
Press the reset button quckly twice:
Do in Windows Command window (copy and paste the command line):
dfu-util -a 0 -d 2341:035b --dfuse-address=0x08040000:leave -D PortentaH7_WAcouSense_CM7.bin
