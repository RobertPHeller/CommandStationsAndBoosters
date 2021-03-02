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
LIBS:pocketbeagle
LIBS:lm2574n-5
LIBS:lmd18200
LIBS:tmp36
LIBS:sn65hvd233-ht
LIBS:PocketBeagleCommandStation-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
Title "Pocket Beagle DCC Command Station"
Date "3 mar 2019"
Rev "A"
Comp "Deepwoods Software"
Comment1 "CAN Transceiver"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TCAN332DR U?
U 1 1 603E9439
P 4600 2950
F 0 "U?" H 4600 2900 30  0000 C CNN
F 1 "TCAN332DR" H 4600 3000 30  0000 C CNN
F 2 "" H 4600 2950 60  0000 C CNN
F 3 "" H 4600 2950 60  0000 C CNN
	1    4600 2950
	1    0    0    -1  
$EndComp
$Comp
L RJ45 J?
U 1 1 603E9465
P 7900 3950
F 0 "J?" H 8100 4450 50  0000 C CNN
F 1 "RJ45" H 7750 4450 50  0000 C CNN
F 2 "" H 7900 3950 50  0001 C CNN
F 3 "" H 7900 3950 50  0001 C CNN
	1    7900 3950
	0    1    1    0   
$EndComp
$Comp
L RJ45 J?
U 1 1 603E962A
P 7900 2500
F 0 "J?" H 8100 3000 50  0000 C CNN
F 1 "RJ45" H 7750 3000 50  0000 C CNN
F 2 "" H 7900 2500 50  0001 C CNN
F 3 "" H 7900 2500 50  0001 C CNN
	1    7900 2500
	0    1    1    0   
$EndComp
NoConn ~ 8250 3050
NoConn ~ 8250 4500
NoConn ~ 4350 3050
NoConn ~ 4350 3150
$Comp
L +3.3V #PWR?
U 1 1 603E987F
P 4600 2450
F 0 "#PWR?" H 4600 2300 50  0001 C CNN
F 1 "+3.3V" H 4600 2590 50  0000 C CNN
F 2 "" H 4600 2450 50  0001 C CNN
F 3 "" H 4600 2450 50  0001 C CNN
	1    4600 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 603E9899
P 4600 3500
F 0 "#PWR?" H 4600 3250 50  0001 C CNN
F 1 "GND" H 4600 3350 50  0000 C CNN
F 2 "" H 4600 3500 50  0001 C CNN
F 3 "" H 4600 3500 50  0001 C CNN
	1    4600 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 603E98B6
P 7400 3100
F 0 "#PWR?" H 7400 2850 50  0001 C CNN
F 1 "GND" H 7400 2950 50  0000 C CNN
F 2 "" H 7400 3100 50  0001 C CNN
F 3 "" H 7400 3100 50  0001 C CNN
	1    7400 3100
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 603E9986
P 5250 2450
F 0 "C?" H 5275 2550 50  0000 L CNN
F 1 ".1 uf" H 5275 2350 50  0000 L CNN
F 2 "" H 5288 2300 50  0001 C CNN
F 3 "" H 5250 2450 50  0001 C CNN
	1    5250 2450
	1    0    0    -1  
$EndComp
$Comp
L CP1 C?
U 1 1 603E99A7
P 5600 2450
F 0 "C?" H 5625 2550 50  0000 L CNN
F 1 "10 uf" H 5625 2350 50  0000 L CNN
F 2 "" H 5600 2450 50  0001 C CNN
F 3 "" H 5600 2450 50  0001 C CNN
	1    5600 2450
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x02_Odd_Even J?
U 1 1 603E9A42
P 5500 3850
F 0 "J?" H 5550 3950 50  0000 C CNN
F 1 "Termination" H 5550 3650 50  0000 C CNN
F 2 "" H 5500 3850 50  0001 C CNN
F 3 "" H 5500 3850 50  0001 C CNN
	1    5500 3850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 603E9AA5
P 5300 3400
F 0 "R?" V 5380 3400 50  0000 C CNN
F 1 "60 Ohms" V 5300 3400 50  0000 C CNN
F 2 "" V 5230 3400 50  0001 C CNN
F 3 "" H 5300 3400 50  0001 C CNN
	1    5300 3400
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 603E9AD2
P 5800 3400
F 0 "R?" V 5880 3400 50  0000 C CNN
F 1 "60 Ohms" V 5800 3400 50  0000 C CNN
F 2 "" V 5730 3400 50  0001 C CNN
F 3 "" H 5800 3400 50  0001 C CNN
	1    5800 3400
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 603E9C64
P 5550 4350
F 0 "C?" H 5575 4450 50  0000 L CNN
F 1 "47 nf" H 5575 4250 50  0000 L CNN
F 2 "" H 5588 4200 50  0001 C CNN
F 3 "" H 5550 4350 50  0001 C CNN
	1    5550 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 603E9C9B
P 5550 4750
F 0 "#PWR?" H 5550 4500 50  0001 C CNN
F 1 "GND" H 5550 4600 50  0000 C CNN
F 2 "" H 5550 4750 50  0001 C CNN
F 3 "" H 5550 4750 50  0001 C CNN
	1    5550 4750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 603E9D5D
P 5450 2150
F 0 "#PWR?" H 5450 2000 50  0001 C CNN
F 1 "+3.3V" H 5450 2290 50  0000 C CNN
F 2 "" H 5450 2150 50  0001 C CNN
F 3 "" H 5450 2150 50  0001 C CNN
	1    5450 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 603E9D83
P 5400 2600
F 0 "#PWR?" H 5400 2350 50  0001 C CNN
F 1 "GND" H 5400 2450 50  0000 C CNN
F 2 "" H 5400 2600 50  0001 C CNN
F 3 "" H 5400 2600 50  0001 C CNN
	1    5400 2600
	1    0    0    -1  
$EndComp
Text HLabel 3600 2700 0    60   Input ~ 0
CAN_TX
Text HLabel 3600 2850 0    60   Output ~ 0
CAN_RX
$Comp
L Screw_Terminal_01x02 T?
U 1 1 603E9FFA
P 5750 1200
F 0 "T?" H 5750 1300 50  0000 C CNN
F 1 "LCC Power Out" H 5750 1000 50  0000 C CNN
F 2 "" H 5750 1200 50  0001 C CNN
F 3 "" H 5750 1200 50  0001 C CNN
	1    5750 1200
	0    -1   -1   0   
$EndComp
$Comp
L Screw_Terminal_01x02 T?
U 1 1 603EA095
P 6800 1200
F 0 "T?" H 6800 1300 50  0000 C CNN
F 1 "LCC Power In" H 6800 1000 50  0000 C CNN
F 2 "" H 6800 1200 50  0001 C CNN
F 3 "" H 6800 1200 50  0001 C CNN
	1    6800 1200
	0    -1   -1   0   
$EndComp
$Comp
L D_Shockley D?
U 1 1 603EA1D1
P 5900 1650
F 0 "D?" H 5900 1750 50  0000 C CNN
F 1 "SB240" H 5900 1550 50  0000 C CNN
F 2 "" H 5900 1650 50  0001 C CNN
F 3 "" H 5900 1650 50  0001 C CNN
	1    5900 1650
	1    0    0    -1  
$EndComp
$Comp
L D_Shockley D?
U 1 1 603EA214
P 6650 1650
F 0 "D?" H 6650 1750 50  0000 C CNN
F 1 "SB240" H 6650 1550 50  0000 C CNN
F 2 "" H 6650 1650 50  0001 C CNN
F 3 "" H 6650 1650 50  0001 C CNN
	1    6650 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3600 7100 3600
Wire Wire Line
	7100 3600 7100 2150
Wire Wire Line
	7100 2150 7450 2150
Wire Wire Line
	7450 3700 7050 3700
Wire Wire Line
	7050 3700 7050 2250
Wire Wire Line
	7050 2250 7450 2250
Wire Wire Line
	7450 3800 7000 3800
Wire Wire Line
	7000 3800 7000 2350
Wire Wire Line
	7000 2350 7450 2350
Wire Wire Line
	7450 3900 6950 3900
Wire Wire Line
	6950 3900 6950 2450
Wire Wire Line
	6300 2450 7450 2450
Wire Wire Line
	7450 4000 6900 4000
Wire Wire Line
	6900 4000 6900 2550
Wire Wire Line
	6900 2550 7450 2550
Wire Wire Line
	7450 4100 6850 4100
Wire Wire Line
	6850 4100 6850 2650
Wire Wire Line
	6850 2650 7450 2650
Wire Wire Line
	7450 4200 6750 4200
Wire Wire Line
	6750 4200 6750 2750
Wire Wire Line
	6750 2750 7450 2750
Wire Wire Line
	6650 4300 7450 4300
Wire Wire Line
	6650 4300 6650 2850
Wire Wire Line
	6350 2850 7450 2850
Wire Wire Line
	4850 3100 7100 3100
Connection ~ 7100 3100
Wire Wire Line
	4850 2800 7050 2800
Connection ~ 7050 2800
Wire Wire Line
	7400 2350 7400 3100
Connection ~ 7400 2750
Connection ~ 7400 2650
Connection ~ 7400 2350
Wire Wire Line
	4600 3300 4600 3500
Wire Wire Line
	4600 2450 4600 2600
Wire Wire Line
	5300 3250 5300 2800
Connection ~ 5300 2800
Wire Wire Line
	5800 3250 5800 3100
Connection ~ 5800 3100
Wire Wire Line
	5300 3550 5300 3850
Wire Wire Line
	5800 3550 5800 3850
Wire Wire Line
	5300 3950 5300 4100
Wire Wire Line
	5300 4100 5800 4100
Wire Wire Line
	5800 4100 5800 3950
Wire Wire Line
	5550 4200 5550 4100
Connection ~ 5550 4100
Wire Wire Line
	5550 4750 5550 4500
Wire Wire Line
	5250 2600 5600 2600
Connection ~ 5400 2600
Wire Wire Line
	5600 2300 5250 2300
Wire Wire Line
	5450 2150 5450 2300
Connection ~ 5450 2300
Wire Wire Line
	3600 2700 4350 2700
Wire Wire Line
	4350 2700 4350 2750
Wire Wire Line
	3600 2850 4350 2850
Wire Wire Line
	6800 1400 6800 1650
Wire Wire Line
	6500 1650 6050 1650
Wire Wire Line
	5750 1650 5750 1400
Wire Wire Line
	6350 2850 6350 1650
Wire Wire Line
	6350 1650 6250 1650
Connection ~ 6250 1650
Connection ~ 6650 2850
Wire Wire Line
	5850 1400 5850 1500
Wire Wire Line
	5850 1500 6900 1500
Wire Wire Line
	6900 1400 6900 1800
$Comp
L GND #PWR?
U 1 1 603EA4B9
P 6900 1800
F 0 "#PWR?" H 6900 1550 50  0001 C CNN
F 1 "GND" H 6900 1650 50  0000 C CNN
F 2 "" H 6900 1800 50  0001 C CNN
F 3 "" H 6900 1800 50  0001 C CNN
	1    6900 1800
	1    0    0    -1  
$EndComp
Connection ~ 6900 1500
Text HLabel 6300 2450 0    60   BiDi ~ 0
ALT_L
Text HLabel 6300 2600 0    60   BiDi ~ 0
ALT_H
Connection ~ 6950 2450
Wire Wire Line
	6300 2600 6900 2600
Connection ~ 6900 2600
$EndSCHEMATC
