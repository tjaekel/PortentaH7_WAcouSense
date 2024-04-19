################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/LwIP/src/apps/http/altcp_proxyconnect.c \
../Middlewares/Third_Party/LwIP/src/apps/http/fs.c \
../Middlewares/Third_Party/LwIP/src/apps/http/http_client.c \
../Middlewares/Third_Party/LwIP/src/apps/http/httpd.c 

C_DEPS += \
./Middlewares/Third_Party/LwIP/src/apps/http/altcp_proxyconnect.d \
./Middlewares/Third_Party/LwIP/src/apps/http/fs.d \
./Middlewares/Third_Party/LwIP/src/apps/http/http_client.d \
./Middlewares/Third_Party/LwIP/src/apps/http/httpd.d 

OBJS += \
./Middlewares/Third_Party/LwIP/src/apps/http/altcp_proxyconnect.o \
./Middlewares/Third_Party/LwIP/src/apps/http/fs.o \
./Middlewares/Third_Party/LwIP/src/apps/http/http_client.o \
./Middlewares/Third_Party/LwIP/src/apps/http/httpd.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/LwIP/src/apps/http/%.o Middlewares/Third_Party/LwIP/src/apps/http/%.su Middlewares/Third_Party/LwIP/src/apps/http/%.cyclo: ../Middlewares/Third_Party/LwIP/src/apps/http/%.c Middlewares/Third_Party/LwIP/src/apps/http/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H747xx -DCORE_CM7 -DSTM32H7 -DUSE_USB_FS -DUSE_USB_HS -DUSE_FULL_LL_DRIVER -DLWIP_IPV4 -DLWIP_TCP -DTARGET_PORTENTA_H7 -D__VFP_FP__ -DWITH_USB_AUDIO -DNON_AUDIO_DEMO -DTIMING_DEBUG -c -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Core/Inc -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../Middlewares/Third_Party/LwIP/src/include -I../../Middlewares/Third_Party/LwIP/system -I../Core/BSP -I../Core/BSP/Components/lan8742 -I../Core/BSP/Components/vl53l5cx -I../Core/BSP/Components/vl53l5cx/modules -I../Core/BSP/Components/vl53l5cx/porting -I../Core/BSP/Components/53L5A1 -I../../Middlewares/Third_Party/FatFs/src -I../Core/picoc/inc -I../../CM7/VisionShield -I../../CM7/TOF_53L5A1 -I../../CM7/USB_A -I../../CM7/power_mngt -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-LwIP-2f-src-2f-apps-2f-http

clean-Middlewares-2f-Third_Party-2f-LwIP-2f-src-2f-apps-2f-http:
	-$(RM) ./Middlewares/Third_Party/LwIP/src/apps/http/altcp_proxyconnect.cyclo ./Middlewares/Third_Party/LwIP/src/apps/http/altcp_proxyconnect.d ./Middlewares/Third_Party/LwIP/src/apps/http/altcp_proxyconnect.o ./Middlewares/Third_Party/LwIP/src/apps/http/altcp_proxyconnect.su ./Middlewares/Third_Party/LwIP/src/apps/http/fs.cyclo ./Middlewares/Third_Party/LwIP/src/apps/http/fs.d ./Middlewares/Third_Party/LwIP/src/apps/http/fs.o ./Middlewares/Third_Party/LwIP/src/apps/http/fs.su ./Middlewares/Third_Party/LwIP/src/apps/http/http_client.cyclo ./Middlewares/Third_Party/LwIP/src/apps/http/http_client.d ./Middlewares/Third_Party/LwIP/src/apps/http/http_client.o ./Middlewares/Third_Party/LwIP/src/apps/http/http_client.su ./Middlewares/Third_Party/LwIP/src/apps/http/httpd.cyclo ./Middlewares/Third_Party/LwIP/src/apps/http/httpd.d ./Middlewares/Third_Party/LwIP/src/apps/http/httpd.o ./Middlewares/Third_Party/LwIP/src/apps/http/httpd.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-LwIP-2f-src-2f-apps-2f-http

