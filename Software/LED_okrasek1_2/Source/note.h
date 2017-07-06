/*
 * note.h
 *
 *  Created on: 2. jan. 2017
 *      Author: urban
 */




#ifndef SOURCE_NOTE_H_
#define SOURCE_NOTE_H_


/*******************************
 **********FUNKCIJE*************
 *******************************/
void playnote(uint16_t prescaler, uint16_t note);


/*******************************
 *******DEFINE FUNKCIJE*********
 *******************************/

#define NOTE(x,z,y)\
	PWM0presc(x);\
	TCNT0=0;\
	OCR0A=z;\
	_delay_ms(y);\
	TIMER0_STOP;\
	_delay_ms(10);

#define PAUSE(y)\
	TCNT0=0;\
	_delay_ms(y);\
	TIMER0_STOP;


/*******************************
 **********VIŠINA NOT***********
 *******************************/
#if (F_CPU==8000000)
	#define A2 			141
	#define A2_PRESC	256

	#define AIS2 		133
	#define AIS2_PRESC	256

	#define H2 			126
	#define H2_PRESC	256

	#define C3 			118
	#define C3_PRESC	256

	#define CIS3 		112
	#define CIS3_PRESC	256

	#define D3 			105
	#define D3_PRESC	256

	#define DIS3 		99
	#define DIS3_PRESC	256

	#define E3 			94
	#define E3_PRESC	256

	#define F3 			88
	#define F3_PRESC	256

	#define FIS3 		83
	#define FIS3_PRESC	256

	#define G3 			79
	#define G3_PRESC	256

	#define GIS3 		74
	#define GIS3_PRESC	256

	#define A3 			70
	#define A3_PRESC	256

	#define AIS3 		66
	#define AIS3_PRESC	256

	#define H3 			252
	#define H3_PRESC	64

	#define C4 			238
	#define C4_PRESC	64

	#define CIS4 		224
	#define CIS4_PRESC	64

	#define D4 			212
	#define D4_PRESC	64

	#define DIS4 		200
	#define DIS4_PRESC	64

	#define E4 			189
	#define E4_PRESC	64

	#define F4 			178
	#define F4_PRESC	64

	#define FIS4 		168
	#define FIS4_PRESC	64

	#define G4 			158
	#define G4_PRESC	64

	#define GIS4 		149
	#define GIS4_PRESC	64

	// violinski ključ A
	#define A4 			141
	#define A4_PRESC	64

	#define AIS4 		133
	#define AIS4_PRESC	256

	#define H4 			126
	#define H4_PRESC	64

	#define C5 			118
	#define C5_PRESC	64

	#define CIS5 		112
	#define CIS5_PRESC	64

	#define D5 			105
	#define D5_PRESC	64

	#define DIS5 		99
	#define DIS5_PRESC	64

	#define E5 			94
	#define E5_PRESC	64

	#define F5 			88
	#define F5_PRESC	64

	#define FIS5 		83
	#define FIS5_PRESC	64

	#define G5 			79
	#define G5_PRESC	64

	#define GIS5 		74
	#define GIS5_PRESC	64

	#define A5 			70
	#define A5_PRESC	64

	#define AIS5 		66
	#define AIS5_PRESC	256

	#define H5 			62
	#define H5_PRESC	64

	#define C6 			59
	#define C6_PRESC	64

#else
	#error "Not right F_CPU"
#endif


/*******************************
 *********DOLŽINA NOT***********
 *******************************/

#define MINLENGTH		3*32

#define CELINKA			MINLENGTH*1
#define POLOVINKA_P		MINLENGTH*3/4
#define POLOVINKA 		MINLENGTH*1/2
#define CETRTINKA_P		MINLENGTH*3/8
#define CETRTINKA 		MINLENGTH*1/4
#define OSMINKA_P		MINLENGTH*3/16
#define OSMINKA			MINLENGTH*1/8
#define SESTNAJSTINKA_P	MINLENGTH*3/32
#define SESTAJSTINKA	MINLENGTH*1/16

#define TRIOLA_POL		MINLENGTH*CELINKA/3
#define TRIOLA_CET		MINLENGTH*POLOVINKA/3
#define TRIOLA_OSM		MINLENGTH*CETRTINKA/3
#define TRIOLA_SEST		MINLENGTH*OSMINKA/3

#endif /* SOURCE_NOTE_H_ */
