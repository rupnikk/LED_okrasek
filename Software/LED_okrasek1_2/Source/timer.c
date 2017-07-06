/*
 * timer.c
 *
 *  Created on: 20. dec. 2016
 *      Author: Urban Rupnik
 */


#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "stdint.h"
#include "bittop.h"
#include "blink.h"
#include "hardware.h"
#include "timer.h"


/*******************************
 ***KONFIGURACIJSKE FUNKCIJE****
 *******************************/

void SystemTimerCfg(){
	//uint8_t clk=CLKDIV8;
	//PrescalerCfg(clk);

};

void SystemPrescalerCfg(uint8_t clock){
	cli();
	CLKPR=(1<<CLKPCE);
	CLKPR=CLKDIV8;
//	SETBIT(CLKPR, CLKPCE);
//	//WRITEALL(CLKPR, 0x80);
//	WRITEALL(CLKPR, clock);
	sei();
};


/*******************************
 **********FUNKCIJE*************
 *******************************/

void delay_ms(uint16_t count) {
  while(count--) {
    _delay_ms(1);
  }
}
