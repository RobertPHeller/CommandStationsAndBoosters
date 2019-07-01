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
LIBS:cat24c256w
LIBS:mct6h
LIBS:bridge
LIBS:QuadOCDectCape-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title ""
Date "30 jun 2019"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CAT24C256W U1
U 1 1 5C573FFA
P 5200 3650
F 0 "U1" H 5200 3650 60  0000 C CNN
F 1 "CAT24C256W" H 5200 3800 30  0000 C CNN
F 2 "~" H 5200 3650 60  0000 C CNN
F 3 "~" H 5200 3650 60  0000 C CNN
	1    5200 3650
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 5C574009
P 4650 3000
F 0 "R13" V 4730 3000 40  0000 C CNN
F 1 "4.75K Ohms" V 4657 3001 40  0000 C CNN
F 2 "~" V 4580 3000 30  0000 C CNN
F 3 "~" H 4650 3000 30  0000 C CNN
	1    4650 3000
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 5C574018
P 4450 3000
F 0 "R12" V 4530 3000 40  0000 C CNN
F 1 "4.75K Ohms" V 4457 3001 40  0000 C CNN
F 2 "~" V 4380 3000 30  0000 C CNN
F 3 "~" H 4450 3000 30  0000 C CNN
	1    4450 3000
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 5C574027
P 4200 3000
F 0 "R11" V 4280 3000 40  0000 C CNN
F 1 "4.75K Ohms" V 4207 3001 40  0000 C CNN
F 2 "~" V 4130 3000 30  0000 C CNN
F 3 "~" H 4200 3000 30  0000 C CNN
	1    4200 3000
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5C574036
P 3850 3000
F 0 "R10" V 3930 3000 40  0000 C CNN
F 1 "5.6K Ohms" V 3857 3001 40  0000 C CNN
F 2 "~" V 3780 3000 30  0000 C CNN
F 3 "~" H 3850 3000 30  0000 C CNN
	1    3850 3000
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5C574045
P 3650 3000
F 0 "R9" V 3730 3000 40  0000 C CNN
F 1 "5.6K Ohms" V 3657 3001 40  0000 C CNN
F 2 "~" V 3580 3000 30  0000 C CNN
F 3 "~" H 3650 3000 30  0000 C CNN
	1    3650 3000
	1    0    0    -1  
$EndComp
$Comp
L CONN_3X2 JMP1
U 1 1 5C574054
P 3550 3850
F 0 "JMP1" H 3550 4100 50  0000 C CNN
F 1 "WP 1 0" V 3550 3900 40  0000 C CNN
F 2 "" H 3550 3850 60  0000 C CNN
F 3 "" H 3550 3850 60  0000 C CNN
	1    3550 3850
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5C574063
P 6400 3600
F 0 "R14" V 6480 3600 40  0000 C CNN
F 1 "10K Ohms" V 6407 3601 40  0000 C CNN
F 2 "~" V 6330 3600 30  0000 C CNN
F 3 "~" H 6400 3600 30  0000 C CNN
	1    6400 3600
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5C57407C
P 6100 3550
F 0 "C1" H 6100 3650 40  0000 L CNN
F 1 ".1 uf" H 6106 3465 40  0000 L CNN
F 2 "~" H 6138 3400 30  0000 C CNN
F 3 "~" H 6100 3550 60  0000 C CNN
	1    6100 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 5C57408B
P 6100 4250
F 0 "#PWR024" H 6100 4250 30  0001 C CNN
F 1 "GND" H 6100 4180 30  0001 C CNN
F 2 "" H 6100 4250 60  0000 C CNN
F 3 "" H 6100 4250 60  0000 C CNN
	1    6100 4250
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR025
U 1 1 5C57409A
P 5900 2550
F 0 "#PWR025" H 5900 2400 50  0001 C CNN
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
L GND #PWR026
U 1 1 5C574113
P 3150 4200
F 0 "#PWR026" H 3150 4200 30  0001 C CNN
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
