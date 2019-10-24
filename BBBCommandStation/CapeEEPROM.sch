EESchema Schematic File Version 2
LIBS:valves
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
LIBS:sn65hvd233-ht
LIBS:cat24c256w
LIBS:lmd18200
LIBS:sn75als174
LIBS:tmp36
LIBS:cl2
LIBS:dpdt
LIBS:gbu4a
LIBS:BBBCommandStation-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title "BeagleBone Black based OpenLCB/DCC Command Station"
Date "24 oct 2019"
Rev "1.0"
Comp "Deepwoods Software"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CAT24C256W U301
U 1 1 5D9CDD29
P 5200 3650
F 0 "U301" H 5200 3650 60  0000 C CNN
F 1 "CAT24C256W" H 5200 3800 30  0000 C CNN
F 2 "~" H 5200 3650 60  0000 C CNN
F 3 "~" H 5200 3650 60  0000 C CNN
F 4 "698-CAT24C256WI-GT3" H 5200 3650 60  0001 C CNN "Mouser Part Number"
	1    5200 3650
	1    0    0    -1  
$EndComp
$Comp
L R R305
U 1 1 5D9CDD2A
P 4650 3000
F 0 "R305" V 4730 3000 40  0000 C CNN
F 1 "4.75K Ohms" V 4657 3001 40  0000 C CNN
F 2 "~" V 4580 3000 30  0000 C CNN
F 3 "~" H 4650 3000 30  0000 C CNN
F 4 "603-CFR-25JR-524K7" H 4650 3000 60  0001 C CNN "Mouser Part Number"
	1    4650 3000
	1    0    0    -1  
$EndComp
$Comp
L R R304
U 1 1 5D9CDD2B
P 4450 3000
F 0 "R304" V 4530 3000 40  0000 C CNN
F 1 "4.75K Ohms" V 4457 3001 40  0000 C CNN
F 2 "~" V 4380 3000 30  0000 C CNN
F 3 "~" H 4450 3000 30  0000 C CNN
F 4 "603-CFR-25JR-524K7" H 4450 3000 60  0001 C CNN "Mouser Part Number"
	1    4450 3000
	1    0    0    -1  
$EndComp
$Comp
L R R303
U 1 1 5D9CDD2C
P 4200 3000
F 0 "R303" V 4280 3000 40  0000 C CNN
F 1 "4.75K Ohms" V 4207 3001 40  0000 C CNN
F 2 "~" V 4130 3000 30  0000 C CNN
F 3 "~" H 4200 3000 30  0000 C CNN
F 4 "603-CFR-25JR-524K7" H 4200 3000 60  0001 C CNN "Mouser Part Number"
	1    4200 3000
	1    0    0    -1  
$EndComp
$Comp
L R R302
U 1 1 5D9CDD2D
P 3850 3000
F 0 "R302" V 3930 3000 40  0000 C CNN
F 1 "5.6K Ohms" V 3857 3001 40  0000 C CNN
F 2 "~" V 3780 3000 30  0000 C CNN
F 3 "~" H 3850 3000 30  0000 C CNN
F 4 "603-CFR-25JR-525K6" H 3850 3000 60  0001 C CNN "Mouser Part Number"
	1    3850 3000
	1    0    0    -1  
$EndComp
$Comp
L R R301
U 1 1 5D9CDD2E
P 3650 3000
F 0 "R301" V 3730 3000 40  0000 C CNN
F 1 "5.6K Ohms" V 3657 3001 40  0000 C CNN
F 2 "~" V 3580 3000 30  0000 C CNN
F 3 "~" H 3650 3000 30  0000 C CNN
F 4 "603-CFR-25JR-525K6" H 3650 3000 60  0001 C CNN "Mouser Part Number"
	1    3650 3000
	1    0    0    -1  
$EndComp
$Comp
L CONN_3X2 P301
U 1 1 5D9CDD2F
P 3550 3850
F 0 "P301" H 3550 4100 50  0000 C CNN
F 1 "WP 1 0" V 3550 3900 40  0000 C CNN
F 2 "" H 3550 3850 60  0000 C CNN
F 3 "" H 3550 3850 60  0000 C CNN
F 4 "649-67996-406HLF" H 3550 3850 60  0001 C CNN "Mouser Part Number"
	1    3550 3850
	1    0    0    -1  
$EndComp
$Comp
L R R306
U 1 1 5D9CDD30
P 6400 3600
F 0 "R306" V 6480 3600 40  0000 C CNN
F 1 "10K Ohms" V 6407 3601 40  0000 C CNN
F 2 "~" V 6330 3600 30  0000 C CNN
F 3 "~" H 6400 3600 30  0000 C CNN
F 4 "603-CFR-25JR-5210K" H 6400 3600 60  0001 C CNN "Mouser Part Number"
	1    6400 3600
	1    0    0    -1  
$EndComp
$Comp
L C C301
U 1 1 5D9CDD31
P 6100 3550
F 0 "C301" H 6100 3650 40  0000 L CNN
F 1 ".1 uf" H 6106 3465 40  0000 L CNN
F 2 "~" H 6138 3400 30  0000 C CNN
F 3 "~" H 6100 3550 60  0000 C CNN
F 4 "581-SR201C104KARTR1" H 6100 3550 60  0001 C CNN "Mouser Part Number"
	1    6100 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 5D9CDD32
P 6100 4250
F 0 "#PWR027" H 6100 4250 30  0001 C CNN
F 1 "GND" H 6100 4180 30  0001 C CNN
F 2 "" H 6100 4250 60  0000 C CNN
F 3 "" H 6100 4250 60  0000 C CNN
	1    6100 4250
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR028
U 1 1 5D9CDD33
P 5900 2550
F 0 "#PWR028" H 5900 2400 50  0001 C CNN
F 1 "+3V3" H 5900 2690 50  0000 C CNN
F 2 "~" H 5900 2550 60  0000 C CNN
F 3 "~" H 5900 2550 60  0000 C CNN
	1    5900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2750 6100 2750
Connection ~ 3850 2750
Connection ~ 4200 2750
Connection ~ 4450 2750
Wire Wire Line
	6100 2750 6100 3350
Connection ~ 4650 2750
Wire Wire Line
	5900 2550 5900 2750
Connection ~ 5900 2750
Wire Wire Line
	5650 3350 6400 3350
Wire Wire Line
	5700 3350 5700 2750
Connection ~ 5700 2750
Connection ~ 5700 3350
Connection ~ 6100 3350
Wire Wire Line
	5650 3550 5850 3550
Wire Wire Line
	5850 3550 5850 3750
Wire Wire Line
	5850 3750 6100 3750
Wire Wire Line
	6400 3850 5650 3850
Wire Wire Line
	6100 3750 6100 4250
$Comp
L GND #PWR029
U 1 1 5D9CDD34
P 3150 4200
F 0 "#PWR029" H 3150 4200 30  0001 C CNN
F 1 "GND" H 3150 4130 30  0001 C CNN
F 2 "" H 3150 4200 60  0000 C CNN
F 3 "" H 3150 4200 60  0000 C CNN
	1    3150 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3700 3150 4200
Connection ~ 3150 3800
Connection ~ 3150 3900
Wire Wire Line
	3950 3700 4750 3700
Wire Wire Line
	3950 3800 4750 3800
Wire Wire Line
	4650 3250 4650 3900
Wire Wire Line
	4650 3900 4750 3900
Wire Wire Line
	4450 3250 4450 3800
Connection ~ 4450 3800
Wire Wire Line
	4200 3250 4200 3700
Connection ~ 4200 3700
Wire Wire Line
	4750 3350 3350 3350
Wire Wire Line
	4750 3450 3350 3450
Wire Wire Line
	3850 3250 3850 3350
Connection ~ 3850 3350
Wire Wire Line
	3650 3250 3650 3450
Connection ~ 3650 3450
Wire Wire Line
	5750 3850 5750 4100
Wire Wire Line
	5750 4100 3950 4100
Wire Wire Line
	3950 4100 3950 3900
Connection ~ 5750 3850
Text HLabel 3350 3350 0    60   Input ~ 0
SCL
Text HLabel 3350 3450 0    60   BiDi ~ 0
SDA
$EndSCHEMATC
