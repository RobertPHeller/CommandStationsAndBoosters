EESchema Schematic File Version 2
LIBS:mmpq2222a
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
LIBS:TivaInterchangeSMD-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date "11 mar 2018"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LM78L05ACZ U5
U 1 1 5AA53EE4
P 6050 2600
F 0 "U5" H 5850 2800 40  0000 C CNN
F 1 "LM78L05ACZ" H 6050 2800 40  0000 L CNN
F 2 "SOT89-3" H 6050 2700 30  0000 C CIN
F 3 "~" H 6050 2600 60  0000 C CNN
F 4 "512-KA78L05AIMTF" H 6050 2600 60  0001 C CNN "Mouser Part Number"
	1    6050 2600
	1    0    0    -1  
$EndComp
$Comp
L ISO1050DUB U4
U 1 1 5AA53EE5
P 5950 5100
F 0 "U4" H 5950 5400 60  0000 C CNN
F 1 "ISO1050DUB" H 5950 4900 60  0000 C CNN
F 2 "" H 5950 5100 60  0000 C CNN
F 3 "" H 5950 5100 60  0000 C CNN
F 4 "595-ISO1050DUBR" H 5950 5100 60  0001 C CNN "Mouser Part Number"
	1    5950 5100
	1    0    0    -1  
$EndComp
$Comp
L RJ45 J6
U 1 1 5AA53EE6
P 9600 2300
F 0 "J6" H 9800 2800 60  0000 C CNN
F 1 "RJ45" H 9450 2800 60  0000 C CNN
F 2 "~" H 9600 2300 60  0000 C CNN
F 3 "~" H 9600 2300 60  0000 C CNN
F 4 "710-615008144221" H 9600 2300 60  0001 C CNN "Mouser Part Number"
	1    9600 2300
	0    1    1    0   
$EndComp
$Comp
L RJ45 J7
U 1 1 5AA53EE7
P 9600 4150
F 0 "J7" H 9800 4650 60  0000 C CNN
F 1 "RJ45" H 9450 4650 60  0000 C CNN
F 2 "~" H 9600 4150 60  0000 C CNN
F 3 "~" H 9600 4150 60  0000 C CNN
F 4 "710-615008144221" H 9600 4150 60  0001 C CNN "Mouser Part Number"
	1    9600 4150
	0    1    1    0   
$EndComp
$Comp
L C C6
U 1 1 5AA53EE8
P 5500 2750
F 0 "C6" H 5500 2850 40  0000 L CNN
F 1 "0.33 uf" H 5506 2665 40  0000 L CNN
F 2 "~" H 5538 2600 30  0000 C CNN
F 3 "~" H 5500 2750 60  0000 C CNN
F 4 "75-1C10Z5U334M050B" H 5500 2750 60  0001 C CNN "Mouser Part Number"
	1    5500 2750
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5AA53EE9
P 6600 2750
F 0 "C7" H 6600 2850 40  0000 L CNN
F 1 ".1 uf" H 6606 2665 40  0000 L CNN
F 2 "~" H 6638 2600 30  0000 C CNN
F 3 "~" H 6600 2750 60  0000 C CNN
F 4 "21RZ310-RC" H 6600 2750 60  0001 C CNN "Mouser Part Number"
	1    6600 2750
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR063
U 1 1 5AA53EEA
P 6050 3050
F 0 "#PWR063" H 6050 3050 40  0001 C CNN
F 1 "GNDA" H 6050 2980 40  0000 C CNN
F 2 "" H 6050 3050 60  0000 C CNN
F 3 "" H 6050 3050 60  0000 C CNN
	1    6050 3050
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 T4
U 1 1 5AA53EEB
P 5600 950
F 0 "T4" V 5550 950 40  0000 C CNN
F 1 "12 Volts CAN Power In" V 5650 950 40  0000 C CNN
F 2 "~" H 5600 950 60  0000 C CNN
F 3 "~" H 5600 950 60  0000 C CNN
F 4 "571-1776118-2" V 5600 950 60  0001 C CNN "Mouser Part Number"
	1    5600 950 
	0    -1   -1   0   
$EndComp
$Comp
L GNDA #PWR064
U 1 1 5AA53EEC
P 5700 1450
F 0 "#PWR064" H 5700 1450 40  0001 C CNN
F 1 "GNDA" H 5700 1380 40  0000 C CNN
F 2 "" H 5700 1450 60  0000 C CNN
F 3 "" H 5700 1450 60  0000 C CNN
	1    5700 1450
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR065
U 1 1 5AA53EED
P 9950 2950
F 0 "#PWR065" H 9950 2950 40  0001 C CNN
F 1 "GNDA" H 9950 2880 40  0000 C CNN
F 2 "" H 9950 2950 60  0000 C CNN
F 3 "" H 9950 2950 60  0000 C CNN
	1    9950 2950
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR066
U 1 1 5AA53EEE
P 9950 4850
F 0 "#PWR066" H 9950 4850 40  0001 C CNN
F 1 "GNDA" H 9950 4780 40  0000 C CNN
F 2 "" H 9950 4850 60  0000 C CNN
F 3 "" H 9950 4850 60  0000 C CNN
	1    9950 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1450 5700 1300
Wire Wire Line
	9950 2850 9950 2950
Wire Wire Line
	9950 4700 9950 4850
Wire Wire Line
	9000 2650 9150 2650
Wire Wire Line
	9000 2650 9000 4500
Wire Wire Line
	9000 4500 9150 4500
Wire Wire Line
	9150 2550 8900 2550
Wire Wire Line
	8900 2550 8900 4400
Wire Wire Line
	8900 4400 9150 4400
Wire Wire Line
	8800 2450 9150 2450
Wire Wire Line
	8800 2450 8800 4300
Wire Wire Line
	8800 4300 9150 4300
Wire Wire Line
	9150 4200 8700 4200
Wire Wire Line
	8700 4200 8700 2350
Wire Wire Line
	8700 2350 9150 2350
Wire Wire Line
	9150 2250 8600 2250
Wire Wire Line
	8600 2250 8600 4100
Wire Wire Line
	8600 4100 9150 4100
Wire Wire Line
	8500 4000 9150 4000
Wire Wire Line
	8500 4000 8500 2150
Wire Wire Line
	8500 2150 9150 2150
Wire Wire Line
	9150 2050 8400 2050
Wire Wire Line
	8400 2050 8400 5200
Wire Wire Line
	8400 3900 9150 3900
Wire Wire Line
	9150 3800 8300 3800
Wire Wire Line
	8300 5000 8300 1950
Wire Wire Line
	8300 1950 9150 1950
Wire Wire Line
	9050 4000 9050 4700
Connection ~ 9050 4300
Connection ~ 9050 4000
Connection ~ 9050 4400
Wire Wire Line
	9050 4700 9950 4700
Wire Wire Line
	5700 1700 9100 1700
Wire Wire Line
	9100 1700 9100 2650
Connection ~ 9100 2650
Wire Wire Line
	5500 2550 5650 2550
Connection ~ 5600 2550
Wire Wire Line
	6450 2550 6750 2550
Wire Wire Line
	5500 2950 6600 2950
Wire Wire Line
	6050 2850 6050 3050
Connection ~ 6050 2950
Connection ~ 6600 2550
$Comp
L GNDA #PWR067
U 1 1 5AA53EEF
P 6650 5550
F 0 "#PWR067" H 6650 5550 40  0001 C CNN
F 1 "GNDA" H 6650 5480 40  0000 C CNN
F 2 "" H 6650 5550 60  0000 C CNN
F 3 "" H 6650 5550 60  0000 C CNN
	1    6650 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5400 6650 5550
Wire Wire Line
	6650 5000 8300 5000
Connection ~ 8300 3800
Wire Wire Line
	8400 5200 6650 5200
Connection ~ 8400 3900
Connection ~ 6050 2850
$Comp
L CONN_2X2 J5
U 1 1 5AA53EF3
P 7650 5900
F 0 "J5" H 7650 6050 50  0000 C CNN
F 1 "Termination" H 7660 5770 40  0000 C CNN
F 2 "~" H 7650 5900 60  0000 C CNN
F 3 "~" H 7650 5900 60  0000 C CNN
F 4 "649-67997-404HLF" H 7650 5900 60  0001 C CNN "Mouser Part Number"
	1    7650 5900
	1    0    0    -1  
$EndComp
$Comp
L R R54
U 1 1 5AA53EF4
P 8050 5500
F 0 "R54" V 8130 5500 40  0000 C CNN
F 1 "60 Ohms" V 8057 5501 40  0000 C CNN
F 2 "~" V 7980 5500 30  0000 C CNN
F 3 "~" H 8050 5500 30  0000 C CNN
F 4 "71-RN60C60R0B/R" V 8050 5500 60  0001 C CNN "Mouser Part Number"
	1    8050 5500
	1    0    0    -1  
$EndComp
$Comp
L R R53
U 1 1 5AA53EF5
P 7250 5550
F 0 "R53" V 7330 5550 40  0000 C CNN
F 1 "60 Ohms" V 7257 5551 40  0000 C CNN
F 2 "~" V 7180 5550 30  0000 C CNN
F 3 "~" H 7250 5550 30  0000 C CNN
F 4 "71-RN60C60R0B/R" V 7250 5550 60  0001 C CNN "Mouser Part Number"
	1    7250 5550
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5AA53EF6
P 8050 6450
F 0 "C8" H 8050 6550 40  0000 L CNN
F 1 "47 nf" H 8056 6365 40  0000 L CNN
F 2 "~" H 8088 6300 30  0000 C CNN
F 3 "~" H 8050 6450 60  0000 C CNN
F 4 "75-1C10Z5U473M050B" H 8050 6450 60  0001 C CNN "Mouser Part Number"
	1    8050 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5250 8050 5000
Connection ~ 8050 5000
Wire Wire Line
	7250 5300 7250 5200
Connection ~ 7250 5200
Wire Wire Line
	8050 5850 8050 5750
Wire Wire Line
	7250 5850 7250 5800
Wire Wire Line
	8050 5950 8050 6250
Wire Wire Line
	7250 5950 7250 6150
Wire Wire Line
	7250 6150 8050 6150
Connection ~ 8050 6150
$Comp
L GNDA #PWR068
U 1 1 5AA53EF7
P 8050 6800
F 0 "#PWR068" H 8050 6800 40  0001 C CNN
F 1 "GNDA" H 8050 6730 40  0000 C CNN
F 2 "" H 8050 6800 60  0000 C CNN
F 3 "" H 8050 6800 60  0000 C CNN
	1    8050 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 6650 8050 6800
Wire Wire Line
	6750 2550 6750 4800
Wire Wire Line
	6750 4800 6650 4800
Text HLabel 5250 5000 0    60   Input ~ 0
CAN Rx
Text HLabel 5250 5200 0    60   Input ~ 0
CAN Tx
$Comp
L GND #PWR069
U 1 1 5AA53F55
P 5250 5400
F 0 "#PWR069" H 5250 5400 30  0001 C CNN
F 1 "GND" H 5250 5330 30  0001 C CNN
F 2 "" H 5250 5400 60  0000 C CNN
F 3 "" H 5250 5400 60  0000 C CNN
	1    5250 5400
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR070
U 1 1 5AA53F64
P 5250 4800
F 0 "#PWR070" H 5250 4900 30  0001 C CNN
F 1 "VCC" H 5250 4900 30  0000 C CNN
F 2 "" H 5250 4800 60  0000 C CNN
F 3 "" H 5250 4800 60  0000 C CNN
	1    5250 4800
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 T5
U 1 1 5AA53F73
P 7150 1950
F 0 "T5" V 7100 1950 40  0000 C CNN
F 1 "CAN Power out" V 7200 1950 40  0000 C CNN
F 2 "~" H 7150 1950 60  0000 C CNN
F 3 "~" H 7150 1950 60  0000 C CNN
	1    7150 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1850 6800 1700
$Comp
L GNDA #PWR071
U 1 1 5AA54056
P 6800 2050
F 0 "#PWR071" H 6800 2050 40  0001 C CNN
F 1 "GNDA" H 6800 1980 40  0000 C CNN
F 2 "" H 6800 2050 60  0000 C CNN
F 3 "" H 6800 2050 60  0000 C CNN
	1    6800 2050
	0    1    1    0   
$EndComp
$Comp
L DOUBLE_SCHOTTKY D3
U 1 1 5AA587E4
P 5500 1700
F 0 "D3" H 5600 1600 40  0000 C CNN
F 1 "BAS40-04" H 5500 1800 40  0000 C CNN
F 2 "SOT23-3" H 5500 1700 60  0001 C CNN
F 3 "~" H 5500 1700 60  0000 C CNN
F 4 "821-BAS40-04" H 5500 1700 60  0001 C CNN "Mouser Part Number"
	1    5500 1700
	0    -1   1    0   
$EndComp
Wire Wire Line
	5500 2100 5600 2100
Wire Wire Line
	5600 2100 5600 2550
Connection ~ 6800 1700
$EndSCHEMATC
