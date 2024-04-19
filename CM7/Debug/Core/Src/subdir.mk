################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Core/Src/test.cpp 

C_SRCS += \
../Core/Src/ADC3_temp.c \
../Core/Src/CHIP_cmd.c \
../Core/Src/GPIO_user.c \
../Core/Src/I2C3_user.c \
../Core/Src/I2C_PMIC.c \
../Core/Src/ITM_print_log.c \
../Core/Src/MEM_Pool.c \
../Core/Src/PWM_servo.c \
../Core/Src/QSPI.c \
../Core/Src/SDCard.c \
../Core/Src/SDRAM.c \
../Core/Src/SPI.c \
../Core/Src/TFTP.c \
../Core/Src/VCP_UART.c \
../Core/Src/app_ethernet.c \
../Core/Src/bsp_driver_sd.c \
../Core/Src/cmd_dec.c \
../Core/Src/debug_sys.c \
../Core/Src/ethernetif.c \
../Core/Src/httpserver_netconn.c \
../Core/Src/lwip.c \
../Core/Src/main.c \
../Core/Src/sd_diskio.c \
../Core/Src/stm32h7xx_hal_msp.c \
../Core/Src/stm32h7xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/syserr.c \
../Core/Src/system_clock.c \
../Core/Src/usbd_cdc_if.c \
../Core/Src/usbd_conf.c \
../Core/Src/usbd_desc_cdc.c 

C_DEPS += \
./Core/Src/ADC3_temp.d \
./Core/Src/CHIP_cmd.d \
./Core/Src/GPIO_user.d \
./Core/Src/I2C3_user.d \
./Core/Src/I2C_PMIC.d \
./Core/Src/ITM_print_log.d \
./Core/Src/MEM_Pool.d \
./Core/Src/PWM_servo.d \
./Core/Src/QSPI.d \
./Core/Src/SDCard.d \
./Core/Src/SDRAM.d \
./Core/Src/SPI.d \
./Core/Src/TFTP.d \
./Core/Src/VCP_UART.d \
./Core/Src/app_ethernet.d \
./Core/Src/bsp_driver_sd.d \
./Core/Src/cmd_dec.d \
./Core/Src/debug_sys.d \
./Core/Src/ethernetif.d \
./Core/Src/httpserver_netconn.d \
./Core/Src/lwip.d \
./Core/Src/main.d \
./Core/Src/sd_diskio.d \
./Core/Src/stm32h7xx_hal_msp.d \
./Core/Src/stm32h7xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/syserr.d \
./Core/Src/system_clock.d \
./Core/Src/usbd_cdc_if.d \
./Core/Src/usbd_conf.d \
./Core/Src/usbd_desc_cdc.d 

OBJS += \
./Core/Src/ADC3_temp.o \
./Core/Src/CHIP_cmd.o \
./Core/Src/GPIO_user.o \
./Core/Src/I2C3_user.o \
./Core/Src/I2C_PMIC.o \
./Core/Src/ITM_print_log.o \
./Core/Src/MEM_Pool.o \
./Core/Src/PWM_servo.o \
./Core/Src/QSPI.o \
./Core/Src/SDCard.o \
./Core/Src/SDRAM.o \
./Core/Src/SPI.o \
./Core/Src/TFTP.o \
./Core/Src/VCP_UART.o \
./Core/Src/app_ethernet.o \
./Core/Src/bsp_driver_sd.o \
./Core/Src/cmd_dec.o \
./Core/Src/debug_sys.o \
./Core/Src/ethernetif.o \
./Core/Src/httpserver_netconn.o \
./Core/Src/lwip.o \
./Core/Src/main.o \
./Core/Src/sd_diskio.o \
./Core/Src/stm32h7xx_hal_msp.o \
./Core/Src/stm32h7xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/syserr.o \
./Core/Src/system_clock.o \
./Core/Src/test.o \
./Core/Src/usbd_cdc_if.o \
./Core/Src/usbd_conf.o \
./Core/Src/usbd_desc_cdc.o 

CPP_DEPS += \
./Core/Src/test.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H747xx -DCORE_CM7 -DSTM32H7 -DUSE_USB_FS -DUSE_USB_HS -DUSE_FULL_LL_DRIVER -DLWIP_IPV4 -DLWIP_TCP -DTARGET_PORTENTA_H7 -D__VFP_FP__ -DWITH_USB_AUDIO -DNON_AUDIO_DEMO -DTIMING_DEBUG -c -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Core/Inc -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../Middlewares/Third_Party/LwIP/src/include -I../../Middlewares/Third_Party/LwIP/system -I../Core/BSP -I../Core/BSP/Components/lan8742 -I../Core/BSP/Components/vl53l5cx -I../Core/BSP/Components/vl53l5cx/modules -I../Core/BSP/Components/vl53l5cx/porting -I../Core/BSP/Components/53L5A1 -I../../Middlewares/Third_Party/FatFs/src -I../Core/picoc/inc -I../../CM7/VisionShield -I../../CM7/TOF_53L5A1 -I../../CM7/USB_A -I../../CM7/power_mngt -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.cpp Core/Src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H747xx -DCORE_CM7 -DSTM32H7 -DUSE_USB_HS -DUSE_FULL_LL_DRIVER -DLWIP_IPV4 -DLWIP_TCP -DTARGET_PORTENTA_H7 -c -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Core/Inc -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/inc -I../../Middlewares/Third_Party/LwIP/src/include -I../../Middlewares/Third_Party/LwIP/system -I../Core/BSP/Components/lan8742 -O3 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/ADC3_temp.cyclo ./Core/Src/ADC3_temp.d ./Core/Src/ADC3_temp.o ./Core/Src/ADC3_temp.su ./Core/Src/CHIP_cmd.cyclo ./Core/Src/CHIP_cmd.d ./Core/Src/CHIP_cmd.o ./Core/Src/CHIP_cmd.su ./Core/Src/GPIO_user.cyclo ./Core/Src/GPIO_user.d ./Core/Src/GPIO_user.o ./Core/Src/GPIO_user.su ./Core/Src/I2C3_user.cyclo ./Core/Src/I2C3_user.d ./Core/Src/I2C3_user.o ./Core/Src/I2C3_user.su ./Core/Src/I2C_PMIC.cyclo ./Core/Src/I2C_PMIC.d ./Core/Src/I2C_PMIC.o ./Core/Src/I2C_PMIC.su ./Core/Src/ITM_print_log.cyclo ./Core/Src/ITM_print_log.d ./Core/Src/ITM_print_log.o ./Core/Src/ITM_print_log.su ./Core/Src/MEM_Pool.cyclo ./Core/Src/MEM_Pool.d ./Core/Src/MEM_Pool.o ./Core/Src/MEM_Pool.su ./Core/Src/PWM_servo.cyclo ./Core/Src/PWM_servo.d ./Core/Src/PWM_servo.o ./Core/Src/PWM_servo.su ./Core/Src/QSPI.cyclo ./Core/Src/QSPI.d ./Core/Src/QSPI.o ./Core/Src/QSPI.su ./Core/Src/SDCard.cyclo ./Core/Src/SDCard.d ./Core/Src/SDCard.o ./Core/Src/SDCard.su ./Core/Src/SDRAM.cyclo ./Core/Src/SDRAM.d ./Core/Src/SDRAM.o ./Core/Src/SDRAM.su ./Core/Src/SPI.cyclo ./Core/Src/SPI.d ./Core/Src/SPI.o ./Core/Src/SPI.su ./Core/Src/TFTP.cyclo ./Core/Src/TFTP.d ./Core/Src/TFTP.o ./Core/Src/TFTP.su ./Core/Src/VCP_UART.cyclo ./Core/Src/VCP_UART.d ./Core/Src/VCP_UART.o ./Core/Src/VCP_UART.su ./Core/Src/app_ethernet.cyclo ./Core/Src/app_ethernet.d ./Core/Src/app_ethernet.o ./Core/Src/app_ethernet.su ./Core/Src/bsp_driver_sd.cyclo ./Core/Src/bsp_driver_sd.d ./Core/Src/bsp_driver_sd.o ./Core/Src/bsp_driver_sd.su ./Core/Src/cmd_dec.cyclo ./Core/Src/cmd_dec.d ./Core/Src/cmd_dec.o ./Core/Src/cmd_dec.su ./Core/Src/debug_sys.cyclo ./Core/Src/debug_sys.d ./Core/Src/debug_sys.o ./Core/Src/debug_sys.su ./Core/Src/ethernetif.cyclo ./Core/Src/ethernetif.d ./Core/Src/ethernetif.o ./Core/Src/ethernetif.su ./Core/Src/httpserver_netconn.cyclo ./Core/Src/httpserver_netconn.d ./Core/Src/httpserver_netconn.o ./Core/Src/httpserver_netconn.su ./Core/Src/lwip.cyclo ./Core/Src/lwip.d ./Core/Src/lwip.o ./Core/Src/lwip.su ./Core/Src/main.cyclo ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/sd_diskio.cyclo ./Core/Src/sd_diskio.d ./Core/Src/sd_diskio.o ./Core/Src/sd_diskio.su ./Core/Src/stm32h7xx_hal_msp.cyclo ./Core/Src/stm32h7xx_hal_msp.d ./Core/Src/stm32h7xx_hal_msp.o ./Core/Src/stm32h7xx_hal_msp.su ./Core/Src/stm32h7xx_it.cyclo ./Core/Src/stm32h7xx_it.d ./Core/Src/stm32h7xx_it.o ./Core/Src/stm32h7xx_it.su ./Core/Src/syscalls.cyclo ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/syserr.cyclo ./Core/Src/syserr.d ./Core/Src/syserr.o ./Core/Src/syserr.su ./Core/Src/system_clock.cyclo ./Core/Src/system_clock.d ./Core/Src/system_clock.o ./Core/Src/system_clock.su ./Core/Src/test.cyclo ./Core/Src/test.d ./Core/Src/test.o ./Core/Src/test.su ./Core/Src/usbd_cdc_if.cyclo ./Core/Src/usbd_cdc_if.d ./Core/Src/usbd_cdc_if.o ./Core/Src/usbd_cdc_if.su ./Core/Src/usbd_conf.cyclo ./Core/Src/usbd_conf.d ./Core/Src/usbd_conf.o ./Core/Src/usbd_conf.su ./Core/Src/usbd_desc_cdc.cyclo ./Core/Src/usbd_desc_cdc.d ./Core/Src/usbd_desc_cdc.o ./Core/Src/usbd_desc_cdc.su

.PHONY: clean-Core-2f-Src

