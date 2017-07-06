/*
 * hardware.h
 *
 *  Created on: 19. dec. 2016
 *      Author: Urban Rupnik
 *      City: Zadlog 42
 */
#include <avr/io.h>

#ifndef _HARDWARE_H_
#define _HARDWARE_H_



/*******************************
 *************LEDICE************
 *******************************/
#define LED0 PB7
#define LED1 PD3
#define LED2 PC2
#define LED3 PC1
#define LED4 PB0
#define LED5 PB2
#define LED6 PB1
#define LED7 PB6

#define LED0_PORT PORTB
#define LED1_PORT PORTD
#define LED2_PORT PORTC
#define LED3_PORT PORTC
#define LED4_PORT PORTB
#define LED5_PORT PORTB
#define LED6_PORT PORTB
#define LED7_PORT PORTB


#define LED0_DIR_PORT DDRB
#define LED1_DIR_PORT DDRD
#define LED2_DIR_PORT DDRC
#define LED3_DIR_PORT DDRC
#define LED4_DIR_PORT DDRB
#define LED5_DIR_PORT DDRB
#define LED6_DIR_PORT DDRB
#define LED7_DIR_PORT DDRB

#define LED5_PWM OC1B
#define LED5_PWM_CTR_REG TCCR1A

/*******************************
 ************ZVOČNIK************
 *******************************/
#define AUDIO PD6
#define AUDIO_PORT	PORTD
#define AUDIO_DIR_PORT	DDRD
#define AUDIO_PWM



/*******************************
 *************IR LED************
 *******************************/
#define IR_LED PD5
#define IR_LED_PORT	PORTD
#define IR_LED_DIR_PORT	DDRD



/*******************************
 ***********IR RECEIVER*********
 *******************************/

#define IR_REC PD7
#define IR_REC_PORT	PORTD
#define IR_REC_DIR_PORT	DDRD
#define IR_REC_VALUE_REG PIND
#define IR_REC_PCINT PCINT23

/*******************************
 *************BUTTON************
 *******************************/
#define BTN PC0
#define BTN_PORT PORTC
#define BTN_DIR_PORT DDRC
#define BTN_VALUE_REG PINC
#define BTN_PCINT PCINT8


#endif
