/*
 * int.c
 *
 *  Created on: 3. jan. 2017
 *      Author: Urban Rupnik
 *      City: Zadlog 42
 */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "bittop.h"
#include "int.h"


/*******************************
 ***KONFIGURACIJSKE FUNKCIJE****

 *******************************/
void IntCfg(){
	//Vključitev PCINT8, PCINT23
	pcint_en(8);
	pcint_en(23);
}

/*******************************
 ************FUNKCIJE***********
 *******************************/

//Enable PCINTy interrupts
//x => PCINTx interrupt
void pcint_en(uint8_t x){
	if(x<8){
		SETBIT(PCICR, PCIE0);
		SETBIT(PCMSK0, x);
	}
	else if(x>=8 && x<15 ){
		SETBIT(PCICR, PCIE1);
		SETBIT(PCMSK1, (x%8));
	}
	else if(x>=16 && x<24){
		SETBIT(PCICR, PCIE2);
		SETBIT(PCMSK2, (x%16));
	}
}

//Disable PCINTy interrupts
//x => PCINTx interrupt
void pcint_dis(uint32_t x){
	if(x<8){
		CLEARBIT(PCMSK0, x);
	}
	else if(x>=8 && x<15 ){
		CLEARBIT(PCMSK1, (x%8));
	}
	else if(x>=16 && x<23){
		CLEARBIT(PCMSK2, (x%16));
	}
}

