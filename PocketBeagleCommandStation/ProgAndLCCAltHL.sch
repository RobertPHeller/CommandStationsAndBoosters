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
LIBS:L298N
LIBS:PocketBeagleCommandStation-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
Title "Pocket Beagle DCC Command Station"
Date "3 mar 2019"
Rev "A"
Comp "Deepwoods Software"
Comment1 "Programming and Alt drivers"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L L298N U4
U 1 1 603ED4D7
P 5350 2900
F 0 "U4" H 4850 3700 50  0000 L BNN
F 1 "L298N" H 4850 2100 50  0000 L BNN
F 2 "Drivers:TO127P2020X500X2100-15" H 5350 2900 50  0001 L BNN
F 3 "" H 5350 2900 50  0001 L BNN
F 4 "5.0mm" H 5350 2900 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "" H 5350 2900 50  0001 L BNN "PARTREV"
F 6 "IPC-7351B" H 5350 2900 50  0001 L BNN "STANDARD"
F 7 "STMicroelectronics" H 5350 2900 50  0001 L BNN "MANUFACTURER"
	1    5350 2900
	1    0    0    -1  
$EndComp
$Comp
L 2N3904 Q3
U 1 1 603EDA9E
P 3250 2700
F 0 "Q3" H 3450 2775 50  0000 L CNN
F 1 "2N3904" H 3450 2700 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 3450 2625 50  0001 L CIN
F 3 "" H 3250 2700 50  0001 L CNN
	1    3250 2700
	1    0    0    -1  
$EndComp
$Comp
L 2N3904 Q4
U 1 1 603EDAE9
P 3250 3500
F 0 "Q4" H 3450 3575 50  0000 L CNN
F 1 "2N3904" H 3450 3500 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 3450 3425 50  0001 L CIN
F 3 "" H 3250 3500 50  0001 L CNN
	1    3250 3500
	1    0    0    -1  
$EndComp
$Comp
L LM358 U5
U 1 1 603EDBFA
P 6950 3250
F 0 "U5" H 6950 3450 50  0000 L CNN
F 1 "LM358" H 6950 3050 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 6950 3250 50  0001 C CNN
F 3 "" H 6950 3250 50  0001 C CNN
	1    6950 3250
	1    0    0    -1  
$EndComp
Text HLabel 3000 2150 0    60   Input ~ 0
Signal1
Text HLabel 3000 2850 0    60   Input ~ 0
Signal2
$Comp
L R R14
U 1 1 603EDE53
P 3600 2350
F 0 "R14" V 3680 2350 50  0000 C CNN
F 1 "1K Ohms" V 3600 2350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 3530 2350 50  0001 C CNN
F 3 "" H 3600 2350 50  0001 C CNN
	1    3600 2350
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 603EDEA4
P 3600 3200
F 0 "R15" V 3680 3200 50  0000 C CNN
F 1 "1K Ohms" V 3600 3200 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 3530 3200 50  0001 C CNN
F 3 "" H 3600 3200 50  0001 C CNN
	1    3600 3200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR034
U 1 1 603EE064
P 3550 3800
F 0 "#PWR034" H 3550 3550 50  0001 C CNN
F 1 "GND" H 3550 3650 50  0000 C CNN
F 2 "" H 3550 3800 50  0001 C CNN
F 3 "" H 3550 3800 50  0001 C CNN
	1    3550 3800
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR035
U 1 1 603EE110
P 4200 2200
F 0 "#PWR035" H 4200 2050 50  0001 C CNN
F 1 "+3.3V" H 4200 2340 50  0000 C CNN
F 2 "" H 4200 2200 50  0001 C CNN
F 3 "" H 4200 2200 50  0001 C CNN
	1    4200 2200
	1    0    0    -1  
$EndComp
Text HLabel 4500 2600 0    60   Input ~ 0
Enable1
Text HLabel 4500 2750 0    60   Input ~ 0
Enable2
$Comp
L +5V #PWR036
U 1 1 603EE1DF
P 6450 2100
F 0 "#PWR036" H 6450 1950 50  0001 C CNN
F 1 "+5V" H 6450 2240 50  0000 C CNN
F 2 "" H 6450 2100 50  0001 C CNN
F 3 "" H 6450 2100 50  0001 C CNN
	1    6450 2100
	1    0    0    -1  
$EndComp
Text HLabel 6150 2100 2    60   Input ~ 0
Power
$Comp
L C C13
U 1 1 603EE26B
P 6550 2600
F 0 "C13" H 6575 2700 50  0000 L CNN
F 1 "100 nf" H 6575 2500 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 6588 2450 50  0001 C CNN
F 3 "" H 6550 2600 50  0001 C CNN
	1    6550 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 603EE290
P 6550 2900
F 0 "#PWR037" H 6550 2650 50  0001 C CNN
F 1 "GND" H 6550 2750 50  0000 C CNN
F 2 "" H 6550 2900 50  0001 C CNN
F 3 "" H 6550 2900 50  0001 C CNN
	1    6550 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 603EE340
P 6100 3600
F 0 "#PWR038" H 6100 3350 50  0001 C CNN
F 1 "GND" H 6100 3450 50  0000 C CNN
F 2 "" H 6100 3600 50  0001 C CNN
F 3 "" H 6100 3600 50  0001 C CNN
	1    6100 3600
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 603EE53B
P 6350 3600
F 0 "R16" V 6430 3600 50  0000 C CNN
F 1 ".15 Ohms" V 6350 3600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 6280 3600 50  0001 C CNN
F 3 "" H 6350 3600 50  0001 C CNN
	1    6350 3600
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 603EE58A
P 6550 3600
F 0 "R17" V 6630 3600 50  0000 C CNN
F 1 "1K Ohms" V 6550 3600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 6480 3600 50  0001 C CNN
F 3 "" H 6550 3600 50  0001 C CNN
	1    6550 3600
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 603EE6E5
P 7100 3650
F 0 "R18" V 7180 3650 50  0000 C CNN
F 1 "10K Ohms" V 7100 3650 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 7030 3650 50  0001 C CNN
F 3 "" H 7100 3650 50  0001 C CNN
	1    7100 3650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR039
U 1 1 603EE787
P 6500 3950
F 0 "#PWR039" H 6500 3700 50  0001 C CNN
F 1 "GND" H 6500 3800 50  0000 C CNN
F 2 "" H 6500 3950 50  0001 C CNN
F 3 "" H 6500 3950 50  0001 C CNN
	1    6500 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2150 3000 2700
Wire Wire Line
	3000 2700 3050 2700
Wire Wire Line
	3000 2850 3000 3500
Wire Wire Line
	3000 3500 3050 3500
Wire Wire Line
	3000 2150 3850 2150
Wire Wire Line
	3850 2150 3850 2900
Wire Wire Line
	3850 2900 4650 2900
Wire Wire Line
	3000 2850 3200 2850
Wire Wire Line
	3200 2850 3200 3100
Wire Wire Line
	3200 3100 4650 3100
Wire Wire Line
	3350 2500 3700 2500
Wire Wire Line
	3700 2500 3700 3000
Wire Wire Line
	3700 3000 4650 3000
Wire Wire Line
	3350 3300 4650 3300
Wire Wire Line
	4650 3300 4650 3200
Wire Wire Line
	3350 2500 3350 2350
Wire Wire Line
	3350 2350 3450 2350
Wire Wire Line
	3350 3300 3350 3200
Wire Wire Line
	3350 3200 3450 3200
Wire Wire Line
	3350 3700 3550 3700
Wire Wire Line
	3550 2900 3550 3800
Wire Wire Line
	3350 2900 3550 2900
Connection ~ 3550 3700
Wire Wire Line
	3750 3200 3750 2350
Wire Wire Line
	3750 2350 4200 2350
Wire Wire Line
	4200 2350 4200 2200
Wire Wire Line
	4650 2600 4500 2600
Wire Wire Line
	4650 2700 4650 2750
Wire Wire Line
	4650 2750 4500 2750
Wire Wire Line
	6450 2100 6450 2400
Wire Wire Line
	6050 2400 6550 2400
Wire Wire Line
	6150 2100 6150 2300
Wire Wire Line
	6150 2300 6050 2300
Wire Wire Line
	6550 2400 6550 2450
Connection ~ 6450 2400
Wire Wire Line
	6550 2750 6550 2900
Wire Wire Line
	6050 3400 6100 3400
Wire Wire Line
	6050 2600 6300 2600
Wire Wire Line
	6300 2600 6300 3150
Wire Wire Line
	6350 3450 6350 3150
Connection ~ 6350 3150
Wire Wire Line
	6550 3450 6550 3350
Wire Wire Line
	6550 3350 6650 3350
Wire Wire Line
	6350 3750 6850 3750
Wire Wire Line
	6500 3950 6500 3750
Connection ~ 6500 3750
Wire Wire Line
	6850 3750 6850 3550
Connection ~ 6550 3750
Wire Wire Line
	6950 3650 6650 3650
Wire Wire Line
	6650 3650 6650 3350
$Comp
L +3.3V #PWR040
U 1 1 603EE911
P 6850 2800
F 0 "#PWR040" H 6850 2650 50  0001 C CNN
F 1 "+3.3V" H 6850 2940 50  0000 C CNN
F 2 "" H 6850 2800 50  0001 C CNN
F 3 "" H 6850 2800 50  0001 C CNN
	1    6850 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2800 6850 2950
Text HLabel 7400 3250 2    60   Output ~ 0
Sense1
Wire Wire Line
	7400 3250 7250 3250
Text HLabel 6100 2900 2    60   Output ~ 0
1A
Text HLabel 6100 3000 2    60   Output ~ 0
1B
Text HLabel 6100 3100 2    60   Output ~ 0
2A
Text HLabel 6100 3200 2    60   Output ~ 0
2B
Wire Wire Line
	6050 2900 6100 2900
Wire Wire Line
	6100 3000 6050 3000
Wire Wire Line
	6050 3100 6100 3100
Wire Wire Line
	6050 3200 6100 3200
Wire Wire Line
	6100 3400 6100 3600
$Comp
L GND #PWR041
U 1 1 603EEC83
P 6100 2700
F 0 "#PWR041" H 6100 2450 50  0001 C CNN
F 1 "GND" H 6100 2550 50  0000 C CNN
F 2 "" H 6100 2700 50  0001 C CNN
F 3 "" H 6100 2700 50  0001 C CNN
	1    6100 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 2700 6050 2700
Wire Wire Line
	7250 3250 7250 3650
Wire Wire Line
	6300 3150 6650 3150
$EndSCHEMATC
