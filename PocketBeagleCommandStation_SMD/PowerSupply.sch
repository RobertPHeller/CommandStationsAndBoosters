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
LIBS:DRV8873HPWPR
LIBS:DRV8801PWP
LIBS:74ahc1g08
LIBS:mcp9701at
LIBS:INA2180A1IDGKR
LIBS:lm2574n-5
LIBS:mechanical
LIBS:references
LIBS:motors
LIBS:graphic_symbols
LIBS:motor_drivers
LIBS:irf7351pbf
LIBS:PocketBeagleCommandStation_SMD-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
Title "Pocket Beagle DCC Command Station (SMD version)"
Date "2021-04-09"
Rev "A"
Comp "Deepwoods Software"
Comment1 "Power Supplies"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CP1 C3
U 1 1 6070B8AE
P 4650 3450
F 0 "C3" H 4700 3550 50  0000 L CNN
F 1 "220 uf 25V" V 4500 3250 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_8x10" H 4650 3450 60  0001 C CNN
F 3 "~" H 4650 3450 60  0000 C CNN
F 4 "647-UUX2A220MNL6GS" H 4650 3450 60  0001 C CNN "Mouser Part Number"
	1    4650 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 6070B8AF
P 5500 4050
F 0 "#PWR019" H 5500 4050 30  0001 C CNN
F 1 "GND" H 5500 3980 30  0001 C CNN
F 2 "" H 5500 4050 60  0000 C CNN
F 3 "" H 5500 4050 60  0000 C CNN
	1    5500 4050
	1    0    0    -1  
$EndComp
$Comp
L CP1 C5
U 1 1 6070B8B0
P 6550 3550
F 0 "C5" H 6600 3650 50  0000 L CNN
F 1 "22 uf 100V" H 6600 3450 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_8x10" H 6550 3550 60  0001 C CNN
F 3 "~" H 6550 3550 60  0000 C CNN
F 4 "647-UWT1E221MNL1GS" H 6550 3550 60  0001 C CNN "Mouser Part Number"
	1    6550 3550
	1    0    0    -1  
$EndComp
Text HLabel 4300 3250 0    60   Output ~ 0
5V Out
Text HLabel 6850 3350 2    60   Input ~ 0
Power Input
$Comp
L L L1
U 1 1 6070B8B1
P 5150 3550
F 0 "L1" V 5100 3550 50  0000 C CNN
F 1 "330 mh" V 5225 3550 50  0000 C CNN
F 2 "SRN1060:SRN1060" H 5150 3550 50  0001 C CNN
F 3 "" H 5150 3550 50  0001 C CNN
F 4 "652-SRN1060-331M" V 5150 3550 60  0001 C CNN "Mouser Part Number"
	1    5150 3550
	0    1    1    0   
$EndComp
$Comp
L D_Shockley D2
U 1 1 6070B8B2
P 5500 3750
F 0 "D2" H 5500 3850 50  0000 C CNN
F 1 "CMSH1-60" H 5500 3650 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA" H 5500 3750 50  0001 C CNN
F 3 "" H 5500 3750 50  0001 C CNN
F 4 "610-CMSH1-60TR13" H 5500 3750 60  0001 C CNN "Mouser Part Number"
	1    5500 3750
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 6070B8B5
P 8250 3700
F 0 "R8" V 8330 3700 50  0000 C CNN
F 1 "2.7" V 8250 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8180 3700 50  0001 C CNN
F 3 "" H 8250 3700 50  0001 C CNN
F 4 "660-RK73H2BTTD2R70F" V 8250 3700 60  0001 C CNN "Mouser Part Number"
	1    8250 3700
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 6070B8B6
P 8250 3900
F 0 "R9" V 8330 3900 50  0000 C CNN
F 1 "4.7K" V 8250 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8180 3900 50  0001 C CNN
F 3 "" H 8250 3900 50  0001 C CNN
F 4 "71-CRCW0805-4.7K-E3" V 8250 3900 60  0001 C CNN "Mouser Part Number"
	1    8250 3900
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 6070B8B7
P 7750 5000
F 0 "R5" V 7830 5000 50  0000 C CNN
F 1 "4.7K" V 7750 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7680 5000 50  0001 C CNN
F 3 "" H 7750 5000 50  0001 C CNN
F 4 "71-CRCW0805-4.7K-E3" V 7750 5000 60  0001 C CNN "Mouser Part Number"
	1    7750 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 6070B8B8
P 7750 5400
F 0 "#PWR020" H 7750 5150 50  0001 C CNN
F 1 "GND" H 7750 5250 50  0000 C CNN
F 2 "" H 7750 5400 50  0001 C CNN
F 3 "" H 7750 5400 50  0001 C CNN
	1    7750 5400
	1    0    0    -1  
$EndComp
Text HLabel 8800 4900 2    60   Output ~ 0
Prog-DCC-VS
Text Notes 8850 5050 0    60   ~ 0
Current limited to 250mA
$Comp
L +3.3V #PWR021
U 1 1 6070B8B9
P 7800 2050
F 0 "#PWR021" H 7800 1900 50  0001 C CNN
F 1 "+3.3V" H 7800 2190 50  0000 C CNN
F 2 "" H 7800 2050 50  0001 C CNN
F 3 "" H 7800 2050 50  0001 C CNN
	1    7800 2050
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 6070B8BA
P 7800 2250
F 0 "R6" V 7880 2250 50  0000 C CNN
F 1 "3.24K, 1%" V 7800 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7730 2250 50  0001 C CNN
F 3 "" H 7800 2250 50  0001 C CNN
F 4 "652-CR0603FX-1803ELF" V 7800 2250 60  0001 C CNN "Mouser Part Number"
	1    7800 2250
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 6070B8BB
P 7800 2800
F 0 "R7" V 7880 2800 50  0000 C CNN
F 1 "19.1, 1%" V 7800 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7730 2800 50  0001 C CNN
F 3 "" H 7800 2800 50  0001 C CNN
F 4 "71-CRCW080519R1FKEA" V 7800 2800 60  0001 C CNN "Mouser Part Number"
	1    7800 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 6070B8BC
P 7800 3100
F 0 "#PWR022" H 7800 2850 50  0001 C CNN
F 1 "GND" H 7800 2950 50  0000 C CNN
F 2 "" H 7800 3100 50  0001 C CNN
F 3 "" H 7800 3100 50  0001 C CNN
	1    7800 3100
	1    0    0    -1  
$EndComp
$Comp
L CP1 C6
U 1 1 6070B8BD
P 8250 2800
F 0 "C6" H 8275 2900 50  0000 L CNN
F 1 "1 uf" H 8275 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8250 2800 50  0001 C CNN
F 3 "" H 8250 2800 50  0001 C CNN
F 4 "963-GMK107AB7105KAHT" H 8250 2800 60  0001 C CNN "Mouser Part Number"
	1    8250 2800
	1    0    0    -1  
$EndComp
Text HLabel 8550 2650 2    60   Output ~ 0
Railcom-VREF
$Comp
L +3.3V #PWR023
U 1 1 6070B8BE
P 4900 1200
F 0 "#PWR023" H 4900 1050 50  0001 C CNN
F 1 "+3.3V" H 4900 1340 50  0000 C CNN
F 2 "" H 4900 1200 50  0001 C CNN
F 3 "" H 4900 1200 50  0001 C CNN
	1    4900 1200
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 6070B8BF
P 4900 1400
F 0 "R3" V 4980 1400 50  0000 C CNN
F 1 "3.24K, 1%" V 4900 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4830 1400 50  0001 C CNN
F 3 "" H 4900 1400 50  0001 C CNN
F 4 "652-CR0603FX-1803ELF" V 4900 1400 60  0001 C CNN "Mouser Part Number"
	1    4900 1400
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 6070B8C0
P 4900 1950
F 0 "R4" V 4980 1950 50  0000 C CNN
F 1 "102, 1%" V 4900 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4830 1950 50  0001 C CNN
F 3 "" H 4900 1950 50  0001 C CNN
F 4 "71-CRCW0805102RFKEA" V 4900 1950 60  0001 C CNN "Mouser Part Number"
	1    4900 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 6070B8C1
P 4900 2250
F 0 "#PWR024" H 4900 2000 50  0001 C CNN
F 1 "GND" H 4900 2100 50  0000 C CNN
F 2 "" H 4900 2250 50  0001 C CNN
F 3 "" H 4900 2250 50  0001 C CNN
	1    4900 2250
	1    0    0    -1  
$EndComp
$Comp
L CP1 C4
U 1 1 6070B8C2
P 5350 1950
F 0 "C4" H 5375 2050 50  0000 L CNN
F 1 "1 uf" H 5375 1850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5350 1950 50  0001 C CNN
F 3 "" H 5350 1950 50  0001 C CNN
F 4 "963-GMK107AB7105KAHT" H 5350 1950 60  0001 C CNN "Mouser Part Number"
	1    5350 1950
	1    0    0    -1  
$EndComp
Text HLabel 5650 1800 2    60   Output ~ 0
Railcom-OLBC-VREF
$Comp
L TEST_1P TP2
U 1 1 6070B8C3
P 5450 1550
F 0 "TP2" H 5450 1820 50  0000 C CNN
F 1 "RailcomOLBCVRef" H 5450 1750 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 5650 1550 50  0001 C CNN
F 3 "" H 5650 1550 50  0001 C CNN
	1    5450 1550
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P TP1
U 1 1 6070B8C4
P 4400 3050
F 0 "TP1" H 4400 3320 50  0000 C CNN
F 1 "5V" H 4400 3250 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 4600 3050 50  0001 C CNN
F 3 "" H 4600 3050 50  0001 C CNN
	1    4400 3050
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P TP3
U 1 1 6070B8C5
P 8400 2400
F 0 "TP3" H 8400 2670 50  0000 C CNN
F 1 "RailcomVRef" H 8400 2600 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 8600 2400 50  0001 C CNN
F 3 "" H 8600 2400 50  0001 C CNN
	1    8400 2400
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P TP4
U 1 1 6070B8C6
P 8950 4600
F 0 "TP4" H 8950 4870 50  0000 C CNN
F 1 "PROGPower" H 8950 4800 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 9150 4600 50  0001 C CNN
F 3 "" H 9150 4600 50  0001 C CNN
	1    8950 4600
	1    0    0    -1  
$EndComp
$Comp
L LM2574HVM-5.0 U1
U 1 1 6073E1AD
P 5850 3450
F 0 "U1" H 5850 3500 60  0000 C CNN
F 1 "LM2574HVM-5.0" H 5850 3600 21  0000 C CNN
F 2 "SOIC_Wide:SOIC-14_7.4x8.7mm_Pitch1.27mm" H 5850 3450 60  0001 C CNN
F 3 "" H 5850 3450 60  0000 C CNN
F 4 "926-LM2574N-5.0/NOPB" H 5850 3450 60  0001 C CNN "Mouser Part Number"
	1    5850 3450
	1    0    0    -1  
$EndComp
$Comp
L LF120_TO220 U12
U 1 1 6074725C
P 9750 3300
F 0 "U12" H 9600 3425 50  0000 C CNN
F 1 "LF120_TO220" H 9750 3425 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TO-252-2" H 9750 3525 50  0001 C CIN
F 3 "" H 9750 3250 50  0001 C CNN
F 4 "511-LF120ABDT-TR" H 9750 3300 60  0001 C CNN "Mouser Part Number"
	1    9750 3300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C32
U 1 1 6074736D
P 9250 3500
F 0 "C32" H 9260 3570 50  0000 L CNN
F 1 "10 nf" H 9260 3420 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 9250 3500 50  0001 C CNN
F 3 "" H 9250 3500 50  0001 C CNN
F 4 "791-1206B103K500CT" H 9250 3500 60  0001 C CNN "Mouser Part Number"
	1    9250 3500
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C33
U 1 1 6074742F
P 10200 3450
F 0 "C33" H 10210 3520 50  0000 L CNN
F 1 "10 uf" H 10210 3370 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_5x5.3" H 10200 3450 50  0001 C CNN
F 3 "" H 10200 3450 50  0001 C CNN
F 4 "710-865230542002" H 10200 3450 60  0001 C CNN "Mouser Part Number"
	1    10200 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 607474D5
P 9750 3800
F 0 "#PWR025" H 9750 3550 50  0001 C CNN
F 1 "GND" H 9750 3650 50  0000 C CNN
F 2 "" H 9750 3800 50  0001 C CNN
F 3 "" H 9750 3800 50  0001 C CNN
	1    9750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3250 4900 3550
Wire Wire Line
	4300 3250 5550 3250
Connection ~ 4900 3250
Wire Wire Line
	5800 3800 6550 3800
Connection ~ 5900 3800
Connection ~ 5800 3800
Wire Wire Line
	6150 3350 6850 3350
Wire Wire Line
	6550 3800 6550 3700
Connection ~ 6000 3800
Wire Wire Line
	5300 3550 5550 3550
Connection ~ 5500 3550
Wire Wire Line
	5800 3950 5800 3800
Wire Wire Line
	4650 3950 5800 3950
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
	4900 3550 5000 3550
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
	8500 3700 8500 4450
Wire Wire Line
	8500 3700 8400 3700
Wire Wire Line
	8400 3900 8500 3900
Connection ~ 8500 3900
Wire Wire Line
	6850 3350 6850 3700
Connection ~ 7750 3700
Wire Wire Line
	8500 4900 8800 4900
Wire Wire Line
	8500 4900 8500 4850
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
Connection ~ 8250 2650
Wire Wire Line
	4900 1200 4900 1250
Wire Wire Line
	4900 1550 4900 1800
Wire Wire Line
	4900 1800 5650 1800
Wire Wire Line
	5350 2100 4900 2100
Wire Wire Line
	4900 2100 4900 2250
Connection ~ 5350 1800
Wire Wire Line
	8950 4600 8750 4600
Wire Wire Line
	8750 4600 8750 4900
Connection ~ 8750 4900
Wire Wire Line
	8400 2400 8400 2650
Connection ~ 8400 2650
Wire Wire Line
	5450 1550 5450 1800
Wire Wire Line
	5450 1800 5500 1800
Connection ~ 5500 1800
Wire Wire Line
	4400 3050 4400 3250
Connection ~ 4400 3250
Wire Wire Line
	7100 3300 9450 3300
Wire Wire Line
	9250 3300 9250 3400
Wire Wire Line
	9250 3600 10200 3600
Wire Wire Line
	10050 3300 10400 3300
Wire Wire Line
	10200 3300 10200 3350
Wire Wire Line
	10200 3600 10200 3550
Connection ~ 9750 3600
Wire Wire Line
	9750 3800 9750 3600
Wire Wire Line
	7100 3300 7100 3700
Connection ~ 7100 3700
Connection ~ 9250 3300
Text HLabel 10400 3300 2    60   Output ~ 0
12V
Connection ~ 10200 3300
$Comp
L MMBT3906 Q1
U 1 1 60749C26
P 7850 3900
F 0 "Q1" H 8050 3975 50  0000 L CNN
F 1 "MMBT3906" H 8050 3900 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8050 3825 50  0001 L CIN
F 3 "" H 7850 3900 50  0001 L CNN
	1    7850 3900
	-1   0    0    -1  
$EndComp
$Comp
L Q_PMOS_GSD Q2
U 1 1 6074AA1E
P 8400 4650
F 0 "Q2" H 8600 4700 50  0000 L CNN
F 1 "DMP3099L-7" H 8600 4600 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8600 4750 50  0001 C CNN
F 3 "" H 8400 4650 50  0001 C CNN
	1    8400 4650
	1    0    0    1   
$EndComp
$EndSCHEMATC
