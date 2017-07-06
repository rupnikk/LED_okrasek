/*
 * timer.h
 *
 *  Created on: 20. dec. 2016
 *      Author: Urban Rupnik
 *      City: Zadlog 42
 */

#ifndef _TIMER_H_
#define _TIMER_H_


/*******************************
 ***********DEFINE**************
 *******************************/

// vrednosti za CKSEL 3..0
#define EXTERNAL_CLOCK			uint8_t(0)
#define CALIBRATED_INTERNAL_4M	uint8_t(2)
#define CALIBRATED_INTERNAL_8M	uint8_t(4)
#define WATCHDOG_128k			uint8_t(6)

// nastavljanje z varovalkami
// spodnji byte

/*
 * 7 * 6 * 5 * 4 * 3 * 2 * 1 * 0 *
 * CKDIV8 * CKOUT * SUT1 * SUT0 * CKSEL3 * CKSEL2 * CKSEL1 * CKSEL0 *
 * Default:
 * 01100100
 */


// Clock prescaler
#define CLKPCE 7
#define CLKPS3 3
#define CLKPS2 2
#define CLKPS1 1
#define CLKPS0 0


//Value of CLPR register to start changing prescaler
#define CLKPR_CHANGE_START uint8_t(0x80)

//Prescaler values
#define CLKDIV1 0x00
#define CLKDIV2 0x01
#define CLKDIV4 0x02
#define CLKDIV8 0x03
#define CLKDIV16 0x04
#define CLKDIV32 0x05
#define CLKDIV64 0x06
#define CLKDIV128 0x07
#define CLKDIV256 0x08


/*******************************
 ***KONFIGURACIJSKE FUNKCIJE****
 *******************************/
void SystemTimerCfg();

void SystemPrescalerCfg(uint8_t clock);

/*******************************
 **********FUNKCIJE*************
 *******************************/
void delay_ms(uint16_t count);

#endif /* TIMER_H_ */
