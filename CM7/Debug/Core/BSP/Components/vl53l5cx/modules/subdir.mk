################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/BSP/Components/vl53l5cx/modules/vl53l5cx_api.c \
../Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_detection_thresholds.c \
../Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_motion_indicator.c \
../Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_xtalk.c 

C_DEPS += \
./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_api.d \
./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_detection_thresholds.d \
./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_motion_indicator.d \
./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_xtalk.d 

OBJS += \
./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_api.o \
./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_detection_thresholds.o \
./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_motion_indicator.o \
./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_xtalk.o 


# Each subdirectory must supply rules for building sources it contributes
Core/BSP/Components/vl53l5cx/modules/%.o Core/BSP/Components/vl53l5cx/modules/%.su Core/BSP/Components/vl53l5cx/modules/%.cyclo: ../Core/BSP/Components/vl53l5cx/modules/%.c Core/BSP/Components/vl53l5cx/modules/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H747xx -DCORE_CM7 -DSTM32H7 -DUSE_USB_FS -DUSE_USB_HS -DUSE_FULL_LL_DRIVER -DLWIP_IPV4 -DLWIP_TCP -DTARGET_PORTENTA_H7 -D__VFP_FP__ -DWITH_USB_AUDIO -DNON_AUDIO_DEMO -DTIMING_DEBUG -c -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Core/Inc -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../Middlewares/Third_Party/LwIP/src/include -I../../Middlewares/Third_Party/LwIP/system -I../Core/BSP -I../Core/BSP/Components/lan8742 -I../Core/BSP/Components/vl53l5cx -I../Core/BSP/Components/vl53l5cx/modules -I../Core/BSP/Components/vl53l5cx/porting -I../Core/BSP/Components/53L5A1 -I../../Middlewares/Third_Party/FatFs/src -I../Core/picoc/inc -I../../CM7/VisionShield -I../../CM7/TOF_53L5A1 -I../../CM7/USB_A -I../../CM7/power_mngt -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-BSP-2f-Components-2f-vl53l5cx-2f-modules

clean-Core-2f-BSP-2f-Components-2f-vl53l5cx-2f-modules:
	-$(RM) ./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_api.cyclo ./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_api.d ./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_api.o ./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_api.su ./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_detection_thresholds.cyclo ./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_detection_thresholds.d ./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_detection_thresholds.o ./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_detection_thresholds.su ./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_motion_indicator.cyclo ./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_motion_indicator.d ./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_motion_indicator.o ./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_motion_indicator.su ./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_xtalk.cyclo ./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_xtalk.d ./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_xtalk.o ./Core/BSP/Components/vl53l5cx/modules/vl53l5cx_plugin_xtalk.su

.PHONY: clean-Core-2f-BSP-2f-Components-2f-vl53l5cx-2f-modules

