################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/decadriver/deca_device.c \
../source/decadriver/deca_irqhandler.c \
../source/decadriver/deca_params_init.c 

OBJS += \
./source/decadriver/deca_device.o \
./source/decadriver/deca_irqhandler.o \
./source/decadriver/deca_params_init.o 

C_DEPS += \
./source/decadriver/deca_device.d \
./source/decadriver/deca_irqhandler.d \
./source/decadriver/deca_params_init.d 


# Each subdirectory must supply rules for building sources it contributes
source/decadriver/%.o: ../source/decadriver/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -Wall -Wextra -fgnu89-inline -DNDEBUG -DSTM32F051 -DUSE_STDPERIPH_DRIVER -DHSE_VALUE=8000000 -I"../header" -I"../system/header" -I"../system/header/cmsis" -I"../system/header/stm32f0-stdperiph" -I../header/platform -I../header/mLibs -I../header/decadriver -I../header/UAV -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


