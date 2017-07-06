/*
 * blink.c
 *
 *  Created on: 19. dec. 2016
 *      Author: Urban Rupnik
 *      City: Zadlog 42
 */

#include <avr/io.h>
#include "stdint.h"
#include "bittop.h"
#include "blink.h"
#include "hardware.h"


/*
 * Blink struktura z nastavitvami
 *
 */

/*******************************
 ***KONFIGURACIJSKA FUNKCIJA****
 *******************************/

Blink leds[LED_NUM];

void IOCfg(){
	leds[0].pin = LED0;
	leds[0].port=&LED0_PORT;
	leds[0].dir_port=&LED0_DIR_PORT;
	leds[0].value=1;

	leds[1].pin = LED1;
	leds[1].port=&LED1_PORT;
	leds[1].dir_port=&LED1_DIR_PORT;
	leds[1].value=1;

	leds[2].pin = LED2;
	leds[2].port=&LED2_PORT;
	leds[2].dir_port=&LED2_DIR_PORT;
	leds[2].value=1;


	leds[3].pin = LED3;
	leds[3].port=&LED3_PORT;
	leds[3].dir_port=&LED3_DIR_PORT;
	leds[3].value=1;

	leds[4].pin = LED4;
	leds[4].port=&LED4_PORT;
	leds[4].dir_port=&LED4_DIR_PORT;
	leds[4].value=1;

	leds[5].pin = LED5;
	leds[5].port=&LED5_PORT;
	leds[5].dir_port=&LED5_DIR_PORT;
	leds[5].value=1;

	leds[6].pin = LED6;
	leds[6].port=&LED6_PORT;
	leds[6].dir_port=&LED6_DIR_PORT;
	leds[6].value=1;

	leds[7].pin = LED7;
	leds[7].port=&LED7_PORT;
	leds[7].dir_port=&LED7_DIR_PORT;
	leds[7].value=1;

	Blink audio;
	audio.pin=AUDIO;
	audio.port=&AUDIO_PORT;
	audio.dir_port=&AUDIO_DIR_PORT;
	audio.value=0;

	Input button1;
	button1.pin=BTN;
	button1.port=&BTN_PORT;
	button1.dir_port=&BTN_DIR_PORT;

	Input ir_rec;
	ir_rec.pin=IR_REC;
	ir_rec.port=&IR_REC_PORT;
	ir_rec.dir_port=&IR_REC_DIR_PORT;

	for (uint8_t i=0; i<LED_NUM;i++){
		BlinkCfg(&leds[i]);
	}

	BlinkCfg(&audio);

	InputCfg(&button1);
	InputCfg(&ir_rec);

};




/*******************************
 ************FUNKCIJE***********
 *******************************/
void BlinkCfg(Blink *ledica){
	SETBIT(*(ledica->dir_port), ledica->pin);
	if(ledica->value==1)SETBIT(*(ledica->port), ledica->pin);
	else CLEARBIT(*(ledica->port), ledica->pin);
}

void SetValue(Blink *ledica){
	if(ledica->value==1){
		SETBIT(*(ledica->port), ledica->pin);
	}
	else {
		CLEARBIT(*(ledica->port), ledica->pin);
	}
}

void InputCfg(Input *button){
	CLEARBIT(*(button->dir_port), button->pin);
	SETBIT(*(button->port), button->pin);
}
