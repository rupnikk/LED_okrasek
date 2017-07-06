################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Source/blink.c \
../Source/int.c \
../Source/main.c \
../Source/note.c \
../Source/pesmi.c \
../Source/pwm.c \
../Source/timer.c 

OBJS += \
./Source/blink.o \
./Source/int.o \
./Source/main.o \
./Source/note.o \
./Source/pesmi.o \
./Source/pwm.o \
./Source/timer.o 

C_DEPS += \
./Source/blink.d \
./Source/int.d \
./Source/main.d \
./Source/note.d \
./Source/pesmi.d \
./Source/pwm.d \
./Source/timer.d 


# Each subdirectory must supply rules for building sources it contributes
Source/%.o: ../Source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O2 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega328 -DF_CPU=8000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


