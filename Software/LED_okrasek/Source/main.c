/*
 * main.c
 *
 *  Created on: 27. dec. 2016
 *      Author: Urban Rupnik
 *      City: Zadlog 42
 */


#include "led_okrasek.h"

uint8_t ir();

typedef enum{
	IDLE,
//	STARTBIT,
	REPEATBIT,
	READINGPREP,
	READING,
	VERIFY,
	DECODE
}state_machine;

typedef enum{
	SONG,
	CLEAR,
	BLINK_ALL,
	CIRCLE,
	CIRCLE1,
	RAND
}light_machine;

typedef enum{
	STOP,
	PLAY,
	PAUSE
}play_state;

uint8_t song_flag=0;
uint8_t light_flag=1;

uint16_t time=0;
uint32_t irval;
uint32_t *irval_p=&irval;
uint8_t prev=1;
uint8_t bitcnt=0;
uint8_t contr=0x00;
uint8_t count_ovr1=0;
uint32_t count_ovr2=0;
uint32_t delay_cnt=0;
state_machine my_state_machine = IDLE;
light_machine my_light=SONG;
play_state music=STOP;
//circ_state


int main(){

	uint32_t tempo=40;
	   IOCfg();
	 uint8_t song=0;
	   PWMCfg();
	   uint8_t a=0;

	   IntCfg();
//	   TIMER2_STOP;
//	   TCNT2=0;
	   PWM1_64_PRESC;
	   PWM2_8_PRESC;
	   OCR2B=99;
	   SETBIT(TIMSK1,TOIE1);
	   SETBIT(TIMSK2,OCIE2B);

	   sei();
	   uint32_t i=0;
	   uint32_t tim=0;

	   for(;;){
		switch(my_state_machine){
			case IDLE:
				break;
			case DECODE:
				if(contr >= 0 && contr < NUM_SONGS){
					song=contr;
					light_flag=0;
					//i=song_indeces[song];
					song_flag=0;
					i=pgm_read_word(&song_indeces[song]);
				}
				if(contr==8){
					light_flag=!light_flag;
				}
				else if(contr==14){
					song_flag=!song_flag;
					light_flag=song_flag;
				}
				else if(contr==12) CLEARBIT(LED6_PORT, LED6);
				else;
				my_light=SONG;
				my_state_machine=IDLE;
				break;
		}

		switch(my_light){
			case SONG:
				for (uint8_t n=0; n<LED_NUM;n++){
					if(n==song)leds[n].value=0;
					else leds[n].value=1;
					SetValue(&leds[n]);
				}
				my_light=CLEAR;
				break;
			case CLEAR:
				if(light_flag==1){
					for (uint8_t n=0; n<LED_NUM;n++){
						leds[n].value=1;
						SetValue(&leds[n]);
					}

					my_light=rand()%5+1;
				}
				break;
			case BLINK_ALL:
				if(count_ovr2>3500){
				count_ovr2=0;
				for (uint8_t n=0; n<LED_NUM;n++){

					leds[n].value= !leds[n].value;
					SetValue(&leds[n]);
				}
				}
				if(count_ovr1>10){
					my_light=CLEAR;
					count_ovr1=0;
				}
				break;
			case CIRCLE:
				if(count_ovr2>300){
				count_ovr2=0;
					if (a==0){
						leds[a].value=0;
						leds[5].value=1;
					}
					else{
						leds[a].value=0;
						leds[a-1].value=1;
					}
					for (uint8_t n=0; n<LED_NUM;n++){
						SetValue(&leds[n]);
					}
					if(a==5)a=0;
					else a++;
				}
				if(count_ovr1>10){

					my_light=CLEAR;
					count_ovr1=0;
				}
				break;
			case CIRCLE1:
				if(count_ovr2>300){
				count_ovr2=0;
					leds[a].value=!leds[a].value;
					for (uint8_t n=0; n<LED_NUM;n++){
						SetValue(&leds[n]);
					}
					if(a==5)a=0;
					else a++;
				}
				if(count_ovr1>10){

					my_light=CLEAR;
					count_ovr1=0;
				}
				break;

			case RAND:
				if(count_ovr2>500){
				count_ovr2=0;
				leds[rand()%8].value=rand()%2;
					for (uint8_t n=0; n<LED_NUM;n++){
						SetValue(&leds[n]);
					}
				}
				if(count_ovr1>10){

					my_light=CLEAR;
					count_ovr1=0;
				}
				break;
		}

		//playnote(64,pgm_read_word(p[0][0][0]),2000);
//			while(pgm_read_word(&kuza_pazi_song[i][2]) && song_flag==1){
//						playnote(pgm_read_word(&kuza_pazi_song[i][1]),pgm_read_word(&kuza_pazi_song[i][0]),pgm_read_word(&kuza_pazi_song[i][2])*tempo);
//						//playnote(A3_PRESC, A3, 4000);
//						i++;
//					}
		switch(music){
			case STOP:
			//	if(pgm_read_word(&cuk_song[i][2])!=0 && song_flag==1){
				if(i<pgm_read_word(&song_indeces[song+1]) && song_flag==1){
					//playnote(pgm_read_word(&cuk_song[i][1]),pgm_read_word(&cuk_song[i][0]),pgm_read_word(&cuk_song[i][2])*tempo);
					playnote(pgm_read_word(&songs[i][1]),pgm_read_word(&songs[i][0]));
					delay_cnt=0;
					TCNT2=0;
					tim=pgm_read_word(&songs[i][2])*tempo;
					music=PLAY;
				}
				else{
					i=pgm_read_word(&song_indeces[song])+1;
					tempo=pgm_read_word(&songs[i-1][0]);
				}

				break;
			case PLAY:
				if(delay_cnt >= tim || song_flag==0){
					TIMER0_STOP;
					delay_cnt=0;
					TCNT2=0;
					i++;
					music=PAUSE;
				}
				if(i==pgm_read_word(&song_indeces[song+1])){
				   i=pgm_read_word(&song_indeces[song]);
				   song_flag=0;
				   music=STOP;
				}
				break;
			case PAUSE:
				if(delay_cnt >= 10){
					music=STOP;
				}
				break;
			}
		}
	return 0;
}



ISR(PCINT1_vect){
	if(!BITVAL(PINC, BTN)){
		song_flag=!song_flag;
		light_flag=song_flag;
	}
}

ISR(TIMER1_OVF_vect){
	count_ovr1++;
}

ISR(TIMER2_COMPB_vect){
	count_ovr2++;
	delay_cnt++;
}

ISR(PCINT2_vect){
	TOGGLEBIT(LED3_PORT, LED3);
	time = TCNT1;
	PWM1_64_PRESC;
	TCNT1=0;
	ir();
}

uint8_t ir(){
	switch(my_state_machine){
		case IDLE:
			if(time > 1060 && time < 1200){
				my_state_machine=REPEATBIT;
			}
			else{
				my_state_machine=IDLE;
			}
			break;
		case REPEATBIT:
			if(time > 500 && time < 625){
				my_state_machine=READINGPREP;
				bitcnt=0;
				*irval_p=0x00000000;
				contr=0x00;
			}
			else{
				my_state_machine=IDLE;
			}
			break;
		case READINGPREP:
			if(time > 45 && time < 90){
				my_state_machine=READING;

			}
			else{
				my_state_machine=IDLE;
			}
			break;
		case READING:
			if(time > 45 && time < 90){
				my_state_machine=READINGPREP;
			}
			else if(time > 150 && time < 250){
				*irval_p |= (1 << bitcnt);
			if(bitcnt>=16 && bitcnt <24)contr|=(1 << (bitcnt-16));
				my_state_machine=READINGPREP;
			}
			else{
				my_state_machine=IDLE;
			}
			if(bitcnt==31){

				my_state_machine=VERIFY;
			}
			else{
				bitcnt++;
			}
			break;
		case VERIFY:
			if(1){
				my_state_machine=DECODE;
				return 1;
			}
			break;
	}
	return 0;
}

