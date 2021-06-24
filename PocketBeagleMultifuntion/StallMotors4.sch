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
LIBS:sn65hvd233-ht
LIBS:lm2574n-5
LIBS:MCP23xxx
LIBS:tbd62x83a
LIBS:tc442x
LIBS:pca9685
LIBS:4814p-2
LIBS:mechanical
LIBS:graphic_symbols
LIBS:references
LIBS:PocketBeagleMultifuntion-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
Title "Pocket Beagle Multifunction Board"
Date "3 mar 2019"
Rev ""
Comp "Deepwoods Software"
Comment1 "Stall Motor Drivers and point sense."
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74HCT00 U2
U 2 1 60CD31DC
P 2000 1900
F 0 "U2" H 2000 1950 50  0000 C CNN
F 1 "74HCT00" H 2000 1800 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 2000 1900 50  0001 C CNN
F 3 "" H 2000 1900 50  0001 C CNN
	2    2000 1900
	1    0    0    -1  
$EndComp
$Comp
L 74HCT00 U2
U 3 1 60CD3211
P 2000 2700
F 0 "U2" H 2000 2750 50  0000 C CNN
F 1 "74HCT00" H 2000 2600 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 2000 2700 50  0001 C CNN
F 3 "" H 2000 2700 50  0001 C CNN
	3    2000 2700
	1    0    0    -1  
$EndComp
$Comp
L 74HCT00 U2
U 4 1 60CD324F
P 2000 3400
F 0 "U2" H 2000 3450 50  0000 C CNN
F 1 "74HCT00" H 2000 3300 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 2000 3400 50  0001 C CNN
F 3 "" H 2000 3400 50  0001 C CNN
	4    2000 3400
	1    0    0    -1  
$EndComp
$Comp
L 74HCT00 U4
U 1 1 60CD3BDA
P 2050 4600
F 0 "U4" H 2050 4650 50  0000 C CNN
F 1 "74HCT00" H 2050 4500 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 2050 4600 50  0001 C CNN
F 3 "" H 2050 4600 50  0001 C CNN
F 4 "595-SN74AHC00D" H 2050 4600 60  0001 C CNN "Mouser Part Number"
	1    2050 4600
	1    0    0    -1  
$EndComp
$Comp
L 74HCT00 U4
U 2 1 60CD3BE0
P 2050 5300
F 0 "U4" H 2050 5350 50  0000 C CNN
F 1 "74HCT00" H 2050 5200 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 2050 5300 50  0001 C CNN
F 3 "" H 2050 5300 50  0001 C CNN
	2    2050 5300
	1    0    0    -1  
$EndComp
$Comp
L 74HCT00 U4
U 3 1 60CD3BE6
P 2050 6100
F 0 "U4" H 2050 6150 50  0000 C CNN
F 1 "74HCT00" H 2050 6000 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 2050 6100 50  0001 C CNN
F 3 "" H 2050 6100 50  0001 C CNN
	3    2050 6100
	1    0    0    -1  
$EndComp
$Comp
L 74HCT00 U4
U 4 1 60CD3BEC
P 2050 6800
F 0 "U4" H 2050 6850 50  0000 C CNN
F 1 "74HCT00" H 2050 6700 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 2050 6800 50  0001 C CNN
F 3 "" H 2050 6800 50  0001 C CNN
	4    2050 6800
	1    0    0    -1  
$EndComp
$Comp
L 4814P-2 RR1
U 1 1 60CD4592
P 900 4200
F 0 "RR1" H 900 4300 30  0000 C CNN
F 1 "10K Ohms" V 900 4150 30  0000 C CNN
F 2 "48xxP:4814P" H 900 4200 60  0001 C CNN
F 3 "" H 900 4200 60  0000 C CNN
F 4 "652-4814P-2LF-10K" H 900 4200 60  0001 C CNN "Mouser Part Number"
	1    900  4200
	0    1    1    0   
$EndComp
$Comp
L C_Small C6
U 1 1 60CD54EA
P 2850 950
F 0 "C6" H 2860 1020 50  0000 L CNN
F 1 ".1 uf" H 2860 870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2850 950 50  0001 C CNN
F 3 "" H 2850 950 50  0001 C CNN
F 4 "710-885012206095" H 2850 950 60  0001 C CNN "Mouser Part Number"
	1    2850 950 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 60CD553D
P 3200 950
F 0 "C7" H 3210 1020 50  0000 L CNN
F 1 ".1 uf" H 3210 870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3200 950 50  0001 C CNN
F 3 "" H 3200 950 50  0001 C CNN
F 4 "710-885012206095" H 3200 950 60  0001 C CNN "Mouser Part Number"
	1    3200 950 
	1    0    0    -1  
$EndComp
$Comp
L TC4428 U5
U 1 1 60CD5772
P 4250 1100
F 0 "U5" H 4250 800 60  0000 C CNN
F 1 "TC4428" H 4250 1400 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 4250 1100 60  0001 C CNN
F 3 "" H 4250 1100 60  0000 C CNN
F 4 "579-TC4428VOA" H 4250 1100 60  0001 C CNN "Mouser Part Number"
	1    4250 1100
	1    0    0    -1  
$EndComp
$Comp
L TC4428 U5
U 2 1 60CD57A9
P 4250 1900
F 0 "U5" H 4250 1600 60  0000 C CNN
F 1 "TC4428" H 4250 2200 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 4250 1900 60  0001 C CNN
F 3 "" H 4250 1900 60  0000 C CNN
	2    4250 1900
	1    0    0    -1  
$EndComp
$Comp
L TC4428 U6
U 1 1 60CD593C
P 4250 2700
F 0 "U6" H 4250 2400 60  0000 C CNN
F 1 "TC4428" H 4250 3000 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 4250 2700 60  0001 C CNN
F 3 "" H 4250 2700 60  0000 C CNN
F 4 "579-TC4428VOA" H 4250 2700 60  0001 C CNN "Mouser Part Number"
	1    4250 2700
	1    0    0    -1  
$EndComp
$Comp
L TC4428 U6
U 2 1 60CD5AD3
P 4250 3500
F 0 "U6" H 4250 3200 60  0000 C CNN
F 1 "TC4428" H 4250 3800 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 4250 3500 60  0001 C CNN
F 3 "" H 4250 3500 60  0000 C CNN
	2    4250 3500
	1    0    0    -1  
$EndComp
$Comp
L TC4428 U7
U 1 1 60CD5B99
P 7400 1100
F 0 "U7" H 7400 800 60  0000 C CNN
F 1 "TC4428" H 7400 1400 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 7400 1100 60  0001 C CNN
F 3 "" H 7400 1100 60  0000 C CNN
F 4 "579-TC4428VOA" H 7400 1100 60  0001 C CNN "Mouser Part Number"
	1    7400 1100
	1    0    0    -1  
$EndComp
$Comp
L TC4428 U7
U 2 1 60CD5DFA
P 7400 1900
F 0 "U7" H 7400 1600 60  0000 C CNN
F 1 "TC4428" H 7400 2200 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 7400 1900 60  0001 C CNN
F 3 "" H 7400 1900 60  0000 C CNN
	2    7400 1900
	1    0    0    -1  
$EndComp
$Comp
L TC4428 U8
U 1 1 60CD5F16
P 7400 2700
F 0 "U8" H 7400 2400 60  0000 C CNN
F 1 "TC4428" H 7400 3000 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 7400 2700 60  0001 C CNN
F 3 "" H 7400 2700 60  0000 C CNN
F 4 "579-TC4428VOA" H 7400 2700 60  0001 C CNN "Mouser Part Number"
	1    7400 2700
	1    0    0    -1  
$EndComp
$Comp
L TC4428 U8
U 2 1 60CD5F79
P 7400 3500
F 0 "U8" H 7400 3200 60  0000 C CNN
F 1 "TC4428" H 7400 3800 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 7400 3500 60  0001 C CNN
F 3 "" H 7400 3500 60  0000 C CNN
	2    7400 3500
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_01x05 Term1
U 1 1 60CF9376
P 10000 1000
F 0 "Term1" H 10000 1300 50  0000 C CNN
F 1 "Motor 1" H 10000 700 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_5pol" H 10000 1000 50  0001 C CNN
F 3 "" H 10000 1000 50  0001 C CNN
F 4 "651-1725685" H 10000 1000 60  0001 C CNN "Mouser Part Number"
	1    10000 1000
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_01x05 Term2
U 1 1 60CD6A61
P 10000 1800
F 0 "Term2" H 10000 2100 50  0000 C CNN
F 1 "Motor 2" H 10000 1500 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_5pol" H 10000 1800 50  0001 C CNN
F 3 "" H 10000 1800 50  0001 C CNN
F 4 "651-1725685" H 10000 1800 60  0001 C CNN "Mouser Part Number"
	1    10000 1800
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_01x05 Term3
U 1 1 60CD6B08
P 10000 2650
F 0 "Term3" H 10000 2950 50  0000 C CNN
F 1 "Motor 3" H 10000 2350 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_5pol" H 10000 2650 50  0001 C CNN
F 3 "" H 10000 2650 50  0001 C CNN
F 4 "651-1725685" H 10000 2650 60  0001 C CNN "Mouser Part Number"
	1    10000 2650
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_01x05 Term4
U 1 1 60CD6C75
P 10000 3600
F 0 "Term4" H 10000 3900 50  0000 C CNN
F 1 "Motor 4" H 10000 3300 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_5pol" H 10000 3600 50  0001 C CNN
F 3 "" H 10000 3600 50  0001 C CNN
F 4 "651-1725685" H 10000 3600 60  0001 C CNN "Mouser Part Number"
	1    10000 3600
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR034
U 1 1 60CD8400
P 1800 750
F 0 "#PWR034" H 1800 600 50  0001 C CNN
F 1 "+3V3" H 1800 890 50  0000 C CNN
F 2 "" H 1800 750 50  0001 C CNN
F 3 "" H 1800 750 50  0001 C CNN
	1    1800 750 
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR035
U 1 1 60CD84B5
P 1800 4200
F 0 "#PWR035" H 1800 4050 50  0001 C CNN
F 1 "+3V3" H 1800 4340 50  0000 C CNN
F 2 "" H 1800 4200 50  0001 C CNN
F 3 "" H 1800 4200 50  0001 C CNN
	1    1800 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 60CD85AF
P 1800 3800
F 0 "#PWR036" H 1800 3550 50  0001 C CNN
F 1 "GND" H 1800 3650 50  0000 C CNN
F 2 "" H 1800 3800 50  0001 C CNN
F 3 "" H 1800 3800 50  0001 C CNN
	1    1800 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 60CD86EE
P 1850 7200
F 0 "#PWR037" H 1850 6950 50  0001 C CNN
F 1 "GND" H 1850 7050 50  0000 C CNN
F 2 "" H 1850 7200 50  0001 C CNN
F 3 "" H 1850 7200 50  0001 C CNN
	1    1850 7200
	1    0    0    -1  
$EndComp
NoConn ~ 1150 3900
NoConn ~ 1050 3900
NoConn ~ 500  4200
Wire Wire Line
	1800 3800 1800 3600
Wire Wire Line
	1800 4400 1800 4200
Wire Wire Line
	2650 6500 2650 6800
Wire Wire Line
	1650 6500 2650 6500
Wire Wire Line
	1650 6300 1650 6500
Wire Wire Line
	1450 6300 1650 6300
Wire Wire Line
	1450 6200 1450 6300
Wire Wire Line
	2650 5000 2650 5300
Wire Wire Line
	1600 5000 2650 5000
Wire Wire Line
	1600 4800 1600 5000
Wire Wire Line
	1450 4800 1600 4800
Wire Wire Line
	1450 4700 1450 4800
Wire Wire Line
	1450 6400 1450 6700
Wire Wire Line
	2650 6400 1450 6400
Wire Wire Line
	2650 6100 2650 6400
Wire Wire Line
	1450 4850 1450 5200
Wire Wire Line
	2650 4850 1450 4850
Wire Wire Line
	2650 4600 2650 4850
Wire Wire Line
	1400 3150 1400 3300
Wire Wire Line
	2350 3150 1400 3150
Wire Wire Line
	2350 2900 2350 3150
Wire Wire Line
	2600 2900 2350 2900
Wire Wire Line
	2600 2700 2600 2900
Wire Wire Line
	2600 3000 2600 3400
Wire Wire Line
	1400 3000 2600 3000
Wire Wire Line
	1400 2800 1400 3000
Wire Wire Line
	1400 1650 1400 1800
Wire Wire Line
	2450 1650 1400 1650
Wire Wire Line
	2600 1550 2600 1900
Wire Wire Line
	1400 1550 2600 1550
Wire Wire Line
	1400 1300 1400 1550
Wire Wire Line
	1850 7200 1850 7000
Wire Wire Line
	1800 4200 1300 4200
Wire Wire Line
	750  2000 1400 2000
Wire Wire Line
	750  2000 750  3900
Wire Wire Line
	650  3900 650  1100
Wire Wire Line
	650  1100 1400 1100
Wire Wire Line
	1400 3500 950  3500
Wire Wire Line
	950  3500 950  3900
Wire Wire Line
	850  3900 850  2600
Wire Wire Line
	850  2600 1400 2600
Wire Wire Line
	1450 4500 1150 4500
Wire Wire Line
	1050 4500 1050 5400
Wire Wire Line
	1050 5400 1450 5400
Wire Wire Line
	950  4500 950  6000
Wire Wire Line
	950  6000 1450 6000
Wire Wire Line
	850  4500 850  6900
Wire Wire Line
	850  6900 1450 6900
NoConn ~ 750  4500
NoConn ~ 650  4500
Wire Wire Line
	1800 750  1800 1000
$Comp
L 74HCT00 U2
U 1 1 60CD316F
P 2000 1200
F 0 "U2" H 2000 1250 50  0000 C CNN
F 1 "74HCT00" H 2000 1100 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 2000 1200 50  0001 C CNN
F 3 "" H 2000 1200 50  0001 C CNN
F 4 "595-SN74AHC00D" H 2000 1200 60  0001 C CNN "Mouser Part Number"
	1    2000 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1200 2600 1450
Wire Wire Line
	2600 1450 2450 1450
Wire Wire Line
	2450 1450 2450 1650
Wire Wire Line
	1800 850  3200 850 
Connection ~ 1800 850 
Connection ~ 2850 850 
Wire Wire Line
	3200 1050 2850 1050
$Comp
L GND #PWR038
U 1 1 60CD9FDD
P 3200 1200
F 0 "#PWR038" H 3200 950 50  0001 C CNN
F 1 "GND" H 3200 1050 50  0000 C CNN
F 2 "" H 3200 1200 50  0001 C CNN
F 3 "" H 3200 1200 50  0001 C CNN
	1    3200 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1200 3200 1050
Text HLabel 2600 1200 2    59   Output ~ 0
Points1
Text Label 900  1100 0    59   ~ 0
P1A
Text Label 900  2000 0    59   ~ 0
P1B
Text Label 950  2600 0    59   ~ 0
P2A
Text Label 1050 3500 0    59   ~ 0
P2B
Text HLabel 2600 2700 2    59   Output ~ 0
Points2
Text HLabel 2650 4600 2    59   Output ~ 0
Points3
Text HLabel 2650 6100 2    59   Output ~ 0
Points4
Text Label 1300 4500 0    59   ~ 0
P3A
Text Label 1300 5400 0    59   ~ 0
P3B
Text Label 1150 6000 0    59   ~ 0
P4A
Text Label 1050 6900 0    59   ~ 0
P4B
Text Label 4650 1100 0    59   ~ 0
M1B
Text Label 4650 1900 0    59   ~ 0
M1A
Text Label 4650 2700 0    59   ~ 0
M2B
Text Label 4650 3500 0    59   ~ 0
M2A
Text Label 7800 1100 0    59   ~ 0
M3B
Text Label 7800 1900 0    59   ~ 0
M3A
Text Label 7800 2700 0    59   ~ 0
M4B
Text Label 7800 3500 0    59   ~ 0
M4A
Wire Wire Line
	7150 2700 7150 3500
Wire Wire Line
	7150 1900 7150 1100
Wire Wire Line
	4000 1900 4000 1100
Wire Wire Line
	4000 2700 4000 3500
Text HLabel 4000 1450 0    59   Input ~ 0
Motor1
Text HLabel 4000 3100 0    59   Input ~ 0
Motor2
Text HLabel 7150 1500 0    59   Input ~ 0
Motor3
Text HLabel 7150 3150 0    59   Input ~ 0
Motor4
$Comp
L GND #PWR039
U 1 1 60CDE058
P 4500 2150
F 0 "#PWR039" H 4500 1900 50  0001 C CNN
F 1 "GND" H 4500 2000 50  0000 C CNN
F 2 "" H 4500 2150 50  0001 C CNN
F 3 "" H 4500 2150 50  0001 C CNN
	1    4500 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 60CDE09A
P 7600 2150
F 0 "#PWR040" H 7600 1900 50  0001 C CNN
F 1 "GND" H 7600 2000 50  0000 C CNN
F 2 "" H 7600 2150 50  0001 C CNN
F 3 "" H 7600 2150 50  0001 C CNN
	1    7600 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 60CDE17D
P 4450 3750
F 0 "#PWR041" H 4450 3500 50  0001 C CNN
F 1 "GND" H 4450 3600 50  0000 C CNN
F 2 "" H 4450 3750 50  0001 C CNN
F 3 "" H 4450 3750 50  0001 C CNN
	1    4450 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 60CDE1BF
P 7700 3750
F 0 "#PWR042" H 7700 3500 50  0001 C CNN
F 1 "GND" H 7700 3600 50  0000 C CNN
F 2 "" H 7700 3750 50  0001 C CNN
F 3 "" H 7700 3750 50  0001 C CNN
	1    7700 3750
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR043
U 1 1 60CDE3F5
P 4500 850
F 0 "#PWR043" H 4500 700 50  0001 C CNN
F 1 "+12V" H 4500 990 50  0000 C CNN
F 2 "" H 4500 850 50  0001 C CNN
F 3 "" H 4500 850 50  0001 C CNN
	1    4500 850 
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR044
U 1 1 60CDE437
P 7600 900
F 0 "#PWR044" H 7600 750 50  0001 C CNN
F 1 "+12V" H 7600 1040 50  0000 C CNN
F 2 "" H 7600 900 50  0001 C CNN
F 3 "" H 7600 900 50  0001 C CNN
	1    7600 900 
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR045
U 1 1 60CDE58D
P 7750 2450
F 0 "#PWR045" H 7750 2300 50  0001 C CNN
F 1 "+12V" H 7750 2590 50  0000 C CNN
F 2 "" H 7750 2450 50  0001 C CNN
F 3 "" H 7750 2450 50  0001 C CNN
	1    7750 2450
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR046
U 1 1 60CDE691
P 4650 2500
F 0 "#PWR046" H 4650 2350 50  0001 C CNN
F 1 "+12V" H 4650 2640 50  0000 C CNN
F 2 "" H 4650 2500 50  0001 C CNN
F 3 "" H 4650 2500 50  0001 C CNN
	1    4650 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3750 7350 3750
Wire Wire Line
	7350 3750 7350 3700
Wire Wire Line
	4450 3750 4200 3750
Wire Wire Line
	4200 3750 4200 3700
Wire Wire Line
	4650 2500 4200 2500
Wire Wire Line
	4200 2500 4200 2550
Wire Wire Line
	7750 2450 7350 2450
Wire Wire Line
	7350 2450 7350 2550
Wire Wire Line
	7600 2150 7350 2150
Wire Wire Line
	7350 2150 7350 2100
Wire Wire Line
	7600 900  7350 900 
Wire Wire Line
	7350 900  7350 950 
Wire Wire Line
	4200 950  4500 950 
Wire Wire Line
	4500 950  4500 850 
Wire Wire Line
	4200 2100 4500 2100
Wire Wire Line
	4500 2100 4500 2150
$Comp
L GND #PWR047
U 1 1 60CDF082
P 9650 3700
F 0 "#PWR047" H 9650 3450 50  0001 C CNN
F 1 "GND" H 9650 3550 50  0000 C CNN
F 2 "" H 9650 3700 50  0001 C CNN
F 3 "" H 9650 3700 50  0001 C CNN
	1    9650 3700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR048
U 1 1 60CDF132
P 9650 2750
F 0 "#PWR048" H 9650 2500 50  0001 C CNN
F 1 "GND" H 9650 2600 50  0000 C CNN
F 2 "" H 9650 2750 50  0001 C CNN
F 3 "" H 9650 2750 50  0001 C CNN
	1    9650 2750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR049
U 1 1 60CDF3BC
P 9700 1900
F 0 "#PWR049" H 9700 1650 50  0001 C CNN
F 1 "GND" H 9700 1750 50  0000 C CNN
F 2 "" H 9700 1900 50  0001 C CNN
F 3 "" H 9700 1900 50  0001 C CNN
	1    9700 1900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR050
U 1 1 60CDF400
P 9700 1100
F 0 "#PWR050" H 9700 850 50  0001 C CNN
F 1 "GND" H 9700 950 50  0000 C CNN
F 2 "" H 9700 1100 50  0001 C CNN
F 3 "" H 9700 1100 50  0001 C CNN
	1    9700 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 1100 9700 1100
Wire Wire Line
	9800 1900 9700 1900
Wire Wire Line
	9800 2750 9650 2750
Wire Wire Line
	9800 3700 9650 3700
Text Label 9800 800  2    59   ~ 0
M1A
Text Label 9800 900  2    59   ~ 0
M1B
Text Label 9800 1000 2    59   ~ 0
P1A
Text Label 9800 1200 2    59   ~ 0
P1B
Text Label 9800 1600 2    59   ~ 0
M2A
Text Label 9800 1700 2    59   ~ 0
M2B
Text Label 9800 1800 2    59   ~ 0
P2A
Text Label 9800 2000 2    59   ~ 0
P2B
Text Label 9800 2450 2    59   ~ 0
M3A
Text Label 9800 2550 2    59   ~ 0
M3B
Text Label 9800 2650 2    59   ~ 0
P3A
Text Label 9800 2850 2    59   ~ 0
P3B
Text Label 9800 3400 2    59   ~ 0
M4A
Text Label 9800 3500 2    59   ~ 0
M4B
Text Label 9800 3600 2    59   ~ 0
P4A
Text Label 9800 3800 2    59   ~ 0
P4B
$EndSCHEMATC