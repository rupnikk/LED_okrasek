/*
 * blink.h
 *
 *  Created on: 19. dec. 2016
 *      Author: Urban Rupnik
 *      City: Zadlog 42
 */

#ifndef _BLINK_H_
#define _BLINK_H_

/*******************************
 ***********STRUKTURE***********
 *******************************/
// structura za izhod
typedef volatile struct  Blink{
	volatile uint8_t pin;
	volatile uint8_t* port;
	volatile uint8_t* dir_port;
	uint8_t value;
	uint8_t pwm;
	uint8_t freq;
	uint8_t duty;
}Blink;

#define LED_NUM 8
extern Blink leds[LED_NUM];

typedef struct input{
	volatile uint8_t pin;
	volatile uint8_t* port;
	volatile uint8_t* dir_port;
}Input;


/*******************************
 ***KONFIGURACIJSKA FUNKCIJA****
 *******************************/
// vhodi in izhodi
void IOCfg();



/*******************************
 ************FUNKCIJE***********
 *******************************/

// konfiguraj ledico
void  BlinkCfg(Blink *ledica);
void SetValue(Blink *ledica);

//vhod
void InputCfg();

#endif /* BLINK_H_ */
