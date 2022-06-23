EESchema Schematic File Version 2
LIBS:ESP32-D0WD-V3-MultiFunction-rescue
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:ESP32-D0WD-V3
LIBS:W25Q32JVSSIQ
LIBS:umh3n
LIBS:lm2574n-5
LIBS:tc442x
LIBS:4814p-2
LIBS:pca9685
LIBS:tbd62x83a
LIBS:sn65hvd233-ht
LIBS:mechanical
LIBS:graphic_symbols
LIBS:ESP32-D0WD-V3-MultiFunction-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 8
Title "ESP32 Multifunction board"
Date ""
Rev ""
Comp "Deepwoods Software"
Comment1 "PWM Driver"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PCA9685 U701
U 1 1 62B01C3C
P 2800 2400
F 0 "U701" H 2800 2200 60  0000 C CNN
F 1 "PCA9685" V 2800 2500 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-28_4.4x9.7mm_Pitch0.65mm" H 2800 2400 60  0001 C CNN
F 3 "~" H 2800 2400 60  0000 C CNN
F 4 "771-PCA9685PW,118" H 2800 2400 60  0001 C CNN "Mouser Part Number"
	1    2800 2400
	1    0    0    -1  
$EndComp
Text HLabel 2450 2000 0    25   Input ~ 0
SCL
Text HLabel 2450 2050 0    25   BiDi ~ 0
SDA
$Comp
L +3V3 #PWR060
U 1 1 62B01C3D
P 2800 1750
F 0 "#PWR060" H 2800 1710 30  0001 C CNN
F 1 "+3V3" H 2800 1860 30  0000 C CNN
F 2 "" H 2800 1750 60  0000 C CNN
F 3 "" H 2800 1750 60  0000 C CNN
	1    2800 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR061
U 1 1 62B01C3E
P 2800 3100
F 0 "#PWR061" H 2800 3100 30  0001 C CNN
F 1 "GND" H 2800 3030 30  0001 C CNN
F 2 "" H 2800 3100 60  0000 C CNN
F 3 "" H 2800 3100 60  0000 C CNN
	1    2800 3100
	1    0    0    -1  
$EndComp
$Comp
L C C701
U 1 1 62B01C3F
P 3550 1600
F 0 "C701" H 3550 1700 40  0000 L CNN
F 1 ".1 uf" H 3556 1515 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3588 1450 30  0001 C CNN
F 3 "~" H 3550 1600 60  0000 C CNN
F 4 "710-885012206095" H 3550 1600 60  0001 C CNN "Mouser Part Number"
	1    3550 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR062
U 1 1 62B01C40
P 3550 1850
F 0 "#PWR062" H 3550 1850 30  0001 C CNN
F 1 "GND" H 3550 1780 30  0001 C CNN
F 2 "" H 3550 1850 60  0000 C CNN
F 3 "" H 3550 1850 60  0000 C CNN
	1    3550 1850
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U702
U 1 1 62B01C41
P 4800 1100
F 0 "U702" H 4900 950 60  0000 C CNN
F 1 "TBD62X83A" H 5050 1200 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 4800 1100 60  0001 C CNN
F 3 "~" H 4800 1100 60  0000 C CNN
F 4 "757-TBD62083AFG or 757-TBD62783AFG" H 4800 1100 60  0001 C CNN "Mouser Part Number"
	1    4800 1100
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U702
U 2 1 62B01C42
P 4800 1600
F 0 "U702" H 4900 1450 60  0000 C CNN
F 1 "TBD62X83A" H 5050 1700 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 4800 1600 60  0001 C CNN
F 3 "~" H 4800 1600 60  0000 C CNN
	2    4800 1600
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U702
U 3 1 62B01C43
P 4800 2100
F 0 "U702" H 4900 1950 60  0000 C CNN
F 1 "TBD62X83A" H 5050 2200 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 4800 2100 60  0001 C CNN
F 3 "~" H 4800 2100 60  0000 C CNN
	3    4800 2100
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U702
U 4 1 62B01C44
P 4800 2600
F 0 "U702" H 4900 2450 60  0000 C CNN
F 1 "TBD62X83A" H 5050 2700 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 4800 2600 60  0001 C CNN
F 3 "~" H 4800 2600 60  0000 C CNN
	4    4800 2600
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U702
U 5 1 62B01C45
P 4800 3100
F 0 "U702" H 4900 2950 60  0000 C CNN
F 1 "TBD62X83A" H 5050 3200 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 4800 3100 60  0001 C CNN
F 3 "~" H 4800 3100 60  0000 C CNN
	5    4800 3100
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U702
U 6 1 62B01C46
P 4800 3600
F 0 "U702" H 4900 3450 60  0000 C CNN
F 1 "TBD62X83A" H 5050 3700 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 4800 3600 60  0001 C CNN
F 3 "~" H 4800 3600 60  0000 C CNN
	6    4800 3600
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U702
U 7 1 62B01C47
P 4800 4100
F 0 "U702" H 4900 3950 60  0000 C CNN
F 1 "TBD62X83A" H 5050 4200 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 4800 4100 60  0001 C CNN
F 3 "~" H 4800 4100 60  0000 C CNN
	7    4800 4100
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U702
U 8 1 62B01C48
P 4800 4600
F 0 "U702" H 4900 4450 60  0000 C CNN
F 1 "TBD62X83A" H 5050 4700 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 4800 4600 60  0001 C CNN
F 3 "~" H 4800 4600 60  0000 C CNN
	8    4800 4600
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U703
U 1 1 62B01C49
P 7300 1050
F 0 "U703" H 7400 900 60  0000 C CNN
F 1 "TBD62X83A" H 7550 1150 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 7300 1050 60  0001 C CNN
F 3 "~" H 7300 1050 60  0000 C CNN
F 4 "757-TBD62083AFG or 757-TBD62783AFG" H 7300 1050 60  0001 C CNN "Mouser Part Number"
	1    7300 1050
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U703
U 2 1 62B01C4A
P 7300 1550
F 0 "U703" H 7400 1400 60  0000 C CNN
F 1 "TBD62X83A" H 7550 1650 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 7300 1550 60  0001 C CNN
F 3 "~" H 7300 1550 60  0000 C CNN
	2    7300 1550
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U703
U 3 1 62B01C4B
P 7300 2050
F 0 "U703" H 7400 1900 60  0000 C CNN
F 1 "TBD62X83A" H 7550 2150 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 7300 2050 60  0001 C CNN
F 3 "~" H 7300 2050 60  0000 C CNN
	3    7300 2050
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U703
U 4 1 62B01C4C
P 7300 2550
F 0 "U703" H 7400 2400 60  0000 C CNN
F 1 "TBD62X83A" H 7550 2650 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 7300 2550 60  0001 C CNN
F 3 "~" H 7300 2550 60  0000 C CNN
	4    7300 2550
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U703
U 5 1 62B01C4D
P 7300 3050
F 0 "U703" H 7400 2900 60  0000 C CNN
F 1 "TBD62X83A" H 7550 3150 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 7300 3050 60  0001 C CNN
F 3 "~" H 7300 3050 60  0000 C CNN
	5    7300 3050
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U703
U 6 1 62B01C4E
P 7300 3550
F 0 "U703" H 7400 3400 60  0000 C CNN
F 1 "TBD62X83A" H 7550 3650 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 7300 3550 60  0001 C CNN
F 3 "~" H 7300 3550 60  0000 C CNN
	6    7300 3550
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U703
U 7 1 62B01C4F
P 7300 4050
F 0 "U703" H 7400 3900 60  0000 C CNN
F 1 "TBD62X83A" H 7550 4150 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 7300 4050 60  0001 C CNN
F 3 "~" H 7300 4050 60  0000 C CNN
	7    7300 4050
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U703
U 8 1 62B01C50
P 7300 4550
F 0 "U703" H 7400 4400 60  0000 C CNN
F 1 "TBD62X83A" H 7550 4650 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 7300 4550 60  0001 C CNN
F 3 "~" H 7300 4550 60  0000 C CNN
	8    7300 4550
	1    0    0    -1  
$EndComp
$Comp
L R_Pack08 RP701
U 1 1 62B01C51
P 9500 1450
F 0 "RP701" H 9500 1900 40  0000 C CNN
F 1 "1.5K Ohms" H 9500 1000 40  0000 C CNN
F 2 "48xxP:4816P" H 9500 1450 60  0001 C CNN
F 3 "~" H 9500 1450 60  0000 C CNN
F 4 "652-4816P-T1LF-1.5K" H 9500 1450 60  0001 C CNN "Mouser Part Number"
	1    9500 1450
	0    1    1    0   
$EndComp
$Comp
L R_Pack08 RP702
U 1 1 62B01C52
P 9550 3900
F 0 "RP702" H 9550 4350 40  0000 C CNN
F 1 "1.5K Ohms" H 9550 3450 40  0000 C CNN
F 2 "48xxP:4816P" H 9550 3900 60  0001 C CNN
F 3 "~" H 9550 3900 60  0000 C CNN
F 4 "652-4816P-T1LF-1.5K" H 9550 3900 60  0001 C CNN "Mouser Part Number"
	1    9550 3900
	0    1    1    0   
$EndComp
$Comp
L Screw_Terminal_01x09 P701
U 1 1 62B01C53
P 10450 1450
F 0 "P701" V 10400 1450 60  0000 C CNN
F 1 "A7 A6 A5 A4 A3 A2 A1 A0 C" V 10500 1450 60  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_9pol" H 10450 1450 60  0001 C CNN
F 3 "~" H 10450 1450 60  0000 C CNN
F 4 "651-1725724" H 10450 1450 60  0001 C CNN "Mouser Part Number"
	1    10450 1450
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_01x09 P702
U 1 1 62B01C54
P 10450 3900
F 0 "P702" V 10400 3900 60  0000 C CNN
F 1 "B7 B6 B5 B4 B3 B2 B1 B0 C" V 10500 3900 60  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_9pol" H 10450 3900 60  0001 C CNN
F 3 "~" H 10450 3900 60  0000 C CNN
F 4 "651-1725724" H 10450 3900 60  0001 C CNN "Mouser Part Number"
	1    10450 3900
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR063
U 1 1 62B01C55
P 4400 600
F 0 "#PWR063" H 4400 690 20  0001 C CNN
F 1 "+12V" H 4400 690 30  0000 C CNN
F 2 "" H 4400 600 60  0000 C CNN
F 3 "" H 4400 600 60  0000 C CNN
	1    4400 600 
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR064
U 1 1 62B01C56
P 6900 650
F 0 "#PWR064" H 6900 740 20  0001 C CNN
F 1 "+12V" H 6900 740 30  0000 C CNN
F 2 "" H 6900 650 60  0000 C CNN
F 3 "" H 6900 650 60  0000 C CNN
	1    6900 650 
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR065
U 1 1 62B01C57
P 7700 4900
F 0 "#PWR065" H 7700 4990 20  0001 C CNN
F 1 "+12V" H 7700 4990 30  0000 C CNN
F 2 "" H 7700 4900 60  0000 C CNN
F 3 "" H 7700 4900 60  0000 C CNN
	1    7700 4900
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR066
U 1 1 62B01C58
P 5250 4900
F 0 "#PWR066" H 5250 4990 20  0001 C CNN
F 1 "+12V" H 5250 4990 30  0000 C CNN
F 2 "" H 5250 4900 60  0000 C CNN
F 3 "" H 5250 4900 60  0000 C CNN
	1    5250 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR067
U 1 1 62B01C59
P 4400 5350
F 0 "#PWR067" H 4400 5350 30  0001 C CNN
F 1 "GND" H 4400 5280 30  0001 C CNN
F 2 "" H 4400 5350 60  0000 C CNN
F 3 "" H 4400 5350 60  0000 C CNN
	1    4400 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR068
U 1 1 62B01C5A
P 6950 5300
F 0 "#PWR068" H 6950 5300 30  0001 C CNN
F 1 "GND" H 6950 5230 30  0001 C CNN
F 2 "" H 6950 5300 60  0000 C CNN
F 3 "" H 6950 5300 60  0000 C CNN
	1    6950 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR069
U 1 1 62B01C5B
P 7700 750
F 0 "#PWR069" H 7700 750 30  0001 C CNN
F 1 "GND" H 7700 680 30  0001 C CNN
F 2 "" H 7700 750 60  0000 C CNN
F 3 "" H 7700 750 60  0000 C CNN
	1    7700 750 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR070
U 1 1 62B01C5C
P 5200 750
F 0 "#PWR070" H 5200 750 30  0001 C CNN
F 1 "GND" H 5200 680 30  0001 C CNN
F 2 "" H 5200 750 60  0000 C CNN
F 3 "" H 5200 750 60  0000 C CNN
	1    5200 750 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR071
U 1 1 62B01C5D
P 1200 3100
F 0 "#PWR071" H 1200 3100 30  0001 C CNN
F 1 "GND" H 1200 3030 30  0001 C CNN
F 2 "" H 1200 3100 60  0000 C CNN
F 3 "" H 1200 3100 60  0000 C CNN
	1    1200 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2950 2800 3100
Wire Wire Line
	2800 1750 2800 1850
Wire Wire Line
	3200 1800 3200 1400
Wire Wire Line
	2800 1800 3200 1800
Connection ~ 2800 1800
Wire Wire Line
	3200 1400 3550 1400
Wire Wire Line
	3550 1750 3550 1850
Wire Wire Line
	3150 2350 4500 2350
Wire Wire Line
	4500 2350 4500 1100
Wire Wire Line
	4500 1100 4550 1100
Wire Wire Line
	4550 1600 4450 1600
Wire Wire Line
	4450 1600 4450 2300
Wire Wire Line
	4450 2300 3150 2300
Wire Wire Line
	3150 2250 4400 2250
Wire Wire Line
	4400 2250 4400 2100
Wire Wire Line
	4400 2100 4550 2100
Wire Wire Line
	4550 2200 4550 2600
Wire Wire Line
	3150 2200 4550 2200
Wire Wire Line
	3150 2150 4350 2150
Wire Wire Line
	4350 2150 4350 3100
Wire Wire Line
	4350 3100 4550 3100
Wire Wire Line
	4550 3600 4300 3600
Wire Wire Line
	4300 3600 4300 2100
Wire Wire Line
	4300 2100 3150 2100
Wire Wire Line
	4200 4600 4550 4600
Wire Wire Line
	3150 2000 4200 2000
Wire Wire Line
	4200 2000 4200 4600
Wire Wire Line
	3150 2800 6950 2800
Wire Wire Line
	6950 2800 6950 1050
Wire Wire Line
	6950 1050 7050 1050
Wire Wire Line
	7050 1550 6900 1550
Wire Wire Line
	6900 1550 6900 2750
Wire Wire Line
	6900 2750 3150 2750
Wire Wire Line
	3150 2700 4400 2700
Wire Wire Line
	4400 2700 4400 3300
Wire Wire Line
	4400 3300 6850 3300
Wire Wire Line
	6850 3300 6850 2050
Wire Wire Line
	6850 2050 7050 2050
Wire Wire Line
	7050 2550 6800 2550
Wire Wire Line
	6800 2550 6800 3350
Wire Wire Line
	6800 3350 4450 3350
Wire Wire Line
	4450 3350 4450 2650
Wire Wire Line
	4450 2650 3150 2650
Wire Wire Line
	3150 2600 4500 2600
Wire Wire Line
	4500 2600 4500 3400
Wire Wire Line
	4500 3400 6750 3400
Wire Wire Line
	6750 3400 6750 3050
Wire Wire Line
	6750 3050 7050 3050
Wire Wire Line
	7050 3550 6850 3550
Wire Wire Line
	6850 3550 6850 3800
Wire Wire Line
	6850 3800 4150 3800
Wire Wire Line
	4150 3800 4150 2550
Wire Wire Line
	4150 2550 3150 2550
Wire Wire Line
	3150 2500 4100 2500
Wire Wire Line
	4100 2500 4100 3850
Wire Wire Line
	4250 4100 4550 4100
Wire Wire Line
	3150 2050 4250 2050
Wire Wire Line
	4250 2050 4250 4100
Wire Wire Line
	4100 3850 7050 3850
Wire Wire Line
	7050 3850 7050 4050
Wire Wire Line
	7050 4550 7000 4550
Wire Wire Line
	7000 4550 7000 3900
Wire Wire Line
	7000 3900 4050 3900
Wire Wire Line
	4050 3900 4050 2450
Wire Wire Line
	4050 2450 3150 2450
Wire Wire Line
	4800 700  4800 1000
Wire Wire Line
	7300 700  7300 950 
Wire Wire Line
	7300 4650 7300 5100
Wire Wire Line
	4800 4700 4800 5150
Wire Wire Line
	4800 850  6200 850 
Wire Wire Line
	6200 850  6200 550 
Wire Wire Line
	6200 550  9900 550 
Wire Wire Line
	9900 550  9900 1850
Wire Wire Line
	9900 1850 10250 1850
Connection ~ 4800 850 
Wire Wire Line
	7300 850  9200 850 
Wire Wire Line
	9200 850  9200 3300
Wire Wire Line
	9200 3300 10150 3300
Wire Wire Line
	10150 3300 10150 4300
Wire Wire Line
	10150 4300 10250 4300
Connection ~ 7300 850 
Wire Wire Line
	9700 1050 10250 1050
Wire Wire Line
	10250 1150 9700 1150
Wire Wire Line
	9700 1250 10250 1250
Wire Wire Line
	10250 1350 9700 1350
Wire Wire Line
	9700 1450 10250 1450
Wire Wire Line
	10250 1550 9700 1550
Wire Wire Line
	9700 1650 10250 1650
Wire Wire Line
	10250 1750 9700 1750
Wire Wire Line
	10250 3500 9750 3500
Wire Wire Line
	9750 3600 10250 3600
Wire Wire Line
	10250 3700 9750 3700
Wire Wire Line
	9750 3800 10250 3800
Wire Wire Line
	10250 3900 9750 3900
Wire Wire Line
	9750 4000 10250 4000
Wire Wire Line
	10250 4100 9750 4100
Wire Wire Line
	9750 4200 10250 4200
Wire Wire Line
	5100 1100 6900 1100
Wire Wire Line
	6900 1100 6900 1250
Wire Wire Line
	6900 1250 9150 1250
Wire Wire Line
	9150 1250 9150 1050
Wire Wire Line
	9150 1050 9300 1050
Wire Wire Line
	9300 1150 9100 1150
Wire Wire Line
	9100 1150 9100 1300
Wire Wire Line
	9100 1300 5100 1300
Wire Wire Line
	5100 1300 5100 1600
Wire Wire Line
	5100 2100 5150 2100
Wire Wire Line
	5150 2100 5150 1350
Wire Wire Line
	5150 1350 9050 1350
Wire Wire Line
	9050 1350 9050 1200
Wire Wire Line
	9050 1200 9250 1200
Wire Wire Line
	9250 1200 9250 1250
Wire Wire Line
	9250 1250 9300 1250
Wire Wire Line
	9300 1350 9100 1350
Wire Wire Line
	9100 1350 9100 1750
Wire Wire Line
	9100 1750 5200 1750
Wire Wire Line
	5200 1750 5200 2600
Wire Wire Line
	5200 2600 5100 2600
Wire Wire Line
	5100 3100 5250 3100
Wire Wire Line
	5250 3100 5250 1800
Wire Wire Line
	5250 1800 9150 1800
Wire Wire Line
	9150 1800 9150 1450
Wire Wire Line
	9150 1450 9300 1450
Wire Wire Line
	5100 3600 5300 3600
Wire Wire Line
	5300 3600 5300 1850
Wire Wire Line
	5300 1850 9250 1850
Wire Wire Line
	9250 1850 9250 1550
Wire Wire Line
	9250 1550 9300 1550
Wire Wire Line
	9300 1650 9050 1650
Wire Wire Line
	9050 1650 9050 4250
Wire Wire Line
	9050 4250 5100 4250
Wire Wire Line
	5100 4250 5100 4100
Wire Wire Line
	5100 4600 6950 4600
Wire Wire Line
	6950 4600 6950 4300
Wire Wire Line
	6950 4300 9000 4300
Wire Wire Line
	9000 4300 9000 1900
Wire Wire Line
	9000 1900 9300 1900
Wire Wire Line
	9300 1900 9300 1750
Wire Wire Line
	9350 3500 8950 3500
Wire Wire Line
	8950 3500 8950 1050
Wire Wire Line
	8950 1050 7600 1050
Wire Wire Line
	7600 1550 8900 1550
Wire Wire Line
	8900 1550 8900 3600
Wire Wire Line
	8900 3600 9350 3600
Wire Wire Line
	9350 3700 8850 3700
Wire Wire Line
	8850 3700 8850 2050
Wire Wire Line
	8850 2050 7600 2050
Wire Wire Line
	7600 2550 8800 2550
Wire Wire Line
	8800 2550 8800 3800
Wire Wire Line
	8800 3800 9350 3800
Wire Wire Line
	9350 3900 8750 3900
Wire Wire Line
	8750 3900 8750 3050
Wire Wire Line
	8750 3050 7600 3050
Wire Wire Line
	7600 3550 8700 3550
Wire Wire Line
	8700 3550 8700 4000
Wire Wire Line
	8700 4000 9350 4000
Wire Wire Line
	9350 4100 7850 4100
Wire Wire Line
	7850 4100 7850 4050
Wire Wire Line
	7850 4050 7600 4050
Wire Wire Line
	9350 4200 9350 4550
Wire Wire Line
	9350 4550 7600 4550
Wire Wire Line
	1200 2450 2450 2450
Wire Wire Line
	2450 2450 2450 2550
Wire Wire Line
	1200 2950 2450 2950
Wire Wire Line
	2450 2950 2450 2800
Wire Wire Line
	2450 2600 2400 2600
Wire Wire Line
	2400 2600 2400 2550
Wire Wire Line
	2400 2550 1200 2550
Wire Wire Line
	2450 2750 2400 2750
Wire Wire Line
	1200 2850 2400 2850
Wire Wire Line
	2250 2700 2450 2700
Wire Wire Line
	1200 2650 2450 2650
Wire Wire Line
	1200 2250 1200 3100
Connection ~ 1200 2550
Connection ~ 1200 2650
Connection ~ 1200 2750
Connection ~ 1200 2850
Connection ~ 1200 2950
Wire Wire Line
	2350 2150 2450 2150
Wire Wire Line
	1200 2250 2450 2250
Wire Wire Line
	2400 2850 2400 2750
Wire Wire Line
	2250 2750 2250 2700
Wire Wire Line
	1200 2750 2250 2750
Wire Wire Line
	2350 2150 2350 3050
Connection ~ 1200 2450
$Comp
L D_Schottky D701
U 1 1 62B01C5E
P 3500 5050
F 0 "D701" H 3500 5150 40  0000 C CNN
F 1 "DFLS240-7" H 3500 4950 40  0000 C CNN
F 2 "Diodes_SMD:D_SMB" H 3500 5050 60  0001 C CNN
F 3 "~" H 3500 5050 60  0000 C CNN
F 4 "621-DFLS240-7" H 3500 5050 60  0001 C CNN "Mouser Part Number"
	1    3500 5050
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR072
U 1 1 62B01C5F
P 3300 4850
F 0 "#PWR072" H 3300 4800 20  0001 C CNN
F 1 "+12V" H 3300 4950 30  0000 C CNN
F 2 "" H 3300 4850 60  0000 C CNN
F 3 "" H 3300 4850 60  0000 C CNN
	1    3300 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 5050 3300 4850
$Comp
L Screw_Terminal_01x02 T701
U 1 1 62B01C60
P 2650 5050
F 0 "T701" V 2600 5050 40  0000 C CNN
F 1 "+ 12V -" V 2700 5050 40  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_2pol" H 2650 5050 60  0001 C CNN
F 3 "~" H 2650 5050 60  0000 C CNN
F 4 "651-1725656" H 2650 5050 60  0001 C CNN "Mouser Part Number"
	1    2650 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2850 5050 3350 5050
$Comp
L GND #PWR073
U 1 1 62B01C61
P 2850 5350
F 0 "#PWR073" H 2850 5350 30  0001 C CNN
F 1 "GND" H 2850 5280 30  0001 C CNN
F 2 "" H 2850 5350 60  0000 C CNN
F 3 "" H 2850 5350 60  0000 C CNN
	1    2850 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5150 2850 5350
Text GLabel 3700 5050 2    50   Input ~ 0
CAN +12V
$Comp
L R JP701
U 1 1 62B01C62
P 4550 700
F 0 "JP701" V 4630 700 50  0000 C CNN
F 1 "0" V 4550 700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4480 700 50  0001 C CNN
F 3 "" H 4550 700 50  0001 C CNN
F 4 "71-CRCW12060000Z0EBC" V 4550 700 60  0001 C CNN "Mouser Part Number"
	1    4550 700 
	0    1    1    0   
$EndComp
$Comp
L R JP703
U 1 1 62B01C63
P 5000 700
F 0 "JP703" V 5080 700 50  0000 C CNN
F 1 "0" V 5000 700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4930 700 50  0001 C CNN
F 3 "" H 5000 700 50  0001 C CNN
F 4 "71-CRCW12060000Z0EBC" V 5000 700 60  0001 C CNN "Mouser Part Number"
	1    5000 700 
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 600  4400 700 
Wire Wire Line
	4700 700  4850 700 
Connection ~ 4800 700 
Wire Wire Line
	5200 750  5200 700 
Wire Wire Line
	5200 700  5150 700 
$Comp
L R JP702
U 1 1 62B01C64
P 4600 5150
F 0 "JP702" V 4680 5150 50  0000 C CNN
F 1 "0" V 4600 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4530 5150 50  0001 C CNN
F 3 "" H 4600 5150 50  0001 C CNN
F 4 "71-CRCW12060000Z0EBC" V 4600 5150 60  0001 C CNN "Mouser Part Number"
	1    4600 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 5150 4400 5150
Wire Wire Line
	4400 5150 4400 5350
$Comp
L R JP704
U 1 1 62B01C65
P 5050 5150
F 0 "JP704" V 5130 5150 50  0000 C CNN
F 1 "0" V 5050 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4980 5150 50  0001 C CNN
F 3 "" H 5050 5150 50  0001 C CNN
F 4 "71-CRCW12060000Z0EBC" V 5050 5150 60  0001 C CNN "Mouser Part Number"
	1    5050 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 5150 4900 5150
Connection ~ 4800 5150
Wire Wire Line
	5250 4900 5250 5150
Wire Wire Line
	5250 5150 5200 5150
$Comp
L R JP705
U 1 1 62B01C66
P 7100 700
F 0 "JP705" V 7180 700 50  0000 C CNN
F 1 "0" V 7100 700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 7030 700 50  0001 C CNN
F 3 "" H 7100 700 50  0001 C CNN
F 4 "71-CRCW12060000Z0EBC" V 7100 700 60  0001 C CNN "Mouser Part Number"
	1    7100 700 
	0    1    1    0   
$EndComp
$Comp
L R JP707
U 1 1 62B01C67
P 7500 700
F 0 "JP707" V 7580 700 50  0000 C CNN
F 1 "0" V 7500 700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 7430 700 50  0001 C CNN
F 3 "" H 7500 700 50  0001 C CNN
F 4 "71-CRCW12060000Z0EBC" V 7500 700 60  0001 C CNN "Mouser Part Number"
	1    7500 700 
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 650  6900 700 
Wire Wire Line
	6900 700  6950 700 
Wire Wire Line
	7250 700  7350 700 
Connection ~ 7300 700 
Wire Wire Line
	7650 700  7700 700 
Wire Wire Line
	7700 700  7700 750 
$Comp
L R JP706
U 1 1 62B01C68
P 7100 5100
F 0 "JP706" V 7180 5100 50  0000 C CNN
F 1 "0" V 7100 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 7030 5100 50  0001 C CNN
F 3 "" H 7100 5100 50  0001 C CNN
F 4 "71-CRCW12060000Z0EBC" V 7100 5100 60  0001 C CNN "Mouser Part Number"
	1    7100 5100
	0    1    1    0   
$EndComp
$Comp
L R JP708
U 1 1 62B01C69
P 7550 5100
F 0 "JP708" V 7630 5100 50  0000 C CNN
F 1 "0" V 7550 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 7480 5100 50  0001 C CNN
F 3 "" H 7550 5100 50  0001 C CNN
F 4 "71-CRCW12060000Z0EBC" V 7550 5100 60  0001 C CNN "Mouser Part Number"
	1    7550 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 4900 7700 5100
Wire Wire Line
	7400 5100 7250 5100
Connection ~ 7300 5100
Wire Wire Line
	6950 5100 6950 5300
Wire Wire Line
	2350 3050 2800 3050
Connection ~ 2800 3050
Wire Wire Line
	3550 1400 3550 1450
Wire Wire Line
	3700 5050 3650 5050
Connection ~ 3300 5050
Text GLabel 3750 4900 2    60   Input ~ 0
CAN+12V
Wire Wire Line
	3750 4900 3700 4900
Wire Wire Line
	3700 4900 3700 5050
$EndSCHEMATC
