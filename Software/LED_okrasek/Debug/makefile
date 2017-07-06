################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Source/subdir.mk
-include .metadata/.plugins/org.eclipse.cdt.make.core/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
LED_okrasek.lss \

FLASH_IMAGE += \
LED_okrasek.hex \

SIZEDUMMY += \
sizedummy \


# All Target
all: LED_okrasek.elf secondary-outputs

# Tool invocations
LED_okrasek.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,LED_okrasek.map -mmcu=atmega328 -o "LED_okrasek.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

LED_okrasek.lss: LED_okrasek.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S LED_okrasek.elf  >"LED_okrasek.lss"
	@echo 'Finished building: $@'
	@echo ' '

LED_okrasek.hex: LED_okrasek.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex LED_okrasek.elf  "LED_okrasek.hex"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: LED_okrasek.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega328 LED_okrasek.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(ASM_DEPS)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(LSS)$(C_DEPS) LED_okrasek.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
