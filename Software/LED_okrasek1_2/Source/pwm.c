/*
 * pwm.c
 *
 *  Created on: 19. dec. 2016
 *      Author: Urban Rupnik
 *      City: Zadlog 42
 */


#include <avr/io.h>
#include "stdint.h"
#include "bittop.h"
#include "pwm.h"
#include "timer.h"

/*******************************
 ***KONFIGURACIJSKA FUNKCIJA****
 *******************************/
void PWMCfg(){
	FASTPWM_OCRA;
	TOGGLE_OC0A;
	TIMER0_STOP;



	//TIMER1_STOP;
//	TOGGLE_OC1A;
//	FASTPWM_OC1A;
//	PWM1_8_PRESC;
//	SETBIT(TIMSK1, OCIE1A);

}

/*******************************
 ************FUNKCIJE***********
 *******************************/
int PWM0presc(uint16_t presc){
	uint8_t out=0;
	switch(presc){
		case 1:
			PWM0_NO_PRESC;
			out=1;
			break;
		case 8:
			PWM0_8_PRESC;
			out=1;
			break;
		case 64:
			PWM0_64_PRESC;
			out=1;
			break;
		case 256:
			PWM0_256_PRESC;
			out=1;
			break;
		case 1024:
			PWM0_1024_PRESC;
			out=1;
			break;
		default:
			out=0;
	}
	return out;
}



