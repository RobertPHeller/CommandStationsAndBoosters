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
LIBS:pocketbeagle
LIBS:sn65hvd233-ht
LIBS:lm2574n-5
LIBS:tc442x
LIBS:PocketBeagleQuadSMCSense-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date "4 mar 2019"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L POCKETBEAGLE-P1 P1
U 1 1 5C7C1FE0
P 2850 2550
F 0 "P1" H 2850 2550 60  0000 C CNN
F 1 "POCKETBEAGLE-P1" H 2850 3700 60  0000 C CNN
F 2 "" H 2850 2550 60  0000 C CNN
F 3 "" H 2850 2550 60  0000 C CNN
	1    2850 2550
	1    0    0    -1  
$EndComp
$Comp
L POCKETBEAGLE-P2 P2
U 1 1 5C7C1FEF
P 5150 2550
F 0 "P2" H 5150 2550 60  0000 C CNN
F 1 "POCKETBEAGLE-P2" H 5150 3700 60  0000 C CNN
F 2 "" H 5150 2550 60  0000 C CNN
F 3 "" H 5150 2550 60  0000 C CNN
	1    5150 2550
	1    0    0    -1  
$EndComp
Text Label 4700 2850 2    60   ~ 0
CAN1_RX
Text Label 4700 2950 2    60   ~ 0
CAN1_TX
$Comp
L +3.3V #PWR01
U 1 1 5C7C3FF9
P 4000 2450
F 0 "#PWR01" H 4000 2410 30  0001 C CNN
F 1 "+3.3V" H 4000 2560 30  0000 C CNN
F 2 "" H 4000 2450 60  0000 C CNN
F 3 "" H 4000 2450 60  0000 C CNN
	1    4000 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5C7C401B
P 3650 2650
F 0 "#PWR02" H 3650 2650 30  0001 C CNN
F 1 "GND" H 3650 2580 30  0001 C CNN
F 2 "" H 3650 2650 60  0000 C CNN
F 3 "" H 3650 2650 60  0000 C CNN
	1    3650 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5C7C4038
P 4250 2550
F 0 "#PWR03" H 4250 2550 30  0001 C CNN
F 1 "GND" H 4250 2480 30  0001 C CNN
F 2 "" H 4250 2550 60  0000 C CNN
F 3 "" H 4250 2550 60  0000 C CNN
	1    4250 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5C7C406F
P 2050 2350
F 0 "#PWR04" H 2050 2350 30  0001 C CNN
F 1 "GND" H 2050 2280 30  0001 C CNN
F 2 "" H 2050 2350 60  0000 C CNN
F 3 "" H 2050 2350 60  0000 C CNN
	1    2050 2350
	0    1    1    0   
$EndComp
$Comp
L TCAN332DR U1
U 1 1 5C7C40A4
P 3950 5000
F 0 "U1" H 3950 4950 30  0000 C CNN
F 1 "TCAN332DR" H 3950 5050 30  0000 C CNN
F 2 "~" H 3950 5000 60  0000 C CNN
F 3 "~" H 3950 5000 60  0000 C CNN
	1    3950 5000
	1    0    0    -1  
$EndComp
$Comp
L SN65HVD233-HT U2
U 1 1 5C7C40B3
P 3950 6100
F 0 "U2" H 3950 6050 30  0000 C CNN
F 1 "SN65HVD233-HT" H 4000 6150 30  0000 C CNN
F 2 "~" H 3950 6100 60  0000 C CNN
F 3 "~" H 3950 6100 60  0000 C CNN
	1    3950 6100
	1    0    0    -1  
$EndComp
$Comp
L RJ45 J1
U 1 1 5C7C40D6
P 9700 3000
F 0 "J1" H 9900 3500 60  0000 C CNN
F 1 "RJ45" H 9550 3500 60  0000 C CNN
F 2 "" H 9700 3000 60  0000 C CNN
F 3 "" H 9700 3000 60  0000 C CNN
	1    9700 3000
	0    1    1    0   
$EndComp
$Comp
L RJ45 J2
U 1 1 5C7C40FE
P 9700 4950
F 0 "J2" H 9900 5450 60  0000 C CNN
F 1 "RJ45" H 9550 5450 60  0000 C CNN
F 2 "" H 9700 4950 60  0000 C CNN
F 3 "" H 9700 4950 60  0000 C CNN
	1    9700 4950
	0    1    1    0   
$EndComp
NoConn ~ 10050 3550
NoConn ~ 10050 5500
$Comp
L DIODESCH D1
U 1 1 5C7C4223
P 6350 1350
F 0 "D1" H 6350 1450 40  0000 C CNN
F 1 "SB240E" H 6350 1250 40  0000 C CNN
F 2 "~" H 6350 1350 60  0000 C CNN
F 3 "~" H 6350 1350 60  0000 C CNN
	1    6350 1350
	0    1    1    0   
$EndComp
$Comp
L DIODESCH D2
U 1 1 5C7C4232
P 7200 2000
F 0 "D2" H 7200 2100 40  0000 C CNN
F 1 "SB240E" H 7200 1900 40  0000 C CNN
F 2 "~" H 7200 2000 60  0000 C CNN
F 3 "~" H 7200 2000 60  0000 C CNN
	1    7200 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 T1
U 1 1 5C7C4241
P 6450 800
F 0 "T1" V 6400 800 40  0000 C CNN
F 1 "+ 15 in -" V 6500 800 40  0000 C CNN
F 2 "" H 6450 800 60  0000 C CNN
F 3 "" H 6450 800 60  0000 C CNN
	1    6450 800 
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 T2
U 1 1 5C7C4250
P 7750 2100
F 0 "T2" V 7700 2100 40  0000 C CNN
F 1 "+ 15 out -" V 7800 2100 40  0000 C CNN
F 2 "" H 7750 2100 60  0000 C CNN
F 3 "" H 7750 2100 60  0000 C CNN
	1    7750 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5C7C42F0
P 7000 2350
F 0 "#PWR05" H 7000 2350 30  0001 C CNN
F 1 "GND" H 7000 2280 30  0001 C CNN
F 2 "" H 7000 2350 60  0000 C CNN
F 3 "" H 7000 2350 60  0000 C CNN
	1    7000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2750 4700 2750
Wire Wire Line
	4000 2450 4000 2750
Wire Wire Line
	3300 2250 3750 2250
Wire Wire Line
	3750 2250 3750 2450
Wire Wire Line
	3750 2450 4000 2450
Wire Wire Line
	3300 2350 3650 2350
Wire Wire Line
	3650 2350 3650 2650
Wire Wire Line
	3300 2650 3550 2650
Wire Wire Line
	3550 2650 3550 2350
Connection ~ 3550 2350
Wire Wire Line
	4250 2350 4700 2350
Wire Wire Line
	4250 2350 4250 2550
Wire Wire Line
	4700 2650 4450 2650
Wire Wire Line
	4450 2650 4450 2350
Connection ~ 4450 2350
Wire Wire Line
	2400 2350 2050 2350
Wire Wire Line
	9250 2650 9100 2650
Wire Wire Line
	9100 2650 9100 4600
Wire Wire Line
	4600 4600 9250 4600
Wire Wire Line
	9250 2750 9000 2750
Wire Wire Line
	9000 2750 9000 4700
Wire Wire Line
	4500 4700 9250 4700
Wire Wire Line
	9250 4800 8900 4800
Wire Wire Line
	8900 4800 8900 2850
Wire Wire Line
	8900 2850 9250 2850
Wire Wire Line
	9250 2950 8800 2950
Wire Wire Line
	8800 2950 8800 4900
Wire Wire Line
	8800 4900 9250 4900
Wire Wire Line
	9250 5000 8700 5000
Wire Wire Line
	8700 5000 8700 3050
Wire Wire Line
	8700 3050 9250 3050
Wire Wire Line
	8600 3150 9250 3150
Wire Wire Line
	8600 3150 8600 5100
Wire Wire Line
	8600 5100 9250 5100
Wire Wire Line
	8500 5200 9250 5200
Wire Wire Line
	8500 2300 8500 5200
Wire Wire Line
	8500 3250 9250 3250
Wire Wire Line
	9250 3350 8400 3350
Wire Wire Line
	8400 3350 8400 5300
Wire Wire Line
	8400 5300 9250 5300
Wire Wire Line
	6550 1150 6550 2200
Wire Wire Line
	6550 2200 7400 2200
Wire Wire Line
	6350 1550 6350 3400
Wire Wire Line
	6350 2000 7000 2000
Wire Wire Line
	7000 2200 7000 2350
Connection ~ 7000 2200
Wire Wire Line
	8950 2300 8950 3150
Connection ~ 8950 2850
Connection ~ 8950 3150
Wire Wire Line
	7000 2300 8950 2300
Connection ~ 7000 2300
Connection ~ 8500 2300
Connection ~ 8500 3250
Wire Wire Line
	6350 3400 8400 3400
Connection ~ 6350 2000
Connection ~ 8400 3400
Connection ~ 9000 4700
Connection ~ 9100 4600
Text Label 8150 4600 2    60   ~ 0
CANH
Text Label 8150 4700 2    60   ~ 0
CANL
Text Label 3700 4800 2    60   ~ 0
CAN1_TX
Text Label 3700 4900 2    60   ~ 0
CAN1_RX
Text Label 3700 5900 2    60   ~ 0
CAN1_TX
Text Label 3700 6000 2    60   ~ 0
CAN1_RX
$Comp
L GND #PWR06
U 1 1 5C7C44D6
P 3950 6600
F 0 "#PWR06" H 3950 6600 30  0001 C CNN
F 1 "GND" H 3950 6530 30  0001 C CNN
F 2 "" H 3950 6600 60  0000 C CNN
F 3 "" H 3950 6600 60  0000 C CNN
	1    3950 6600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR07
U 1 1 5C7C44E5
P 3950 5650
F 0 "#PWR07" H 3950 5610 30  0001 C CNN
F 1 "+3.3V" H 3950 5760 30  0000 C CNN
F 2 "" H 3950 5650 60  0000 C CNN
F 3 "" H 3950 5650 60  0000 C CNN
	1    3950 5650
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR08
U 1 1 5C7C44F4
P 3950 4500
F 0 "#PWR08" H 3950 4460 30  0001 C CNN
F 1 "+3.3V" H 3950 4610 30  0000 C CNN
F 2 "" H 3950 4500 60  0000 C CNN
F 3 "" H 3950 4500 60  0000 C CNN
	1    3950 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5C7C4503
P 3950 5450
F 0 "#PWR09" H 3950 5450 30  0001 C CNN
F 1 "GND" H 3950 5380 30  0001 C CNN
F 2 "" H 3950 5450 60  0000 C CNN
F 3 "" H 3950 5450 60  0000 C CNN
	1    3950 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5350 3950 5450
Wire Wire Line
	3950 4650 3950 4500
Wire Wire Line
	3950 5650 3950 5750
Wire Wire Line
	3950 6450 3950 6600
Wire Wire Line
	3700 6200 3700 6500
Wire Wire Line
	3700 6500 3950 6500
Connection ~ 3950 6500
Connection ~ 3700 6300
$Comp
L C C1
U 1 1 5C7C46C3
P 4800 5450
F 0 "C1" H 4800 5550 40  0000 L CNN
F 1 ".1 uf" H 4806 5365 40  0000 L CNN
F 2 "~" H 4838 5300 30  0000 C CNN
F 3 "~" H 4800 5450 60  0000 C CNN
	1    4800 5450
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2
U 1 1 5C7C46D2
P 5200 5450
F 0 "C2" H 5250 5550 50  0000 L CNN
F 1 "15 uf, 15V" H 5250 5350 50  0000 L CNN
F 2 "~" H 5200 5450 60  0000 C CNN
F 3 "~" H 5200 5450 60  0000 C CNN
	1    5200 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5250 5200 5250
Wire Wire Line
	4800 5650 5200 5650
$Comp
L +3.3V #PWR010
U 1 1 5C7C4768
P 5000 5150
F 0 "#PWR010" H 5000 5110 30  0001 C CNN
F 1 "+3.3V" H 5000 5260 30  0000 C CNN
F 2 "" H 5000 5150 60  0000 C CNN
F 3 "" H 5000 5150 60  0000 C CNN
	1    5000 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5C7C4777
P 5000 5750
F 0 "#PWR011" H 5000 5750 30  0001 C CNN
F 1 "GND" H 5000 5680 30  0001 C CNN
F 2 "" H 5000 5750 60  0000 C CNN
F 3 "" H 5000 5750 60  0000 C CNN
	1    5000 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5750 5000 5650
Connection ~ 5000 5650
Wire Wire Line
	5000 5150 5000 5250
Connection ~ 5000 5250
$Comp
L R R1
U 1 1 5C7C482D
P 7100 5100
F 0 "R1" V 7180 5100 40  0000 C CNN
F 1 "60 Ohms" V 7107 5101 40  0000 C CNN
F 2 "~" V 7030 5100 30  0000 C CNN
F 3 "~" H 7100 5100 30  0000 C CNN
	1    7100 5100
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5C7C483C
P 7600 5100
F 0 "R2" V 7680 5100 40  0000 C CNN
F 1 "60 Ohms" V 7607 5101 40  0000 C CNN
F 2 "~" V 7530 5100 30  0000 C CNN
F 3 "~" H 7600 5100 30  0000 C CNN
	1    7600 5100
	1    0    0    -1  
$EndComp
$Comp
L CONN_2X2 JMP1
U 1 1 5C7C484B
P 7400 5650
F 0 "JMP1" H 7400 5800 50  0000 C CNN
F 1 "Termination" H 7410 5520 40  0000 C CNN
F 2 "" H 7400 5650 60  0000 C CNN
F 3 "" H 7400 5650 60  0000 C CNN
	1    7400 5650
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5C7C485A
P 7400 6100
F 0 "C3" H 7400 6200 40  0000 L CNN
F 1 "47 nf" H 7406 6015 40  0000 L CNN
F 2 "~" H 7438 5950 30  0000 C CNN
F 3 "~" H 7400 6100 60  0000 C CNN
	1    7400 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5C7C488B
P 7400 6450
F 0 "#PWR012" H 7400 6450 30  0001 C CNN
F 1 "GND" H 7400 6380 30  0001 C CNN
F 2 "" H 7400 6450 60  0000 C CNN
F 3 "" H 7400 6450 60  0000 C CNN
	1    7400 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 6300 7400 6450
Wire Wire Line
	7800 5850 7800 5700
Wire Wire Line
	7000 5850 7800 5850
Wire Wire Line
	7000 5850 7000 5700
Wire Wire Line
	7400 5900 7400 5850
Connection ~ 7400 5850
Wire Wire Line
	7800 5600 7800 5350
Wire Wire Line
	7800 5350 7600 5350
Wire Wire Line
	7100 5350 7000 5350
Wire Wire Line
	7000 5350 7000 5600
Wire Wire Line
	7100 4600 7100 4850
Wire Wire Line
	7600 4700 7600 4850
Text Notes 1850 5300 0    60   ~ 0
Use only one of U1 or U2, not both.\nU2 is the older through hole part\nand U1 is the newer SMD part.
Wire Wire Line
	4500 4700 4500 5950
Wire Wire Line
	4500 4850 4200 4850
Connection ~ 7600 4700
Wire Wire Line
	4500 5950 4200 5950
Connection ~ 4500 4850
Wire Wire Line
	4600 6250 4200 6250
Wire Wire Line
	4600 4600 4600 6250
Wire Wire Line
	4600 5150 4200 5150
Connection ~ 7100 4600
Connection ~ 4600 5150
Text Label 3300 1650 0    60   ~ 0
GPIO87
Text Label 3300 1750 0    60   ~ 0
GPIO89
Text Label 3300 2550 0    60   ~ 0
GPIO20
Text Label 3300 3250 0    60   ~ 0
GPIO26
Text Label 4700 3250 2    60   ~ 0
GPIO45
Text Label 4700 2550 2    60   ~ 0
GPIO27
Text Label 4700 2450 2    60   ~ 0
GPIO65
Text Label 4700 1750 2    60   ~ 0
GPIO23
Text Label 5600 1650 0    60   ~ 0
GPIO59
Text Label 5600 1750 0    60   ~ 0
GPIO58
Text Label 5600 1850 0    60   ~ 0
GPIO57
Text Label 5600 1950 0    60   ~ 0
GPIO60
Text Label 5600 2050 0    60   ~ 0
GPIO52
Text Label 5600 2450 0    60   ~ 0
GPIO47
Text Label 5600 2550 0    60   ~ 0
GPIO64
Text Label 5600 2650 0    60   ~ 0
GPIO46
Text Label 5600 2750 0    60   ~ 0
GPIO48
$Sheet
S 650  2850 1500 1600
U 5C7D285B
F0 "Power Supply" 50
F1 "PowerSupply.sch" 50
F2 "5V Out" O R 2150 3050 60 
F3 "12-15 Volt input" I R 2150 3750 60 
$EndSheet
Wire Wire Line
	2400 1650 2250 1650
Wire Wire Line
	2250 1650 2250 3050
Wire Wire Line
	2250 3050 2150 3050
Wire Wire Line
	2150 3750 7100 3750
Wire Wire Line
	7100 3750 7100 3400
Connection ~ 7100 3400
$Sheet
S 8250 850  1400 1100
U 5C7D527A
F0 "Quad SMC Sense" 50
F1 "QuadSMCSense.sch" 50
F2 "Motor 1" I L 8250 950 60 
F3 "Motor 2" I L 8250 1100 60 
F4 "Motor 4" I L 8250 1400 60 
F5 "Motor 3" I L 8250 1250 60 
F6 "Sense 1" O R 9650 1000 60 
F7 "Sense 2" O R 9650 1150 60 
F8 "Sense 3" O R 9650 1350 60 
F9 "Sense 4" O R 9650 1500 60 
$EndSheet
$Comp
L +12V #PWR013
U 1 1 5C7D5504
P 6800 1700
F 0 "#PWR013" H 6800 1650 20  0001 C CNN
F 1 "+12V" H 6800 1800 30  0000 C CNN
F 2 "" H 6800 1700 60  0000 C CNN
F 3 "" H 6800 1700 60  0000 C CNN
	1    6800 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1700 6800 2000
Connection ~ 6800 2000
Text Label 8250 950  2    60   ~ 0
GPIO20
Text Label 8250 1100 2    60   ~ 0
GPIO23
Text Label 8250 1250 2    60   ~ 0
GPIO26
Text Label 8250 1400 2    60   ~ 0
GPIO27
Text Label 9650 1000 0    60   ~ 0
GPIO45
Text Label 9650 1150 0    60   ~ 0
GPIO46
Text Label 9650 1350 0    60   ~ 0
GPIO47
Text Label 9650 1500 0    60   ~ 0
GPIO48
$EndSCHEMATC
