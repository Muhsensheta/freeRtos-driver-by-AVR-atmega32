################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FRTOS.c/DIO_prg.c \
../FRTOS.c/RTOS_Task1_LedIntro.c \
../FRTOS.c/croutine.c \
../FRTOS.c/heap_1.c \
../FRTOS.c/list.c \
../FRTOS.c/port.c \
../FRTOS.c/queue.c \
../FRTOS.c/tasks.c \
../FRTOS.c/timers.c 

OBJS += \
./FRTOS.c/DIO_prg.o \
./FRTOS.c/RTOS_Task1_LedIntro.o \
./FRTOS.c/croutine.o \
./FRTOS.c/heap_1.o \
./FRTOS.c/list.o \
./FRTOS.c/port.o \
./FRTOS.c/queue.o \
./FRTOS.c/tasks.o \
./FRTOS.c/timers.o 

C_DEPS += \
./FRTOS.c/DIO_prg.d \
./FRTOS.c/RTOS_Task1_LedIntro.d \
./FRTOS.c/croutine.d \
./FRTOS.c/heap_1.d \
./FRTOS.c/list.d \
./FRTOS.c/port.d \
./FRTOS.c/queue.d \
./FRTOS.c/tasks.d \
./FRTOS.c/timers.d 


# Each subdirectory must supply rules for building sources it contributes
FRTOS.c/%.o: ../FRTOS.c/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"F:\communication engineering\embedded system\nti\avr interfaces\eclipse_ex\FreeRtos_Avr\FRTOS.c" -I"F:\communication engineering\embedded system\nti\avr interfaces\eclipse_ex\FreeRtos_Avr\FRTOS.h" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


