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
Sheet 2 5
Title "BeagleBone Black based OpenLCB/DCC Command Station"
Date "10 nov 2019"
Rev "1.0"
Comp "Deepwoods Software"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SN65HVD233-HT U202
U 1 1 5D9CDB32
P 4100 4500
F 0 "U202" H 4100 4450 30  0000 C CNN
F 1 "SN65HVD233-HT" H 4150 4550 30  0000 C CNN
F 2 "~" H 4100 4500 60  0000 C CNN
F 3 "~" H 4100 4500 60  0000 C CNN
F 4 "595-SN65HVD233SJD " H 4100 4500 60  0001 C CNN "Mouser Part Number"
	1    4100 4500
	1    0    0    -1  
$EndComp
$Comp
L TCAN332DR U201
U 1 1 5D9CDB33
P 4100 3400
F 0 "U201" H 4100 3350 30  0000 C CNN
F 1 "TCAN332DR" H 4100 3450 30  0000 C CNN
F 2 "~" H 4100 3400 60  0000 C CNN
F 3 "~" H 4100 3400 60  0000 C CNN
F 4 "595-TCAN332DR" H 4100 3400 60  0001 C CNN "Mouser Part Number"
	1    4100 3400
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR020
U 1 1 5D9CDB34
P 4100 2900
F 0 "#PWR020" H 4100 3000 40  0001 C CNN
F 1 "+3V3" H 4100 3025 40  0000 C CNN
F 2 "" H 4100 2900 60  0000 C CNN
F 3 "" H 4100 2900 60  0000 C CNN
	1    4100 2900
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR021
U 1 1 5D9CDB35
P 4100 4050
F 0 "#PWR021" H 4100 4150 40  0001 C CNN
F 1 "+3V3" H 4100 4175 40  0000 C CNN
F 2 "" H 4100 4050 60  0000 C CNN
F 3 "" H 4100 4050 60  0000 C CNN
	1    4100 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 5D9CDB36
P 4100 3800
F 0 "#PWR022" H 4100 3800 30  0001 C CNN
F 1 "GND" H 4100 3730 30  0001 C CNN
F 2 "" H 4100 3800 60  0000 C CNN
F 3 "" H 4100 3800 60  0000 C CNN
	1    4100 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 5D9CDB37
P 4100 4950
F 0 "#PWR023" H 4100 4950 30  0001 C CNN
F 1 "GND" H 4100 4880 30  0001 C CNN
F 2 "" H 4100 4950 60  0000 C CNN
F 3 "" H 4100 4950 60  0000 C CNN
	1    4100 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2900 4100 3050
Wire Wire Line
	4100 3750 4100 3800
Wire Wire Line
	4100 4050 4100 4150
Wire Wire Line
	4100 4850 4100 4950
Wire Wire Line
	3850 4600 3850 4900
Wire Wire Line
	3850 4900 4650 4900
Connection ~ 4100 4900
Connection ~ 3850 4700
Text HLabel 3600 4300 0    25   Input ~ 0
CAN_TX
Text HLabel 3600 4400 0    25   Input ~ 0
CAN_RX
Wire Wire Line
	3600 4300 3850 4300
Wire Wire Line
	3600 4400 3850 4400
Wire Wire Line
	3850 3200 3800 3200
Wire Wire Line
	3800 3200 3800 4300
Connection ~ 3800 4300
Wire Wire Line
	3850 3300 3750 3300
Wire Wire Line
	3750 3300 3750 4400
Connection ~ 3750 4400
$Comp
L C C201
U 1 1 5D9CDB38
P 4650 3800
F 0 "C201" H 4650 3900 40  0000 L CNN
F 1 ".1 uf" H 4656 3715 40  0000 L CNN
F 2 "~" H 4688 3650 30  0000 C CNN
F 3 "~" H 4650 3800 60  0000 C CNN
F 4 "21RZ310-RC" H 4650 3800 60  0001 C CNN "Mouser Part Number"
	1    4650 3800
	1    0    0    -1  
$EndComp
$Comp
L CP1 C202
U 1 1 5D9CDB39
P 5000 3800
F 0 "C202" H 5050 3900 50  0000 L CNN
F 1 "15 uf 63V" H 5050 3700 50  0000 L CNN
F 2 "~" H 5000 3800 60  0000 C CNN
F 3 "~" H 5000 3800 60  0000 C CNN
F 4 "710-860080773002" H 5000 3800 60  0001 C CNN "Mouser Part Number"
	1    5000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3000 4650 3000
Wire Wire Line
	4650 3000 4650 3600
Connection ~ 4100 3000
Wire Wire Line
	4650 3600 5000 3600
Wire Wire Line
	5000 4000 4650 4000
Wire Wire Line
	4650 4000 4650 4900
Wire Wire Line
	4350 4350 4400 4350
Wire Wire Line
	4400 4350 4400 3250
Wire Wire Line
	4350 3250 7750 3250
Wire Wire Line
	4350 3550 4450 3550
Wire Wire Line
	4450 3100 4450 4650
Wire Wire Line
	4450 4650 4350 4650
Wire Wire Line
	4450 3100 7800 3100
Connection ~ 4450 3550
Connection ~ 4400 3250
Text Label 5400 3100 0    25   ~ 0
CANH
Text Label 5400 3250 0    25   ~ 0
CANL
$Comp
L R R201
U 1 1 5D9CDB3A
P 5850 3650
F 0 "R201" V 5930 3650 40  0000 C CNN
F 1 "60 Ohms" V 5857 3651 40  0000 C CNN
F 2 "~" V 5780 3650 30  0000 C CNN
F 3 "~" H 5850 3650 30  0000 C CNN
F 4 "71-RN60C60R0B/R" H 5850 3650 60  0001 C CNN "Mouser Part Number"
	1    5850 3650
	1    0    0    -1  
$EndComp
$Comp
L R R202
U 1 1 5D9CDB3B
P 6550 3650
F 0 "R202" V 6630 3650 40  0000 C CNN
F 1 "60 Ohms" V 6557 3651 40  0000 C CNN
F 2 "~" V 6480 3650 30  0000 C CNN
F 3 "~" H 6550 3650 30  0000 C CNN
F 4 "71-RN60C60R0B/R" H 6550 3650 60  0001 C CNN "Mouser Part Number"
	1    6550 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3400 5850 3100
Connection ~ 5850 3100
Wire Wire Line
	6550 3250 6550 3400
$Comp
L CONN_2X2 JP201
U 1 1 5D9CDB3C
P 6200 4200
F 0 "JP201" H 6200 4350 50  0000 C CNN
F 1 "Termination" H 6210 4070 40  0000 C CNN
F 2 "" H 6200 4200 60  0000 C CNN
F 3 "" H 6200 4200 60  0000 C CNN
F 4 "649-67997-404HLF" H 6200 4200 60  0001 C CNN "Mouser Part Number"
	1    6200 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3900 5750 3900
Wire Wire Line
	5750 3900 5750 4150
Wire Wire Line
	5750 4150 5800 4150
Wire Wire Line
	6550 3900 6700 3900
Wire Wire Line
	6700 3900 6700 4150
Wire Wire Line
	6700 4150 6600 4150
$Comp
L C C203
U 1 1 5D9CDB3D
P 6200 4750
F 0 "C203" H 6200 4850 40  0000 L CNN
F 1 "47 nf" H 6206 4665 40  0000 L CNN
F 2 "~" H 6238 4600 30  0000 C CNN
F 3 "~" H 6200 4750 60  0000 C CNN
F 4 "75-1C10Z5U473M050B" H 6200 4750 60  0001 C CNN "Mouser Part Number"
	1    6200 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 5D9CDB3E
P 6200 5100
F 0 "#PWR024" H 6200 5100 30  0001 C CNN
F 1 "GND" H 6200 5030 30  0001 C CNN
F 2 "" H 6200 5100 60  0000 C CNN
F 3 "" H 6200 5100 60  0000 C CNN
	1    6200 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4250 6600 4450
Wire Wire Line
	6600 4450 5800 4450
Wire Wire Line
	5800 4450 5800 4250
Wire Wire Line
	6200 4550 6200 4450
Connection ~ 6200 4450
Wire Wire Line
	6200 4950 6200 5100
$Comp
L RJ45 J202
U 1 1 5D9CDB3F
P 8350 4700
F 0 "J202" H 8550 5200 60  0000 C CNN
F 1 "RJ45" H 8200 5200 60  0000 C CNN
F 2 "" H 8350 4700 60  0000 C CNN
F 3 "" H 8350 4700 60  0000 C CNN
F 4 "710-615008144221" H 8350 4700 60  0001 C CNN "Mouser Part Number"
	1    8350 4700
	0    1    1    0   
$EndComp
$Comp
L RJ45 J201
U 1 1 5D9CDB40
P 8350 3050
F 0 "J201" H 8550 3550 60  0000 C CNN
F 1 "RJ45" H 8200 3550 60  0000 C CNN
F 2 "" H 8350 3050 60  0000 C CNN
F 3 "" H 8350 3050 60  0000 C CNN
F 4 "710-615008144221" H 8350 3050 60  0001 C CNN "Mouser Part Number"
	1    8350 3050
	0    1    1    0   
$EndComp
NoConn ~ 8700 3600
NoConn ~ 8700 5250
Wire Wire Line
	7800 2700 7800 4350
Wire Wire Line
	7800 2700 7900 2700
Wire Wire Line
	7800 4350 7900 4350
Connection ~ 7800 3100
Wire Wire Line
	7900 2800 7750 2800
Wire Wire Line
	7750 2800 7750 4450
Wire Wire Line
	7750 4450 7900 4450
Connection ~ 7750 3250
Connection ~ 6550 3250
Wire Wire Line
	7500 2900 7900 2900
Wire Wire Line
	7700 2900 7700 4550
Wire Wire Line
	7700 4550 7900 4550
Wire Wire Line
	7900 4650 7650 4650
Wire Wire Line
	7650 4650 7650 3000
Wire Wire Line
	7650 3000 7900 3000
Wire Wire Line
	7900 3100 7900 3150
Wire Wire Line
	7900 3150 7600 3150
Wire Wire Line
	7600 3150 7600 4750
Wire Wire Line
	7600 4750 7900 4750
Wire Wire Line
	7900 3200 7550 3200
Wire Wire Line
	7550 2900 7550 4850
Wire Wire Line
	7550 4850 7900 4850
Wire Wire Line
	7900 3300 7500 3300
Wire Wire Line
	7500 2900 7500 4950
Wire Wire Line
	7500 4950 7900 4950
Wire Wire Line
	7450 5050 7900 5050
Wire Wire Line
	7450 3400 7900 3400
Connection ~ 7700 2900
Connection ~ 7550 3200
Connection ~ 7550 2900
Connection ~ 7500 3300
$Comp
L CONN_2 T202
U 1 1 5D9CDB41
P 6800 2050
F 0 "T202" V 6750 2050 40  0000 C CNN
F 1 "+ 15 out -" V 6850 2050 40  0000 C CNN
F 2 "" H 6800 2050 60  0000 C CNN
F 3 "" H 6800 2050 60  0000 C CNN
F 4 "651-1725656" H 6800 2050 60  0001 C CNN "Mouser Part Number"
	1    6800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2150 6450 2950
Wire Wire Line
	6450 2950 7500 2950
Connection ~ 7450 3400
Connection ~ 7500 2950
$Comp
L DIODESCH D202
U 1 1 5D9CDB42
P 6150 1950
F 0 "D202" H 6150 2050 40  0000 C CNN
F 1 "SB240E" H 6150 1850 40  0000 C CNN
F 2 "~" H 6150 1950 60  0000 C CNN
F 3 "~" H 6150 1950 60  0000 C CNN
F 4 "625-SB240-E3" H 6150 1950 60  0001 C CNN "Mouser Part Number"
	1    6150 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1950 6350 1950
Wire Wire Line
	5350 1950 5950 1950
Wire Wire Line
	5800 1950 5800 3000
Wire Wire Line
	5800 3000 7450 3000
Wire Wire Line
	7450 3000 7450 5050
$Comp
L GND #PWR025
U 1 1 5D9CDB43
P 6750 2650
F 0 "#PWR025" H 6750 2650 30  0001 C CNN
F 1 "GND" H 6750 2580 30  0001 C CNN
F 2 "" H 6750 2650 60  0000 C CNN
F 3 "" H 6750 2650 60  0000 C CNN
	1    6750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2400 6750 2650
Wire Wire Line
	5900 2400 6750 2400
Connection ~ 6450 2400
$Comp
L CONN_2 T201
U 1 1 5D9CDB44
P 5850 1050
F 0 "T201" V 5800 1050 40  0000 C CNN
F 1 "+ 15 in -" V 5900 1050 40  0000 C CNN
F 2 "" H 5850 1050 60  0000 C CNN
F 3 "" H 5850 1050 60  0000 C CNN
F 4 "651-1725656" H 5850 1050 60  0001 C CNN "Mouser Part Number"
	1    5850 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 1400 5950 1850
Wire Wire Line
	5950 1850 5900 1850
Wire Wire Line
	5900 1850 5900 2400
$Comp
L DIODESCH D201
U 1 1 5D9CDB45
P 5750 1650
F 0 "D201" H 5750 1750 40  0000 C CNN
F 1 "SB240E" H 5750 1550 40  0000 C CNN
F 2 "~" H 5750 1650 60  0000 C CNN
F 3 "~" H 5750 1650 60  0000 C CNN
F 4 "625-SB240-E3" H 5750 1650 60  0001 C CNN "Mouser Part Number"
	1    5750 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 1400 5750 1450
Wire Wire Line
	5750 1950 5750 1850
Connection ~ 5800 1950
$Comp
L +12V #PWR026
U 1 1 5D9CDB46
P 5350 1800
F 0 "#PWR026" H 5350 1750 20  0001 C CNN
F 1 "+12V" H 5350 1900 30  0000 C CNN
F 2 "" H 5350 1800 60  0000 C CNN
F 3 "" H 5350 1800 60  0000 C CNN
	1    5350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1800 5350 1950
Connection ~ 5750 1950
Text Notes 800  3700 0    100  ~ 0
Use only one of U1 or U2, not both.\nU2 is the older through hole part\nand U1 is the newer SMD part.
Text HLabel 8100 3700 2    60   Input ~ 0
Alt_L
Text HLabel 8100 3900 2    60   Input ~ 0
Alt_H
Wire Wire Line
	7650 3700 8100 3700
Connection ~ 7650 3700
Wire Wire Line
	7600 3900 8100 3900
Connection ~ 7600 3900
Text HLabel 4650 3000 2    60   Input ~ 0
3V3
$EndSCHEMATC
