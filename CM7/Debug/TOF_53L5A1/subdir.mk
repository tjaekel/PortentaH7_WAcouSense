################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../TOF_53L5A1/app_tof.c \
../TOF_53L5A1/app_tof_pin_conf.c 

C_DEPS += \
./TOF_53L5A1/app_tof.d \
./TOF_53L5A1/app_tof_pin_conf.d 

OBJS += \
./TOF_53L5A1/app_tof.o \
./TOF_53L5A1/app_tof_pin_conf.o 


# Each subdirectory must supply rules for building sources it contributes
TOF_53L5A1/%.o TOF_53L5A1/%.su TOF_53L5A1/%.cyclo: ../TOF_53L5A1/%.c TOF_53L5A1/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H747xx -DCORE_CM7 -DSTM32H7 -DUSE_USB_FS -DUSE_USB_HS -DUSE_FULL_LL_DRIVER -DLWIP_IPV4 -DLWIP_TCP -DTARGET_PORTENTA_H7 -D__VFP_FP__ -DWITH_USB_AUDIO -DNON_AUDIO_DEMO -DTIMING_DEBUG -c -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Core/Inc -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../Middlewares/Third_Party/LwIP/src/include -I../../Middlewares/Third_Party/LwIP/system -I../Core/BSP -I../Core/BSP/Components/lan8742 -I../Core/BSP/Components/vl53l5cx -I../Core/BSP/Components/vl53l5cx/modules -I../Core/BSP/Components/vl53l5cx/porting -I../Core/BSP/Components/53L5A1 -I../../Middlewares/Third_Party/FatFs/src -I../Core/picoc/inc -I../../CM7/VisionShield -I../../CM7/TOF_53L5A1 -I../../CM7/USB_A -I../../CM7/power_mngt -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-TOF_53L5A1

clean-TOF_53L5A1:
	-$(RM) ./TOF_53L5A1/app_tof.cyclo ./TOF_53L5A1/app_tof.d ./TOF_53L5A1/app_tof.o ./TOF_53L5A1/app_tof.su ./TOF_53L5A1/app_tof_pin_conf.cyclo ./TOF_53L5A1/app_tof_pin_conf.d ./TOF_53L5A1/app_tof_pin_conf.o ./TOF_53L5A1/app_tof_pin_conf.su

.PHONY: clean-TOF_53L5A1

