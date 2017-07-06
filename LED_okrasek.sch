EESchema Schematic File Version 2
LIBS:LED_okrasek
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:kalilnik
LIBS:drv
LIBS:LED_okrasek-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L speaker LS1
U 1 1 584C731D
P 10200 2150
F 0 "LS1" H 10190 2000 60  0000 C CNN
F 1 "speaker" H 10240 2330 60  0000 C CNN
F 2 "LED_okrasek:Speaker" H 10200 2150 60  0001 C CNN
F 3 "http://www.newark.com/pdfs/datasheets/spc/25R0902.pdf?_ga=1.246424708.1660152525.1481320514" H 9840 1780 60  0001 C CNN
F 4 "2396077" H 9940 1880 60  0001 C CNN "Farnelll number"
	1    10200 2150
	1    0    0    -1  
$EndComp
$Comp
L NCP2890DMR2G U2
U 1 1 584C7F0D
P 9050 2350
F 0 "U2" H 8770 2710 60  0000 C CNN
F 1 "NCP2890DMR2G" H 9080 1990 60  0000 C CNN
F 2 "LED_okrasek:Micro8_SMD" H 8670 2380 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1878956.pdf?_ga=1.155430843.1660152525.1481320514" H 8410 2190 60  0001 C CNN
F 4 "2464740" H 8510 2290 60  0001 C CNN "Farnell number"
	1    9050 2350
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 584C7FD9
P 8450 2850
F 0 "C4" H 8475 2950 50  0000 L CNN
F 1 "1u" H 8475 2750 50  0000 L CNN
F 2 "LED_okrasek:C_0603_HandSoldering" H 8488 2700 50  0001 C CNN
F 3 "" H 8450 2850 50  0000 C CNN
	1    8450 2850
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 584C8090
P 9050 1600
F 0 "R12" V 9130 1600 50  0000 C CNN
F 1 "10k" V 9050 1600 50  0000 C CNN
F 2 "LED_okrasek:R_0603_HandSoldering" V 8980 1600 50  0001 C CNN
F 3 "" H 9050 1600 50  0000 C CNN
	1    9050 1600
	0    -1   -1   0   
$EndComp
$Comp
L ATMEGA328-A IC1
U 1 1 584C7A2C
P 5150 4000
F 0 "IC1" H 4400 5250 50  0000 L BNN
F 1 "ATMEGA328-A" H 5550 2600 50  0000 L BNN
F 2 "LED_okrasek:TQFP-32_7x7mm_Pitch0.8mm" H 5150 4000 50  0001 C CIN
F 3 "http://www.farnell.com/datasheets/2047852.pdf?_ga=1.212856084.1660152525.1481320514" H 5150 4000 50  0001 C CNN
F 4 "2443176" H 5150 4000 60  0001 C CNN "Farnell number"
	1    5150 4000
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 584C910C
P 8250 2250
F 0 "R7" V 8330 2250 50  0000 C CNN
F 1 "10k" V 8250 2250 50  0000 C CNN
F 2 "LED_okrasek:R_0603_HandSoldering" V 8180 2250 50  0001 C CNN
F 3 "" H 8250 2250 50  0000 C CNN
	1    8250 2250
	0    -1   -1   0   
$EndComp
$Comp
L C C3
U 1 1 584C9166
P 7850 2250
F 0 "C3" H 7875 2350 50  0000 L CNN
F 1 "1u" H 7875 2150 50  0000 L CNN
F 2 "LED_okrasek:C_0603_HandSoldering" H 7888 2100 50  0001 C CNN
F 3 "" H 7850 2250 50  0000 C CNN
	1    7850 2250
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 584C91B5
P 7600 2450
F 0 "C2" H 7625 2550 50  0000 L CNN
F 1 "100n" H 7625 2350 50  0000 L CNN
F 2 "LED_okrasek:C_0603_HandSoldering" H 7638 2300 50  0001 C CNN
F 3 "" H 7600 2450 50  0000 C CNN
	1    7600 2450
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 584C91FB
P 7350 2250
F 0 "R5" V 7430 2250 50  0000 C CNN
F 1 "220" V 7350 2250 50  0000 C CNN
F 2 "LED_okrasek:R_0603_HandSoldering" V 7280 2250 50  0001 C CNN
F 3 "" H 7350 2250 50  0000 C CNN
	1    7350 2250
	0    -1   -1   0   
$EndComp
$Comp
L C C5
U 1 1 584C9508
P 8900 1800
F 0 "C5" H 8925 1900 50  0000 L CNN
F 1 "1u" H 8925 1700 50  0000 L CNN
F 2 "LED_okrasek:R_0603_HandSoldering" H 8938 1650 50  0001 C CNN
F 3 "" H 8900 1800 50  0000 C CNN
	1    8900 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 584C957D
P 8900 1950
F 0 "#PWR01" H 8900 1700 50  0001 C CNN
F 1 "GND" H 8900 1800 50  0000 C CNN
F 2 "" H 8900 1950 50  0000 C CNN
F 3 "" H 8900 1950 50  0000 C CNN
	1    8900 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 584C9BD3
P 8450 3050
F 0 "#PWR02" H 8450 2800 50  0001 C CNN
F 1 "GND" H 8450 2900 50  0000 C CNN
F 2 "" H 8450 3050 50  0000 C CNN
F 3 "" H 8450 3050 50  0000 C CNN
	1    8450 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 584C9BFF
P 7600 2700
F 0 "#PWR03" H 7600 2450 50  0001 C CNN
F 1 "GND" H 7600 2550 50  0000 C CNN
F 2 "" H 7600 2700 50  0000 C CNN
F 3 "" H 7600 2700 50  0000 C CNN
	1    7600 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 584C9C7B
P 9600 2700
F 0 "#PWR04" H 9600 2450 50  0001 C CNN
F 1 "GND" H 9600 2550 50  0000 C CNN
F 2 "" H 9600 2700 50  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L LED_Small D2
U 1 1 584C9F47
P 7950 4600
F 0 "D2" H 7900 4725 50  0000 L CNN
F 1 "LED_Small" H 7775 4500 50  0000 L CNN
F 2 "LED_okrasek:LED_0_1inch" V 7950 4600 50  0001 C CNN
F 3 "" H 7900 4725 50  0000 C CNN
F 4 "~" H 8000 4825 60  0000 C CNN "Farnell number"
	1    7950 4600
	0    -1   -1   0   
$EndComp
$Comp
L LED_Small D3
U 1 1 584CA00E
P 8300 4600
F 0 "D3" H 8250 4725 50  0000 L CNN
F 1 "LED_Small" H 8125 4500 50  0000 L CNN
F 2 "LED_okrasek:LED_0_1inch" V 8300 4600 50  0001 C CNN
F 3 "" H 8250 4725 50  0000 C CNN
F 4 "~" H 8350 4825 60  0000 C CNN "Farnell number"
	1    8300 4600
	0    -1   -1   0   
$EndComp
$Comp
L LED_Small D4
U 1 1 584CA086
P 8600 4600
F 0 "D4" H 8550 4725 50  0000 L CNN
F 1 "LED_Small" H 8425 4500 50  0000 L CNN
F 2 "LED_okrasek:LED_0_1inch" V 8600 4600 50  0001 C CNN
F 3 "" H 8550 4725 50  0000 C CNN
F 4 "~" H 8650 4825 60  0000 C CNN "Farnell number"
	1    8600 4600
	0    -1   -1   0   
$EndComp
$Comp
L LED_Small D5
U 1 1 584CA0C7
P 8900 4600
F 0 "D5" H 8850 4725 50  0000 L CNN
F 1 "LED_Small" H 8725 4500 50  0000 L CNN
F 2 "LED_okrasek:LED_0_1inch" V 8900 4600 50  0001 C CNN
F 3 "" H 8850 4725 50  0000 C CNN
F 4 "~" H 8950 4825 60  0000 C CNN "Farnell number"
	1    8900 4600
	0    -1   -1   0   
$EndComp
$Comp
L LED_Small D9
U 1 1 584CA111
P 10150 4600
F 0 "D9" H 10100 4725 50  0000 L CNN
F 1 "LED_Small" H 9975 4500 50  0000 L CNN
F 2 "LED_okrasek:LED_0_1inch" V 10150 4600 50  0001 C CNN
F 3 "" H 10100 4725 50  0000 C CNN
F 4 "~" H 10200 4825 60  0000 C CNN "Farnell number"
	1    10150 4600
	0    -1   -1   0   
$EndComp
$Comp
L LED_Small D6
U 1 1 584CA158
P 9250 4600
F 0 "D6" H 9200 4725 50  0000 L CNN
F 1 "LED_Small" H 9075 4500 50  0000 L CNN
F 2 "LED_okrasek:LED_0_1inch" V 9250 4600 50  0001 C CNN
F 3 "" H 9200 4725 50  0000 C CNN
F 4 "~" H 9300 4825 60  0000 C CNN "Farnell number"
	1    9250 4600
	0    -1   -1   0   
$EndComp
$Comp
L LED_Small D7
U 1 1 584CA19E
P 9550 4600
F 0 "D7" H 9500 4725 50  0000 L CNN
F 1 "LED_Small" H 9375 4500 50  0000 L CNN
F 2 "LED_okrasek:LED_0_1inch" V 9550 4600 50  0001 C CNN
F 3 "" H 9500 4725 50  0000 C CNN
F 4 "~" H 9600 4825 60  0000 C CNN "Farnell number"
	1    9550 4600
	0    -1   -1   0   
$EndComp
$Comp
L LED_Small D8
U 1 1 584CA1E9
P 9850 4600
F 0 "D8" H 9800 4725 50  0000 L CNN
F 1 "LED_Small" H 9675 4500 50  0000 L CNN
F 2 "LED_okrasek:LED_0_1inch" V 9850 4600 50  0001 C CNN
F 3 "" H 9800 4725 50  0000 C CNN
F 4 "~" H 9900 4825 60  0000 C CNN "Farnell number"
	1    9850 4600
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 584CA4C9
P 7950 4200
F 0 "R6" V 8030 4200 50  0000 C CNN
F 1 "220" V 7950 4200 50  0000 C CNN
F 2 "LED_okrasek:R_0603_HandSoldering" V 7880 4200 50  0001 C CNN
F 3 "" H 7950 4200 50  0000 C CNN
	1    7950 4200
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 584CA59C
P 8300 4200
F 0 "R8" V 8380 4200 50  0000 C CNN
F 1 "220" V 8300 4200 50  0000 C CNN
F 2 "LED_okrasek:R_0603_HandSoldering" V 8230 4200 50  0001 C CNN
F 3 "" H 8300 4200 50  0000 C CNN
	1    8300 4200
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 584CA602
P 8600 4200
F 0 "R9" V 8680 4200 50  0000 C CNN
F 1 "220" V 8600 4200 50  0000 C CNN
F 2 "LED_okrasek:R_0603_HandSoldering" V 8530 4200 50  0001 C CNN
F 3 "" H 8600 4200 50  0000 C CNN
	1    8600 4200
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 584CA659
P 8900 4200
F 0 "R11" V 8980 4200 50  0000 C CNN
F 1 "220" V 8900 4200 50  0000 C CNN
F 2 "LED_okrasek:R_0603_HandSoldering" V 8830 4200 50  0001 C CNN
F 3 "" H 8900 4200 50  0000 C CNN
	1    8900 4200
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 584CA6B7
P 9250 4200
F 0 "R14" V 9330 4200 50  0000 C CNN
F 1 "220" V 9250 4200 50  0000 C CNN
F 2 "LED_okrasek:R_0603_HandSoldering" V 9180 4200 50  0001 C CNN
F 3 "" H 9250 4200 50  0000 C CNN
	1    9250 4200
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 584CA716
P 9550 4200
F 0 "R15" V 9630 4200 50  0000 C CNN
F 1 "220" V 9550 4200 50  0000 C CNN
F 2 "LED_okrasek:R_0603_HandSoldering" V 9480 4200 50  0001 C CNN
F 3 "" H 9550 4200 50  0000 C CNN
	1    9550 4200
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 584CA776
P 9850 4200
F 0 "R16" V 9930 4200 50  0000 C CNN
F 1 "220" V 9850 4200 50  0000 C CNN
F 2 "LED_okrasek:R_0603_HandSoldering" V 9780 4200 50  0001 C CNN
F 3 "" H 9850 4200 50  0000 C CNN
	1    9850 4200
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 584CA80B
P 10150 4200
F 0 "R17" V 10230 4200 50  0000 C CNN
F 1 "220" V 10150 4200 50  0000 C CNN
F 2 "LED_okrasek:R_0603_HandSoldering" V 10080 4200 50  0001 C CNN
F 3 "" H 10150 4200 50  0000 C CNN
	1    10150 4200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 584CAF40
P 2150 1750
F 0 "P1" H 2150 1900 50  0000 C CNN
F 1 "CONN_01X02" V 2250 1750 50  0000 C CNN
F 2 "LED_okrasek:CONN_2x1x5.08" H 2150 1750 50  0001 C CNN
F 3 "" H 2150 1750 50  0000 C CNN
	1    2150 1750
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 584CB434
P 2700 1950
F 0 "#PWR05" H 2700 1700 50  0001 C CNN
F 1 "GND" H 2700 1800 50  0000 C CNN
F 2 "" H 2700 1950 50  0000 C CNN
F 3 "" H 2700 1950 50  0000 C CNN
	1    2700 1950
	1    0    0    -1  
$EndComp
Text Label 6400 3200 2    60   ~ 0
MOSI
Text Label 6400 3300 2    60   ~ 0
MISO
Text Label 6400 3400 2    60   ~ 0
SCK
$Comp
L R R10
U 1 1 584D1953
P 8850 5800
F 0 "R10" V 8930 5800 50  0000 C CNN
F 1 "220" V 8850 5800 50  0000 C CNN
F 2 "LED_okrasek:R_0603_HandSoldering" V 8780 5800 50  0001 C CNN
F 3 "" H 8850 5800 50  0000 C CNN
	1    8850 5800
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 584D1A46
P 9100 5550
F 0 "R13" V 9180 5550 50  0000 C CNN
F 1 "10k" V 9100 5550 50  0000 C CNN
F 2 "LED_okrasek:R_0603_HandSoldering" V 9030 5550 50  0001 C CNN
F 3 "" H 9100 5550 50  0000 C CNN
	1    9100 5550
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR06
U 1 1 584D1F24
P 2700 1550
F 0 "#PWR06" H 2700 1400 50  0001 C CNN
F 1 "+5V" H 2700 1690 50  0000 C CNN
F 2 "" H 2700 1550 50  0000 C CNN
F 3 "" H 2700 1550 50  0000 C CNN
	1    2700 1550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 584D2026
P 10400 3650
F 0 "#PWR07" H 10400 3500 50  0001 C CNN
F 1 "+5V" H 10400 3790 50  0000 C CNN
F 2 "" H 10400 3650 50  0000 C CNN
F 3 "" H 10400 3650 50  0000 C CNN
	1    10400 3650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 584D2211
P 9100 5350
F 0 "#PWR08" H 9100 5200 50  0001 C CNN
F 1 "+5V" H 9100 5490 50  0000 C CNN
F 2 "" H 9100 5350 50  0000 C CNN
F 3 "" H 9100 5350 50  0000 C CNN
	1    9100 5350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 584D32FB
P 8550 1850
F 0 "#PWR09" H 8550 1700 50  0001 C CNN
F 1 "+5V" H 8550 1990 50  0000 C CNN
F 2 "" H 8550 1850 50  0000 C CNN
F 3 "" H 8550 1850 50  0000 C CNN
	1    8550 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 584D3C71
P 9100 6250
F 0 "#PWR010" H 9100 6000 50  0001 C CNN
F 1 "GND" H 9100 6100 50  0000 C CNN
F 2 "" H 9100 6250 50  0000 C CNN
F 3 "" H 9100 6250 50  0000 C CNN
	1    9100 6250
	1    0    0    -1  
$EndComp
$Comp
L PAD PAD1
U 1 1 584D4618
P 6400 3200
F 0 "PAD1" H 6430 3130 60  0001 C CNN
F 1 "PAD" H 6410 3260 60  0001 C CNN
F 2 "LED_okrasek:PAD" H 6400 3200 60  0001 C CNN
F 3 "" H 6400 3200 60  0001 C CNN
	1    6400 3200
	1    0    0    -1  
$EndComp
$Comp
L PAD PAD2
U 1 1 584D46A4
P 6400 3300
F 0 "PAD2" H 6430 3230 60  0001 C CNN
F 1 "PAD" H 6410 3360 60  0001 C CNN
F 2 "LED_okrasek:PAD" H 6400 3300 60  0001 C CNN
F 3 "" H 6400 3300 60  0001 C CNN
	1    6400 3300
	1    0    0    -1  
$EndComp
$Comp
L PAD PAD3
U 1 1 584D46F4
P 6400 3400
F 0 "PAD3" H 6430 3330 60  0001 C CNN
F 1 "PAD" H 6410 3460 60  0001 C CNN
F 2 "LED_okrasek:PAD" H 6400 3400 60  0001 C CNN
F 3 "" H 6400 3400 60  0001 C CNN
	1    6400 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 584D4FEA
P 4150 5300
F 0 "#PWR011" H 4150 5050 50  0001 C CNN
F 1 "GND" H 4150 5150 50  0000 C CNN
F 2 "" H 4150 5300 50  0000 C CNN
F 3 "" H 4150 5300 50  0000 C CNN
	1    4150 5300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 584D522F
P 4100 2700
F 0 "#PWR012" H 4100 2550 50  0001 C CNN
F 1 "+5V" H 4100 2840 50  0000 C CNN
F 2 "" H 4100 2700 50  0000 C CNN
F 3 "" H 4100 2700 50  0000 C CNN
	1    4100 2700
	1    0    0    -1  
$EndComp
Text Label 6500 4350 2    60   ~ 0
~RESET
Text Label 6500 4800 2    60   ~ 0
LED1
Text Label 6500 3600 2    60   ~ 0
LED0
Text Label 6500 3950 2    60   ~ 0
LED2
Text Label 6500 3850 2    60   ~ 0
LED3
Text Label 6400 2900 2    60   ~ 0
LED4
Text Label 6400 3100 2    60   ~ 0
LED5
Text Label 7950 5050 1    60   ~ 0
LED0
Text Label 8300 5050 1    60   ~ 0
LED1
Text Label 8600 5050 1    60   ~ 0
LED2
Text Label 8900 5050 1    60   ~ 0
LED3
Text Label 9250 5050 1    60   ~ 0
LED4
Text Label 9550 5050 1    60   ~ 0
LED5
Text Label 9850 5050 1    60   ~ 0
LED6
Text Label 10150 5050 1    60   ~ 0
LED7
Text Label 6400 3000 2    60   ~ 0
LED6
Text Label 6500 3500 2    60   ~ 0
LED7
Text Label 6700 2250 0    60   ~ 0
AUDIO
Text Label 6500 5100 2    60   ~ 0
AUDIO
Text Label 8400 5800 0    60   ~ 0
BTN0
Text Label 6500 3750 2    60   ~ 0
BTN0
$Comp
L LED_Small D1
U 1 1 584D717D
P 2400 4150
F 0 "D1" H 2350 4275 50  0000 L CNN
F 1 "LED_Small" H 2225 4050 50  0000 L CNN
F 2 "LED_okrasek:R_0603_HandSoldering" V 2400 4150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1683589.pdf?_ga=1.208456722.1660152525.1481320514" H 2350 4275 50  0001 C CNN
F 4 "2290428" H 2450 4375 60  0001 C CNN "Farnell number"
	1    2400 4150
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 584D776E
P 2400 3800
F 0 "R3" V 2480 3800 50  0000 C CNN
F 1 "190" V 2400 3800 50  0000 C CNN
F 2 "LED_okrasek:R_0603_HandSoldering" V 2330 3800 50  0001 C CNN
F 3 "" H 2400 3800 50  0000 C CNN
	1    2400 3800
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 584D78BC
P 1850 4550
F 0 "R1" V 1930 4550 50  0000 C CNN
F 1 "1k" V 1850 4550 50  0000 C CNN
F 2 "LED_okrasek:R_0603_HandSoldering" V 1780 4550 50  0001 C CNN
F 3 "" H 1850 4550 50  0000 C CNN
	1    1850 4550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR013
U 1 1 584D81D7
P 2400 4850
F 0 "#PWR013" H 2400 4600 50  0001 C CNN
F 1 "GND" H 2400 4700 50  0000 C CNN
F 2 "" H 2400 4850 50  0000 C CNN
F 3 "" H 2400 4850 50  0000 C CNN
	1    2400 4850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 584D8314
P 2400 3550
F 0 "#PWR014" H 2400 3400 50  0001 C CNN
F 1 "+5V" H 2400 3690 50  0000 C CNN
F 2 "" H 2400 3550 50  0000 C CNN
F 3 "" H 2400 3550 50  0000 C CNN
	1    2400 3550
	1    0    0    -1  
$EndComp
Text Label 1450 4550 0    60   ~ 0
IRLED
Text Label 6500 5000 2    60   ~ 0
IRLED
NoConn ~ 6150 4900
NoConn ~ 4250 4350
NoConn ~ 4250 4250
$Comp
L Q_NPN_BEC Q1
U 1 1 584D9F6D
P 2300 4550
F 0 "Q1" H 2600 4600 50  0000 R CNN
F 1 "Q_NPN_BEC" H 2900 4500 50  0000 R CNN
F 2 "LED_okrasek:SOT-23_Handsoldering" H 2500 4650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1511859.pdf?_ga=1.180667303.1660152525.1481320514" H 2300 4550 50  0001 C CNN
F 4 "8737070" H 2300 4550 60  0001 C CNN "Farnell number"
	1    2300 4550
	1    0    0    -1  
$EndComp
$Comp
L PAD PAD4
U 1 1 584E5D35
P 6500 4350
F 0 "PAD4" H 6530 4280 60  0001 C CNN
F 1 "PAD" H 6510 4410 60  0001 C CNN
F 2 "LED_okrasek:PAD" H 6500 4350 60  0001 C CNN
F 3 "" H 6500 4350 60  0001 C CNN
	1    6500 4350
	1    0    0    -1  
$EndComp
$Comp
L IR_RECEIVER U1
U 1 1 584E80DA
P 1500 6250
F 0 "U1" H 1450 6450 60  0000 C CNN
F 1 "IR_RECEIVER" H 1500 6050 60  0000 C CNN
F 2 "LED_okrasek:TSOP" H 1450 6250 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2049972.pdf?_ga=1.122547339.1660152525.1481320514" H 1450 6250 60  0001 C CNN
F 4 "2251356" H 1500 6250 60  0001 C CNN "Farnell number"
	1    1500 6250
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 584E8140
P 1900 6250
F 0 "R2" V 1980 6250 50  0000 C CNN
F 1 "220" V 1900 6250 50  0000 C CNN
F 2 "LED_okrasek:R_0603_HandSoldering" H 1830 6250 50  0001 C CNN
F 3 "" H 1900 6250 50  0000 C CNN
	1    1900 6250
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 584E8233
P 2550 6250
F 0 "C1" H 2560 6320 50  0000 L CNN
F 1 "1u" H 2560 6170 50  0000 L CNN
F 2 "LED_okrasek:C_0603_HandSoldering" H 2550 6250 50  0001 C CNN
F 3 "" H 2550 6250 50  0000 C CNN
	1    2550 6250
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 584E82B2
P 2900 6150
F 0 "R4" V 2980 6150 50  0000 C CNN
F 1 "500" V 2900 6150 50  0000 C CNN
F 2 "LED_okrasek:R_0603_HandSoldering" V 2830 6150 50  0001 C CNN
F 3 "" H 2900 6150 50  0000 C CNN
	1    2900 6150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR015
U 1 1 584E8828
P 3200 6450
F 0 "#PWR015" H 3200 6200 50  0001 C CNN
F 1 "GND" H 3200 6300 50  0000 C CNN
F 2 "" H 3200 6450 50  0000 C CNN
F 3 "" H 3200 6450 50  0000 C CNN
	1    3200 6450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR016
U 1 1 584E88F1
P 3200 6050
F 0 "#PWR016" H 3200 5900 50  0001 C CNN
F 1 "+5V" H 3200 6190 50  0000 C CNN
F 2 "" H 3200 6050 50  0000 C CNN
F 3 "" H 3200 6050 50  0000 C CNN
	1    3200 6050
	1    0    0    -1  
$EndComp
Text Label 2350 6250 2    60   ~ 0
IR_REC
Text Label 6500 5200 2    60   ~ 0
IR_REC
$Comp
L +5V #PWR017
U 1 1 584E95C5
P 4300 2000
F 0 "#PWR017" H 4300 1850 50  0001 C CNN
F 1 "+5V" H 4300 2140 50  0000 C CNN
F 2 "" H 4300 2000 50  0000 C CNN
F 3 "" H 4300 2000 50  0000 C CNN
	1    4300 2000
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 584E9CA4
P 4300 2200
F 0 "C6" H 4310 2270 50  0000 L CNN
F 1 "1u" H 4310 2120 50  0000 L CNN
F 2 "LED_okrasek:C_0603_HandSoldering" H 4300 2200 50  0001 C CNN
F 3 "" H 4300 2200 50  0000 C CNN
	1    4300 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 584EA0D0
P 4300 2400
F 0 "#PWR018" H 4300 2150 50  0001 C CNN
F 1 "GND" H 4300 2250 50  0000 C CNN
F 2 "" H 4300 2400 50  0000 C CNN
F 3 "" H 4300 2400 50  0000 C CNN
	1    4300 2400
	1    0    0    -1  
$EndComp
NoConn ~ 9100 6200
NoConn ~ 9100 5900
NoConn ~ 6500 4250
NoConn ~ 6500 4050
NoConn ~ 6500 4150
NoConn ~ 6500 4500
NoConn ~ 6500 4600
$Comp
L SW_PUSH SW1
U 1 1 585940D4
P 9100 6050
F 0 "SW1" H 9195 5965 50  0000 C CNN
F 1 "SW_PUSH" H 9105 6225 50  0000 C CNN
F 2 "LED_okrasek:TACTILE_SWTICH_4PIN_SMD" H 9100 6050 50  0001 C CNN
F 3 "" H 9195 5965 50  0001 C CNN
	1    9100 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 2250 8600 2250
Wire Wire Line
	7950 2250 8100 2250
Wire Wire Line
	7500 2250 7750 2250
Wire Wire Line
	7600 2250 7600 2350
Connection ~ 7600 2250
Wire Wire Line
	8600 2350 8450 2350
Wire Wire Line
	8450 2350 8450 2750
Wire Wire Line
	8600 2600 8450 2600
Connection ~ 8450 2600
Wire Wire Line
	9500 2250 10050 2250
Wire Wire Line
	9500 2150 10100 2150
Wire Wire Line
	9650 2150 9650 1600
Wire Wire Line
	9650 1600 9200 1600
Connection ~ 9650 2150
Wire Wire Line
	8900 1600 8450 1600
Wire Wire Line
	8450 1600 8450 2250
Connection ~ 8450 2250
Wire Wire Line
	8600 1700 8900 1700
Wire Wire Line
	8600 1700 8600 2150
Wire Wire Line
	10050 2250 10050 2200
Wire Wire Line
	10050 2200 10100 2200
Wire Wire Line
	9600 2700 9600 2550
Wire Wire Line
	9600 2550 9500 2550
Wire Wire Line
	8450 2950 8450 3050
Wire Wire Line
	7600 2550 7600 2700
Wire Wire Line
	6700 2250 7200 2250
Wire Wire Line
	7950 4350 7950 4500
Wire Wire Line
	8300 4350 8300 4500
Wire Wire Line
	8600 4350 8600 4500
Wire Wire Line
	8900 4350 8900 4500
Wire Wire Line
	9250 4350 9250 4500
Wire Wire Line
	9550 4350 9550 4500
Wire Wire Line
	9850 4350 9850 4500
Wire Wire Line
	10150 4350 10150 4500
Wire Wire Line
	7950 4050 7950 3750
Wire Wire Line
	10150 3750 10150 4050
Wire Wire Line
	9850 3750 9850 4050
Connection ~ 9850 3750
Wire Wire Line
	9550 3750 9550 4050
Connection ~ 9550 3750
Wire Wire Line
	9250 3750 9250 4050
Connection ~ 9250 3750
Wire Wire Line
	8900 3750 8900 4050
Connection ~ 8900 3750
Wire Wire Line
	8600 3750 8600 4050
Connection ~ 8600 3750
Wire Wire Line
	8300 4050 8300 3750
Connection ~ 8300 3750
Connection ~ 10150 3750
Wire Wire Line
	2700 1950 2700 1800
Wire Wire Line
	2700 1800 2350 1800
Wire Wire Line
	6150 3200 6400 3200
Wire Wire Line
	6150 3300 6400 3300
Wire Wire Line
	6150 3400 6400 3400
Wire Wire Line
	9000 5800 9100 5800
Connection ~ 9100 5800
Wire Wire Line
	9100 5350 9100 5400
Wire Wire Line
	10400 3750 10400 3650
Wire Wire Line
	7950 3750 10400 3750
Wire Wire Line
	2700 1550 2700 1700
Wire Wire Line
	2700 1700 2350 1700
Wire Wire Line
	8900 1900 8900 1950
Wire Wire Line
	8600 1950 8550 1950
Wire Wire Line
	8550 1850 8550 2500
Connection ~ 8600 1950
Wire Wire Line
	8550 2500 8600 2500
Connection ~ 8550 1950
Wire Wire Line
	8700 5800 8400 5800
Wire Wire Line
	7950 4700 7950 5050
Wire Wire Line
	8300 4700 8300 5050
Wire Wire Line
	8600 4700 8600 5050
Wire Wire Line
	8900 4700 8900 5050
Wire Wire Line
	9250 4700 9250 5050
Wire Wire Line
	9550 4700 9550 5050
Wire Wire Line
	9850 4700 9850 5050
Wire Wire Line
	10150 4700 10150 5050
Wire Wire Line
	4100 3500 4250 3500
Wire Wire Line
	4100 2700 4100 3500
Wire Wire Line
	4250 2900 4100 2900
Connection ~ 4100 2900
Wire Wire Line
	4250 3000 4100 3000
Connection ~ 4100 3000
Wire Wire Line
	4250 3200 4100 3200
Connection ~ 4100 3200
Wire Wire Line
	4250 5000 4150 5000
Wire Wire Line
	4150 5000 4150 5300
Wire Wire Line
	4250 5200 4150 5200
Connection ~ 4150 5200
Wire Wire Line
	4250 5100 4150 5100
Connection ~ 4150 5100
Wire Wire Line
	6150 4350 6500 4350
Wire Wire Line
	6150 3750 6500 3750
Wire Wire Line
	6150 3850 6500 3850
Wire Wire Line
	6150 3950 6500 3950
Wire Wire Line
	6150 4050 6500 4050
Wire Wire Line
	6150 4150 6500 4150
Wire Wire Line
	6150 4250 6500 4250
Wire Wire Line
	6150 4500 6500 4500
Wire Wire Line
	6150 4600 6500 4600
Wire Wire Line
	6150 2900 6400 2900
Wire Wire Line
	2000 4550 2100 4550
Wire Wire Line
	2400 4250 2400 4350
Wire Wire Line
	2400 4050 2400 3950
Wire Wire Line
	2400 3650 2400 3550
Wire Wire Line
	2400 4750 2400 4850
Wire Wire Line
	1450 4550 1700 4550
Wire Wire Line
	6150 5000 6500 5000
Wire Wire Line
	1700 6150 2750 6150
Connection ~ 2550 6150
Wire Wire Line
	1700 6250 1750 6250
Wire Wire Line
	1700 6350 3200 6350
Wire Wire Line
	3200 6050 3200 6150
Wire Wire Line
	3200 6150 3050 6150
Wire Wire Line
	3200 6350 3200 6450
Connection ~ 2550 6350
Wire Wire Line
	2050 6250 2350 6250
Wire Wire Line
	6500 5100 6150 5100
Wire Wire Line
	4300 2400 4300 2300
Wire Wire Line
	4300 2100 4300 2000
Wire Wire Line
	6400 3100 6150 3100
Wire Wire Line
	9100 5700 9100 5850
Wire Wire Line
	9100 5850 9050 5850
Wire Wire Line
	9050 5850 9050 5900
Wire Wire Line
	9050 6200 9050 6250
Wire Wire Line
	9050 6250 9100 6250
Wire Wire Line
	6500 5200 6150 5200
Wire Wire Line
	6150 3000 6400 3000
Wire Wire Line
	6150 3600 6500 3600
Wire Wire Line
	6150 3500 6500 3500
Wire Wire Line
	6500 4800 6150 4800
NoConn ~ 6150 4700
$EndSCHEMATC
