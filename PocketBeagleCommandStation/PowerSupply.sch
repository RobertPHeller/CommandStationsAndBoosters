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
Sheet 2 7
Title "Pocket Beagle DCC Command Station"
Date "3 mar 2019"
Rev "A"
Comp "Deepwoods Software"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LM2574N-5.0 U1
U 1 1 603E6FA6
P 5850 3450
F 0 "U1" H 5850 3500 60  0000 C CNN
F 1 "LM2574N-5.0" H 5850 3600 21  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 5850 3450 60  0001 C CNN
F 3 "~" H 5850 3450 60  0000 C CNN
	1    5850 3450
	1    0    0    -1  
$EndComp
$Comp
L CP1 C3
U 1 1 603E6FA8
P 4650 3450
F 0 "C3" H 4700 3550 50  0000 L CNN
F 1 "220 uf 25V" V 4500 3250 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P3.50mm" H 4650 3450 60  0001 C CNN
F 3 "~" H 4650 3450 60  0000 C CNN
F 4 "REA221M1EBK-0811P" H 4650 3450 60  0001 C CNN "Part Number"
	1    4650 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 603E6FA9
P 5500 4050
F 0 "#PWR010" H 5500 4050 30  0001 C CNN
F 1 "GND" H 5500 3980 30  0001 C CNN
F 2 "" H 5500 4050 60  0000 C CNN
F 3 "" H 5500 4050 60  0000 C CNN
	1    5500 4050
	1    0    0    -1  
$EndComp
$Comp
L CP1 C4
U 1 1 603E6FAA
P 6550 3550
F 0 "C4" H 6600 3650 50  0000 L CNN
F 1 "22 uf 100V" H 6600 3450 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P3.50mm" H 6550 3550 60  0001 C CNN
F 3 "~" H 6550 3550 60  0000 C CNN
F 4 "REA220M2ABK-0811P" H 6550 3550 60  0001 C CNN "Part Number"
	1    6550 3550
	1    0    0    -1  
$EndComp
Text HLabel 4300 3250 0    60   Output ~ 0
5V Out
Text HLabel 6850 3350 2    60   Input ~ 0
Power Input
$Comp
L L L1
U 1 1 603E70A8
P 5150 3550
F 0 "L1" V 5100 3550 50  0000 C CNN
F 1 "330 mh" V 5225 3550 50  0000 C CNN
F 2 "PELowProfile:PE-LowProfile" H 5150 3550 50  0001 C CNN
F 3 "" H 5150 3550 50  0001 C CNN
	1    5150 3550
	0    1    1    0   
$EndComp
$Comp
L D_Shockley D2
U 1 1 603E7173
P 5500 3750
F 0 "D2" H 5500 3850 50  0000 C CNN
F 1 "SB160" H 5500 3650 50  0000 C CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 5500 3750 50  0001 C CNN
F 3 "" H 5500 3750 50  0001 C CNN
	1    5500 3750
	0    1    1    0   
$EndComp
$Comp
L 2N3906 Q1
U 1 1 603EB4BB
P 7850 3900
F 0 "Q1" H 8050 3975 50  0000 L CNN
F 1 "2N3906" H 8050 3900 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 8050 3825 50  0001 L CIN
F 3 "" H 7850 3900 50  0001 L CNN
	1    7850 3900
	-1   0    0    -1  
$EndComp
$Comp
L Q_PMOS_DGS Q2
U 1 1 603EB5CE
P 8400 4650
F 0 "Q2" H 8600 4700 50  0000 L CNN
F 1 "TP0606" H 8600 4600 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 8600 4750 50  0001 C CNN
F 3 "" H 8400 4650 50  0001 C CNN
	1    8400 4650
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 603EB60D
P 8250 3700
F 0 "R6" V 8330 3700 50  0000 C CNN
F 1 "2.7 Ohms" V 8250 3700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 8180 3700 50  0001 C CNN
F 3 "" H 8250 3700 50  0001 C CNN
	1    8250 3700
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 603EB676
P 8250 3900
F 0 "R7" V 8330 3900 50  0000 C CNN
F 1 "4.7K Ohms" V 8250 3900 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 8180 3900 50  0001 C CNN
F 3 "" H 8250 3900 50  0001 C CNN
	1    8250 3900
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 603EB6D6
P 7750 5000
F 0 "R3" V 7830 5000 50  0000 C CNN
F 1 "4.7K Ohms" V 7750 5000 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 7680 5000 50  0001 C CNN
F 3 "" H 7750 5000 50  0001 C CNN
	1    7750 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 603EB7B8
P 7750 5400
F 0 "#PWR011" H 7750 5150 50  0001 C CNN
F 1 "GND" H 7750 5250 50  0000 C CNN
F 2 "" H 7750 5400 50  0001 C CNN
F 3 "" H 7750 5400 50  0001 C CNN
	1    7750 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3550 4900 3250
Wire Wire Line
	4300 3250 5550 3250
Connection ~ 4900 3250
Wire Wire Line
	6550 3800 5800 3800
Connection ~ 5900 3800
Connection ~ 5800 3800
Wire Wire Line
	6150 3350 6850 3350
Wire Wire Line
	6550 3700 6550 3800
Connection ~ 6000 3800
Wire Wire Line
	5300 3550 5550 3550
Connection ~ 5500 3550
Wire Wire Line
	5800 3800 5800 3950
Wire Wire Line
	5800 3950 4650 3950
Wire Wire Line
	5500 3900 5500 4050
Wire Wire Line
	4650 3950 4650 3600
Connection ~ 5500 3950
Connection ~ 4650 3250
Connection ~ 6550 3350
Wire Wire Line
	4650 3300 4650 3250
Wire Wire Line
	6550 3400 6550 3350
Wire Wire Line
	5000 3550 4900 3550
Wire Wire Line
	5500 3600 5500 3550
Wire Wire Line
	7750 5400 7750 5150
Wire Wire Line
	8200 4650 7750 4650
Wire Wire Line
	7750 4100 7750 4850
Connection ~ 7750 4650
Wire Wire Line
	6850 3700 8100 3700
Wire Wire Line
	8100 3900 8050 3900
Wire Wire Line
	8500 4450 8500 3700
Wire Wire Line
	8500 3700 8400 3700
Wire Wire Line
	8400 3900 8500 3900
Connection ~ 8500 3900
Wire Wire Line
	6850 3350 6850 3700
Connection ~ 7750 3700
Text HLabel 8800 4900 2    60   Output ~ 0
Prog-DCC-VS
Wire Wire Line
	8800 4900 8500 4900
Wire Wire Line
	8500 4900 8500 4850
Text Notes 8850 5050 0    60   ~ 0
Current limited to 250mA
$Comp
L +3.3V #PWR012
U 1 1 603EC250
P 7800 2050
F 0 "#PWR012" H 7800 1900 50  0001 C CNN
F 1 "+3.3V" H 7800 2190 50  0000 C CNN
F 2 "" H 7800 2050 50  0001 C CNN
F 3 "" H 7800 2050 50  0001 C CNN
	1    7800 2050
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 603EC278
P 7800 2250
F 0 "R4" V 7880 2250 50  0000 C CNN
F 1 "2.7K Ohms, 1%" V 7800 2250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 7730 2250 50  0001 C CNN
F 3 "" H 7800 2250 50  0001 C CNN
	1    7800 2250
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 603EC2D8
P 7800 2800
F 0 "R5" V 7880 2800 50  0000 C CNN
F 1 "16 Ohms 1%" V 7800 2800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 7730 2800 50  0001 C CNN
F 3 "" H 7800 2800 50  0001 C CNN
	1    7800 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 603EC33A
P 7800 3100
F 0 "#PWR013" H 7800 2850 50  0001 C CNN
F 1 "GND" H 7800 2950 50  0000 C CNN
F 2 "" H 7800 3100 50  0001 C CNN
F 3 "" H 7800 3100 50  0001 C CNN
	1    7800 3100
	1    0    0    -1  
$EndComp
$Comp
L CP1 C5
U 1 1 603EC366
P 8250 2800
F 0 "C5" H 8275 2900 50  0000 L CNN
F 1 "1 uf" H 8275 2700 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 8250 2800 50  0001 C CNN
F 3 "" H 8250 2800 50  0001 C CNN
	1    8250 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2050 7800 2100
Wire Wire Line
	7800 2400 7800 2650
Wire Wire Line
	7800 2650 8550 2650
Wire Wire Line
	8250 2950 7800 2950
Wire Wire Line
	7800 2950 7800 3100
Text HLabel 8550 2650 2    60   Output ~ 0
Railcom-VREF
Connection ~ 8250 2650
$EndSCHEMATC
