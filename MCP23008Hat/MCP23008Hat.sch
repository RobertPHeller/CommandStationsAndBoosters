EESchema Schematic File Version 2
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
LIBS:MCP23008Hat-cache
LIBS:MCP23008Hat-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "9 nov 2016"
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
P 1150 1050
F 0 "J0" H 1900 1300 60  0000 C CNN
F 1 "RPi_GPIO" H 1900 1200 60  0000 C CNN
F 2 "RPi_Hat:Pin_Header_Straight_2x20" H 1150 1050 60  0001 C CNN
F 3 "" H 1150 1050 60  0000 C CNN
	1    1150 1050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR01
U 1 1 581E215A
P 5050 1150
F 0 "#PWR01" H 5050 1110 30  0001 C CNN
F 1 "+3.3V" H 5050 1260 30  0000 C CNN
F 2 "" H 5050 1150 60  0000 C CNN
F 3 "" H 5050 1150 60  0000 C CNN
	1    5050 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1150 5050 1200
$Comp
L +3.3V #PWR02
U 1 1 581E216C
P 950 1050
F 0 "#PWR02" H 950 1010 30  0001 C CNN
F 1 "+3.3V" H 950 1160 30  0000 C CNN
F 2 "" H 950 1050 60  0000 C CNN
F 3 "" H 950 1050 60  0000 C CNN
	1    950  1050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR03
U 1 1 581E217B
P 850 1850
F 0 "#PWR03" H 850 1810 30  0001 C CNN
F 1 "+3.3V" H 850 1960 30  0000 C CNN
F 2 "" H 850 1850 60  0000 C CNN
F 3 "" H 850 1850 60  0000 C CNN
	1    850  1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1850 950  1850
$Comp
L GND #PWR04
U 1 1 581E218C
P 850 1500
F 0 "#PWR04" H 850 1500 30  0001 C CNN
F 1 "GND" H 850 1430 30  0001 C CNN
F 2 "" H 850 1500 60  0000 C CNN
F 3 "" H 850 1500 60  0000 C CNN
	1    850  1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 581E219B
P 850 2300
F 0 "#PWR05" H 850 2300 30  0001 C CNN
F 1 "GND" H 850 2230 30  0001 C CNN
F 2 "" H 850 2300 60  0000 C CNN
F 3 "" H 850 2300 60  0000 C CNN
	1    850  2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 581E21AA
P 850 3000
F 0 "#PWR06" H 850 3000 30  0001 C CNN
F 1 "GND" H 850 2930 30  0001 C CNN
F 2 "" H 850 3000 60  0000 C CNN
F 3 "" H 850 3000 60  0000 C CNN
	1    850  3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 581E21B9
P 2950 1300
F 0 "#PWR07" H 2950 1300 30  0001 C CNN
F 1 "GND" H 2950 1230 30  0001 C CNN
F 2 "" H 2950 1300 60  0000 C CNN
F 3 "" H 2950 1300 60  0000 C CNN
	1    2950 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 581E21C8
P 2950 1700
F 0 "#PWR08" H 2950 1700 30  0001 C CNN
F 1 "GND" H 2950 1630 30  0001 C CNN
F 2 "" H 2950 1700 60  0000 C CNN
F 3 "" H 2950 1700 60  0000 C CNN
	1    2950 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 581E21D7
P 2950 2000
F 0 "#PWR09" H 2950 2000 30  0001 C CNN
F 1 "GND" H 2950 1930 30  0001 C CNN
F 2 "" H 2950 2000 60  0000 C CNN
F 3 "" H 2950 2000 60  0000 C CNN
	1    2950 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 581E21E6
P 2950 2500
F 0 "#PWR010" H 2950 2500 30  0001 C CNN
F 1 "GND" H 2950 2430 30  0001 C CNN
F 2 "" H 2950 2500 60  0000 C CNN
F 3 "" H 2950 2500 60  0000 C CNN
	1    2950 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 581E21F5
P 2950 2700
F 0 "#PWR011" H 2950 2700 30  0001 C CNN
F 1 "GND" H 2950 2630 30  0001 C CNN
F 2 "" H 2950 2700 60  0000 C CNN
F 3 "" H 2950 2700 60  0000 C CNN
	1    2950 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1300 2950 1250
Wire Wire Line
	2950 1250 2850 1250
Wire Wire Line
	2950 1700 2950 1650
Wire Wire Line
	2950 1650 2850 1650
Wire Wire Line
	2950 2000 2950 1950
Wire Wire Line
	2950 1950 2850 1950
Wire Wire Line
	2950 2500 2950 2450
Wire Wire Line
	2950 2450 2850 2450
Wire Wire Line
	2950 2700 2950 2650
Wire Wire Line
	2950 2650 2850 2650
Wire Wire Line
	850  3000 850  2950
Wire Wire Line
	850  2950 950  2950
Wire Wire Line
	850  2300 850  2250
Wire Wire Line
	850  2250 950  2250
Wire Wire Line
	850  1500 850  1450
Wire Wire Line
	850  1450 950  1450
$Comp
L GND #PWR012
U 1 1 581E2257
P 5050 3000
F 0 "#PWR012" H 5050 3000 30  0001 C CNN
F 1 "GND" H 5050 2930 30  0001 C CNN
F 2 "" H 5050 3000 60  0000 C CNN
F 3 "" H 5050 3000 60  0000 C CNN
	1    5050 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2950 5050 3000
Wire Wire Line
	4300 1600 4300 600 
Wire Wire Line
	4300 600  600  600 
Wire Wire Line
	600  600  600  1250
Wire Wire Line
	600  1250 950  1250
Wire Wire Line
	4300 1700 4200 1700
Wire Wire Line
	4200 1700 4200 750 
Wire Wire Line
	4200 750  750  750 
Wire Wire Line
	750  750  750  1150
Wire Wire Line
	750  1150 950  1150
Text Label 4300 850  0    60   ~ 0
SCL
Text Label 4200 1000 2    60   ~ 0
SDA
$Comp
L CONN_3X2 J1
U 1 1 581E274B
P 3650 1950
F 0 "J1" H 3650 2200 50  0000 C CNN
F 1 "Address Jumper" V 3650 2000 40  0001 C CNN
F 2 "pin_adday_3x2" H 3650 1950 60  0000 C CNN
F 3 "~" H 3650 1950 60  0000 C CNN
	1    3650 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 581E27FE
P 3250 2100
F 0 "#PWR013" H 3250 2100 30  0001 C CNN
F 1 "GND" H 3250 2030 30  0001 C CNN
F 2 "" H 3250 2100 60  0000 C CNN
F 3 "" H 3250 2100 60  0000 C CNN
	1    3250 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1800 3250 2100
Connection ~ 3250 1900
Wire Wire Line
	4050 1800 4300 1800
Wire Wire Line
	4050 1900 4300 1900
Wire Wire Line
	4050 2000 4300 2000
Wire Wire Line
	4050 2350 4050 2050
Wire Wire Line
	4050 2050 4100 2050
Wire Wire Line
	4100 2050 4100 1800
Connection ~ 4100 1800
Wire Wire Line
	3650 2450 4150 2450
Wire Wire Line
	4150 2450 4150 1900
Connection ~ 4150 1900
Wire Wire Line
	3650 2550 4200 2550
Wire Wire Line
	4200 2550 4200 2000
Connection ~ 4200 2000
Wire Wire Line
	3650 2650 4250 2650
Wire Wire Line
	4250 2650 4250 2100
Wire Wire Line
	4250 2100 4300 2100
$Comp
L +3.3V #PWR014
U 1 1 581E2B3E
P 3650 2250
F 0 "#PWR014" H 3650 2210 30  0001 C CNN
F 1 "+3.3V" H 3650 2360 30  0000 C CNN
F 2 "" H 3650 2250 60  0000 C CNN
F 3 "" H 3650 2250 60  0000 C CNN
	1    3650 2250
	1    0    0    -1  
$EndComp
Connection ~ 3250 2000
Connection ~ 3250 1800
$Comp
L RR4 RR1
U 1 1 581E3D0F
P 3300 2700
F 0 "RR1" H 3450 2900 70  0000 C CNN
F 1 "10K Ohms" V 3300 2950 70  0000 C CNN
F 2 "SIL-5" H 3300 2700 60  0000 C CNN
F 3 "~" H 3300 2700 60  0000 C CNN
F 4 "652-4605X-1LF-1K" H 3300 2700 60  0001 C CNN "Mouser Part Number"
	1    3300 2700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3650 2350 4050 2350
$Comp
L C C1
U 1 1 581E3E20
P 3850 1300
F 0 "C1" H 3850 1400 40  0000 L CNN
F 1 ".1 uf" H 3856 1215 40  0000 L CNN
F 2 "C1" H 3888 1150 30  0000 C CNN
F 3 "~" H 3850 1300 60  0000 C CNN
	1    3850 1300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR015
U 1 1 581E3E2F
P 3850 1100
F 0 "#PWR015" H 3850 1060 30  0001 C CNN
F 1 "+3.3V" H 3850 1210 30  0000 C CNN
F 2 "" H 3850 1100 60  0000 C CNN
F 3 "" H 3850 1100 60  0000 C CNN
	1    3850 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 581E3E3E
P 3850 1500
F 0 "#PWR016" H 3850 1500 30  0001 C CNN
F 1 "GND" H 3850 1430 30  0001 C CNN
F 2 "" H 3850 1500 60  0000 C CNN
F 3 "" H 3850 1500 60  0000 C CNN
	1    3850 1500
	1    0    0    -1  
$EndComp
$Comp
L CONN_10 T1
U 1 1 581E3F5A
P 6500 1950
F 0 "T1" V 6450 1950 60  0000 C CNN
F 1 "CONN_10" V 6550 1950 60  0000 C CNN
F 2 "SIL-10" H 6500 1950 60  0000 C CNN
F 3 "~" H 6500 1950 60  0000 C CNN
	1    6500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1600 6150 1600
Wire Wire Line
	5750 1700 6150 1700
Wire Wire Line
	5750 1800 6150 1800
Wire Wire Line
	5750 1900 6150 1900
Wire Wire Line
	5750 2000 6150 2000
Wire Wire Line
	5750 2100 6150 2100
Wire Wire Line
	5750 2200 6150 2200
$Comp
L +3.3V #PWR017
U 1 1 581E4106
P 6150 1400
F 0 "#PWR017" H 6150 1360 30  0001 C CNN
F 1 "+3.3V" H 6150 1510 30  0000 C CNN
F 2 "" H 6150 1400 60  0000 C CNN
F 3 "" H 6150 1400 60  0000 C CNN
	1    6150 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 581E4115
P 6150 2550
F 0 "#PWR018" H 6150 2550 30  0001 C CNN
F 1 "GND" H 6150 2480 30  0001 C CNN
F 2 "" H 6150 2550 60  0000 C CNN
F 3 "" H 6150 2550 60  0000 C CNN
	1    6150 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2300 6150 2300
Wire Wire Line
	6150 2400 6150 2550
Wire Wire Line
	6150 1500 6150 1400
$Comp
L MCP23008 U1
U 1 1 581E42BF
P 5050 2000
F 0 "U1" H 5050 2200 60  0000 C CNN
F 1 "MCP23008" H 5000 2000 60  0000 C CNN
F 2 "~" H 5050 2000 60  0000 C CNN
F 3 "~" H 5050 2000 60  0000 C CNN
	1    5050 2000
	1    0    0    -1  
$EndComp
Connection ~ 3650 2650
Connection ~ 3650 2550
Connection ~ 3650 2450
Connection ~ 3650 2350
$EndSCHEMATC
