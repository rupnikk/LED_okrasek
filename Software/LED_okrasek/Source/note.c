/*
 * note.c
 *
 *  Created on: 3. jan. 2017
 *      Author: Urban Rupnik
 */

#include <avr/io.h>
#include <util/delay.h>
#include "stdint.h"
#include "bittop.h"
#include "pwm.h"
#include "note.h"
#include "timer.h"


/*******************************
 **********FUNKCIJE*************
 *******************************/
//void playnote(uint32_t prescaler, uint32_t note, uint32_t time){
//	PWM0presc(prescaler);
//	TCNT0=0;
//	OCR0A=note;
//	delay_ms(time);
//	TIMER0_STOP;
//	delay_ms(10);
//}

void playnote(uint16_t prescaler, uint16_t note){
	PWM0presc(prescaler);
	TCNT0=0;
	OCR0A=note;
	//delay_cnt=0;
	//TCNT2=0;
	//delay_ms(time);
	//TIMER0_STOP;
	//delay_ms(10);
}

