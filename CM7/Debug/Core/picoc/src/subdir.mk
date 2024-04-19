################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/picoc/src/clibrary.c \
../Core/picoc/src/commands.c \
../Core/picoc/src/expression.c \
../Core/picoc/src/lex.c \
../Core/picoc/src/library_unix.c \
../Core/picoc/src/math_library.c \
../Core/picoc/src/parse.c \
../Core/picoc/src/picoc.c \
../Core/picoc/src/picoc_cmd_if.c \
../Core/picoc/src/picoc_heap.c \
../Core/picoc/src/platform.c \
../Core/picoc/src/platform_unix.c \
../Core/picoc/src/table.c \
../Core/picoc/src/type.c \
../Core/picoc/src/variable.c 

C_DEPS += \
./Core/picoc/src/clibrary.d \
./Core/picoc/src/commands.d \
./Core/picoc/src/expression.d \
./Core/picoc/src/lex.d \
./Core/picoc/src/library_unix.d \
./Core/picoc/src/math_library.d \
./Core/picoc/src/parse.d \
./Core/picoc/src/picoc.d \
./Core/picoc/src/picoc_cmd_if.d \
./Core/picoc/src/picoc_heap.d \
./Core/picoc/src/platform.d \
./Core/picoc/src/platform_unix.d \
./Core/picoc/src/table.d \
./Core/picoc/src/type.d \
./Core/picoc/src/variable.d 

OBJS += \
./Core/picoc/src/clibrary.o \
./Core/picoc/src/commands.o \
./Core/picoc/src/expression.o \
./Core/picoc/src/lex.o \
./Core/picoc/src/library_unix.o \
./Core/picoc/src/math_library.o \
./Core/picoc/src/parse.o \
./Core/picoc/src/picoc.o \
./Core/picoc/src/picoc_cmd_if.o \
./Core/picoc/src/picoc_heap.o \
./Core/picoc/src/platform.o \
./Core/picoc/src/platform_unix.o \
./Core/picoc/src/table.o \
./Core/picoc/src/type.o \
./Core/picoc/src/variable.o 


# Each subdirectory must supply rules for building sources it contributes
Core/picoc/src/%.o Core/picoc/src/%.su Core/picoc/src/%.cyclo: ../Core/picoc/src/%.c Core/picoc/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H747xx -DCORE_CM7 -DSTM32H7 -DUSE_USB_FS -DUSE_USB_HS -DUSE_FULL_LL_DRIVER -DLWIP_IPV4 -DLWIP_TCP -DTARGET_PORTENTA_H7 -D__VFP_FP__ -DWITH_USB_AUDIO -DNON_AUDIO_DEMO -DTIMING_DEBUG -c -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Core/Inc -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../Middlewares/Third_Party/LwIP/src/include -I../../Middlewares/Third_Party/LwIP/system -I../Core/BSP -I../Core/BSP/Components/lan8742 -I../Core/BSP/Components/vl53l5cx -I../Core/BSP/Components/vl53l5cx/modules -I../Core/BSP/Components/vl53l5cx/porting -I../Core/BSP/Components/53L5A1 -I../../Middlewares/Third_Party/FatFs/src -I../Core/picoc/inc -I../../CM7/VisionShield -I../../CM7/TOF_53L5A1 -I../../CM7/USB_A -I../../CM7/power_mngt -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-picoc-2f-src

clean-Core-2f-picoc-2f-src:
	-$(RM) ./Core/picoc/src/clibrary.cyclo ./Core/picoc/src/clibrary.d ./Core/picoc/src/clibrary.o ./Core/picoc/src/clibrary.su ./Core/picoc/src/commands.cyclo ./Core/picoc/src/commands.d ./Core/picoc/src/commands.o ./Core/picoc/src/commands.su ./Core/picoc/src/expression.cyclo ./Core/picoc/src/expression.d ./Core/picoc/src/expression.o ./Core/picoc/src/expression.su ./Core/picoc/src/lex.cyclo ./Core/picoc/src/lex.d ./Core/picoc/src/lex.o ./Core/picoc/src/lex.su ./Core/picoc/src/library_unix.cyclo ./Core/picoc/src/library_unix.d ./Core/picoc/src/library_unix.o ./Core/picoc/src/library_unix.su ./Core/picoc/src/math_library.cyclo ./Core/picoc/src/math_library.d ./Core/picoc/src/math_library.o ./Core/picoc/src/math_library.su ./Core/picoc/src/parse.cyclo ./Core/picoc/src/parse.d ./Core/picoc/src/parse.o ./Core/picoc/src/parse.su ./Core/picoc/src/picoc.cyclo ./Core/picoc/src/picoc.d ./Core/picoc/src/picoc.o ./Core/picoc/src/picoc.su ./Core/picoc/src/picoc_cmd_if.cyclo ./Core/picoc/src/picoc_cmd_if.d ./Core/picoc/src/picoc_cmd_if.o ./Core/picoc/src/picoc_cmd_if.su ./Core/picoc/src/picoc_heap.cyclo ./Core/picoc/src/picoc_heap.d ./Core/picoc/src/picoc_heap.o ./Core/picoc/src/picoc_heap.su ./Core/picoc/src/platform.cyclo ./Core/picoc/src/platform.d ./Core/picoc/src/platform.o ./Core/picoc/src/platform.su ./Core/picoc/src/platform_unix.cyclo ./Core/picoc/src/platform_unix.d ./Core/picoc/src/platform_unix.o ./Core/picoc/src/platform_unix.su ./Core/picoc/src/table.cyclo ./Core/picoc/src/table.d ./Core/picoc/src/table.o ./Core/picoc/src/table.su ./Core/picoc/src/type.cyclo ./Core/picoc/src/type.d ./Core/picoc/src/type.o ./Core/picoc/src/type.su ./Core/picoc/src/variable.cyclo ./Core/picoc/src/variable.d ./Core/picoc/src/variable.o ./Core/picoc/src/variable.su

.PHONY: clean-Core-2f-picoc-2f-src

