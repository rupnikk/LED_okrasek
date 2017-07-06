/*
 * pwm.h
 *
 *  Created on: 19. dec. 2016
 *      Author: Urban Rupnik
 *      City: Zadlog 42
 */

#ifndef _PWM_H_
#define _PWM_H_


/*******************************
 *************DEFINE************
 *******************************/

/***********************************
 *************TIMER1****************
 ***********************************/

#define TOGGLE_OC1A\
	CLEARBIT(TCCR1A, COM1A1);\
	SETBITS(TCCR1A, BIT(COM1A0));

#define NORMAL_OC1A\
	CLEARBIT(TCCR1A, COM1A1);\
	SETBITS(TCCR1A, BIT(COM1A0));

#define FASTPWM_OC1A\
	SETBITS(TCCR1A, BIT(WGM10) | BIT(WGM11));\
	SETBITS(TCCR1B, BIT(WGM12) | BIT(WGM13));

#define NORMALPWM_OC1A\
	SETBITS(TCCR1A, BIT(WGM10) | BIT(WGM11));\
	SETBITS(TCCR1B, BIT(WGM12) | BIT(WGM13));

#define PWM1_8_PRESC\
		CLEARBITS(TCCR1B, BIT(CS12) | BIT(CS10));\
		SETBITS(TCCR1B, BIT(CS11));

#define PWM1_64_PRESC\
		CLEARBITS(TCCR1B, BIT(CS12));\
		SETBITS(TCCR1B, BIT(CS10)| BIT(CS11));

#define PWM1_1024_PRESC\
		SETBITS(TCCR1B, BIT(CS12));\
		SETBITS(TCCR1B, BIT(CS10));\
		CLEARBITS(TCCR1B, BIT(CS11));

#define TIMER1_STOP\
	CLEARBITS(TCCR1B, BIT(CS10) | BIT(CS11) | BIT(CS12));

/***********************************
 *************TIMER0****************
 ***********************************/


#define TOGGLE_OC0A\
	CLEARBIT(TCCR0A, COM0A1);\
	SETBITS(TCCR0A, BIT(COM0A0));

#define FASTPWM_OCRA\
	SETBITS(TCCR0A, BIT(WGM00) | BIT(WGM01));\
	SETBIT(TCCR0B, WGM02);

#define PWM0_NO_PRESC\
		CLEARBITS(TCCR0B, BIT(CS02) | BIT(CS01));\
		SETBIT(TCCR0B, CS00);


#define PWM0_8_PRESC\
		CLEARBITS(TCCR0B, BIT(CS02) | BIT(CS00));\
		SETBITS(TCCR0B, BIT(CS01));

#define PWM0_64_PRESC\
		CLEARBITS(TCCR0B, BIT(CS02));\
		SETBITS(TCCR0B, BIT(CS00)| BIT(CS01));

#define PWM0_256_PRESC\
		CLEARBITS(TCCR0B, BIT(CS00)| BIT(CS01));\
		SETBITS(TCCR0B, BIT(CS02));

#define PWM0_1024_PRESC\
		SETBITS(TCCR0B, BIT(CS02));\
		SETBITS(TCCR0B, BIT(CS00));\
		CLEARBITS(TCCR0B, BIT(CS01));

#define TIMER0_STOP\
	CLEARBITS(TCCR0B, BIT(CS00) | BIT(CS01) | BIT(CS02));



/***********************************
 *************TIMER2****************
 ***********************************/


#define PWM2_NO_PRESC\
		CLEARBITS(TCCR2B, BIT(CS22) | BIT(CS21));\
		SETBIT(TCCR2B, CS20);


#define PWM2_8_PRESC\
		CLEARBITS(TCCR2B, BIT(CS22) | BIT(CS20));\
		SETBITS(TCCR2B, BIT(CS21));

#define PWM2_64_PRESC\
		CLEARBITS(TCCR2B, BIT(CS22));\
		SETBITS(TCCR2B, BIT(CS20)| BIT(CS21));

#define PWM2_256_PRESC\
		CLEARBITS(TCCR2B, BIT(CS20)| BIT(CS21));\
		SETBITS(TCCR2B, BIT(CS22));

#define PWM2_1024_PRESC\
		SETBITS(TCCR2B, BIT(CS22));\
		SETBITS(TCCR2B, BIT(CS20));\
		CLEARBITS(TCCR2B, BIT(CS21));

#define TIMER2_STOP\
	CLEARBITS(TCCR2B, BIT(CS20) | BIT(CS21) | BIT(CS22));
/*******************************
 ***KONFIGURACIJSKA FUNKCIJA****
 *******************************/
void PWMCfg();

/*******************************
 ************FUNKCIJE***********
 *******************************/

int PWM0presc(uint16_t presc);
#endif /* PWM_H_ */
