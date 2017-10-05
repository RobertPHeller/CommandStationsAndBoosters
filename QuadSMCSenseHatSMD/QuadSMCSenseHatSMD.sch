EESchema Schematic File Version 2
LIBS:SMCSenseHAT-cache
LIBS:lm324n-X
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
LIBS:special
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
LIBS:acpl-247
LIBS:mmpq2222a
LIBS:QuadSMCSenseHatSMD-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date "26 jun 2017"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RPi_GPIO J0
U 1 1 5516AE26
P 3250 1900
F 0 "J0" H 4000 2150 60  0000 C CNN
F 1 "RPi_GPIO" H 4000 2050 60  0000 C CNN
F 2 "RPi_Hat:Pin_Header_Straight_2x20" H 3250 1900 60  0001 C CNN
F 3 "" H 3250 1900 60  0000 C CNN
	1    3250 1900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR01
U 1 1 5950110B
P 3050 1900
F 0 "#PWR01" H 3050 1860 30  0001 C CNN
F 1 "+3.3V" H 3050 2010 30  0000 C CNN
F 2 "" H 3050 1900 60  0000 C CNN
F 3 "" H 3050 1900 60  0000 C CNN
	1    3050 1900
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR02
U 1 1 5950111A
P 3050 2700
F 0 "#PWR02" H 3050 2660 30  0001 C CNN
F 1 "+3.3V" H 3050 2810 30  0000 C CNN
F 2 "" H 3050 2700 60  0000 C CNN
F 3 "" H 3050 2700 60  0000 C CNN
	1    3050 2700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR03
U 1 1 59501129
P 3050 2300
F 0 "#PWR03" H 3050 2300 30  0001 C CNN
F 1 "GND" H 3050 2230 30  0001 C CNN
F 2 "" H 3050 2300 60  0000 C CNN
F 3 "" H 3050 2300 60  0000 C CNN
	1    3050 2300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 59501138
P 3050 3100
F 0 "#PWR04" H 3050 3100 30  0001 C CNN
F 1 "GND" H 3050 3030 30  0001 C CNN
F 2 "" H 3050 3100 60  0000 C CNN
F 3 "" H 3050 3100 60  0000 C CNN
	1    3050 3100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 59501147
P 3050 3800
F 0 "#PWR05" H 3050 3800 30  0001 C CNN
F 1 "GND" H 3050 3730 30  0001 C CNN
F 2 "" H 3050 3800 60  0000 C CNN
F 3 "" H 3050 3800 60  0000 C CNN
	1    3050 3800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR06
U 1 1 59501156
P 4950 2100
F 0 "#PWR06" H 4950 2100 30  0001 C CNN
F 1 "GND" H 4950 2030 30  0001 C CNN
F 2 "" H 4950 2100 60  0000 C CNN
F 3 "" H 4950 2100 60  0000 C CNN
	1    4950 2100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 59501165
P 4950 2500
F 0 "#PWR07" H 4950 2500 30  0001 C CNN
F 1 "GND" H 4950 2430 30  0001 C CNN
F 2 "" H 4950 2500 60  0000 C CNN
F 3 "" H 4950 2500 60  0000 C CNN
	1    4950 2500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 59501174
P 4950 2800
F 0 "#PWR08" H 4950 2800 30  0001 C CNN
F 1 "GND" H 4950 2730 30  0001 C CNN
F 2 "" H 4950 2800 60  0000 C CNN
F 3 "" H 4950 2800 60  0000 C CNN
	1    4950 2800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR09
U 1 1 59501183
P 4950 3300
F 0 "#PWR09" H 4950 3300 30  0001 C CNN
F 1 "GND" H 4950 3230 30  0001 C CNN
F 2 "" H 4950 3300 60  0000 C CNN
F 3 "" H 4950 3300 60  0000 C CNN
	1    4950 3300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR010
U 1 1 59501192
P 4950 3500
F 0 "#PWR010" H 4950 3500 30  0001 C CNN
F 1 "GND" H 4950 3430 30  0001 C CNN
F 2 "" H 4950 3500 60  0000 C CNN
F 3 "" H 4950 3500 60  0000 C CNN
	1    4950 3500
	0    -1   -1   0   
$EndComp
Text GLabel 3050 2400 0    49   Input ~ 0
M Select 1
Text GLabel 4950 2400 2    49   Input ~ 0
M Select 2
Text GLabel 3050 2500 0    49   Input ~ 0
Point Sense 1
Text GLabel 3050 2600 0    49   Input ~ 0
Point Sense 2
Text GLabel 4950 2600 2    49   Input ~ 0
M Select 3
Text GLabel 4950 2700 2    49   Input ~ 0
M Select 4
Text GLabel 4950 2900 2    49   Input ~ 0
Point Sense 3
Text GLabel 3050 2200 0    49   Input ~ 0
Point Sense 4
$Sheet
S 6800 1500 2150 2450
U 5950136D
F0 "Motors" 50
F1 "Motors.sch" 50
$EndSheet
$Sheet
S 2750 4400 2300 2600
U 59501382
F0 "Sensors" 50
F1 "Sensors.sch" 50
$EndSheet
$Comp
L CONN_5 T1
U 1 1 5951042B
P 10650 1450
F 0 "T1" V 10600 1450 50  0000 C CNN
F 1 "Motor 1" V 10700 1450 50  0000 C CNN
F 2 "~" H 10650 1450 60  0000 C CNN
F 3 "~" H 10650 1450 60  0000 C CNN
	1    10650 1450
	1    0    0    -1  
$EndComp
$Comp
L CONN_5 T2
U 1 1 5951043A
P 10650 2450
F 0 "T2" V 10600 2450 50  0000 C CNN
F 1 "Motor 2" V 10700 2450 50  0000 C CNN
F 2 "~" H 10650 2450 60  0000 C CNN
F 3 "~" H 10650 2450 60  0000 C CNN
	1    10650 2450
	1    0    0    -1  
$EndComp
$Comp
L CONN_5 T3
U 1 1 59510449
P 10650 3400
F 0 "T3" V 10600 3400 50  0000 C CNN
F 1 "Motor 3" V 10700 3400 50  0000 C CNN
F 2 "~" H 10650 3400 60  0000 C CNN
F 3 "~" H 10650 3400 60  0000 C CNN
	1    10650 3400
	1    0    0    -1  
$EndComp
$Comp
L CONN_5 T4
U 1 1 59510458
P 10650 4250
F 0 "T4" V 10600 4250 50  0000 C CNN
F 1 "Motor 4" V 10700 4250 50  0000 C CNN
F 2 "~" H 10650 4250 60  0000 C CNN
F 3 "~" H 10650 4250 60  0000 C CNN
	1    10650 4250
	1    0    0    -1  
$EndComp
Text GLabel 10250 1250 0    49   Input ~ 0
Motor 1A
Text GLabel 10250 1350 0    49   Input ~ 0
Motor 1B
Text GLabel 10250 2250 0    49   Input ~ 0
Motor 2A
Text GLabel 10250 2350 0    49   Input ~ 0
Motor 2B
Text GLabel 10250 3200 0    49   Input ~ 0
Motor 3A
Text GLabel 10250 3300 0    49   Input ~ 0
Motor 3B
Text GLabel 10250 4050 0    49   Input ~ 0
Motor 4A
Text GLabel 10250 4150 0    49   Input ~ 0
Motor 4B
Text GLabel 10250 1450 0    49   Input ~ 0
Point 1A
Text GLabel 10250 1650 0    49   Input ~ 0
Point 1B
Text GLabel 10250 2450 0    49   Input ~ 0
Point 2A
Text GLabel 10250 2650 0    49   Input ~ 0
Point 2B
Text GLabel 10250 3400 0    49   Input ~ 0
Point 3A
Text GLabel 10250 3600 0    49   Input ~ 0
Point 3B
Text GLabel 10250 4250 0    49   Input ~ 0
Point 4A
Text GLabel 10250 4450 0    49   Input ~ 0
Point 4B
$Comp
L GND #PWR011
U 1 1 59514AEF
P 10250 1550
F 0 "#PWR011" H 10250 1550 30  0001 C CNN
F 1 "GND" H 10250 1480 30  0001 C CNN
F 2 "" H 10250 1550 60  0000 C CNN
F 3 "" H 10250 1550 60  0000 C CNN
	1    10250 1550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR012
U 1 1 59514B0D
P 10250 2550
F 0 "#PWR012" H 10250 2550 30  0001 C CNN
F 1 "GND" H 10250 2480 30  0001 C CNN
F 2 "" H 10250 2550 60  0000 C CNN
F 3 "" H 10250 2550 60  0000 C CNN
	1    10250 2550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR013
U 1 1 59514B1C
P 10250 3500
F 0 "#PWR013" H 10250 3500 30  0001 C CNN
F 1 "GND" H 10250 3430 30  0001 C CNN
F 2 "" H 10250 3500 60  0000 C CNN
F 3 "" H 10250 3500 60  0000 C CNN
	1    10250 3500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR014
U 1 1 59514B2B
P 10250 4350
F 0 "#PWR014" H 10250 4350 30  0001 C CNN
F 1 "GND" H 10250 4280 30  0001 C CNN
F 2 "" H 10250 4350 60  0000 C CNN
F 3 "" H 10250 4350 60  0000 C CNN
	1    10250 4350
	0    1    1    0   
$EndComp
$EndSCHEMATC