EESchema Schematic File Version 2
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
LIBS:ESP32-S3
LIBS:ESP32-S3-MultiFunction-cache
LIBS:ESP32-S3-MultiFunction-rescue
LIBS:USBLC6-2SC6
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 7 8
Title "ESP32 S3 Multifunction Board"
Date ""
Rev "1.0"
Comp "Deepwoods Software"
Comment1 "PWM Driver"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PCA9685 U701
U 1 1 62B01C3C
P 2300 2900
F 0 "U701" H 2300 2700 60  0000 C CNN
F 1 "PCA9685" V 2300 3000 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-28_4.4x9.7mm_Pitch0.65mm" H 2300 2900 60  0001 C CNN
F 3 "~" H 2300 2900 60  0000 C CNN
F 4 "771-PCA9685PW,118" H 2300 2900 60  0001 C CNN "Mouser Part Number"
	1    2300 2900
	1    0    0    -1  
$EndComp
Text HLabel 1950 2500 0    25   Input ~ 0
SCL
Text HLabel 1950 2550 0    25   BiDi ~ 0
SDA
$Comp
L +3V3 #PWR060
U 1 1 62B01C3D
P 2300 2250
F 0 "#PWR060" H 2300 2210 30  0001 C CNN
F 1 "+3V3" H 2300 2360 30  0000 C CNN
F 2 "" H 2300 2250 60  0000 C CNN
F 3 "" H 2300 2250 60  0000 C CNN
	1    2300 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR061
U 1 1 62B01C3E
P 2300 3600
F 0 "#PWR061" H 2300 3600 30  0001 C CNN
F 1 "GND" H 2300 3530 30  0001 C CNN
F 2 "" H 2300 3600 60  0000 C CNN
F 3 "" H 2300 3600 60  0000 C CNN
	1    2300 3600
	1    0    0    -1  
$EndComp
$Comp
L C C701
U 1 1 62B01C3F
P 3050 2100
F 0 "C701" H 3050 2200 40  0000 L CNN
F 1 ".1 uf" H 3056 2015 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3088 1950 30  0001 C CNN
F 3 "~" H 3050 2100 60  0000 C CNN
F 4 "710-885012206095" H 3050 2100 60  0001 C CNN "Mouser Part Number"
	1    3050 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR062
U 1 1 62B01C40
P 3050 2350
F 0 "#PWR062" H 3050 2350 30  0001 C CNN
F 1 "GND" H 3050 2280 30  0001 C CNN
F 2 "" H 3050 2350 60  0000 C CNN
F 3 "" H 3050 2350 60  0000 C CNN
	1    3050 2350
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U702
U 1 1 62B01C41
P 4300 1600
F 0 "U702" H 4400 1450 60  0000 C CNN
F 1 "TBD62X83A" H 4550 1700 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 4300 1600 60  0001 C CNN
F 3 "~" H 4300 1600 60  0000 C CNN
F 4 "757-TBD62083AFG or 757-TBD62783AFG" H 4300 1600 60  0001 C CNN "Mouser Part Number"
	1    4300 1600
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U702
U 2 1 62B01C42
P 4300 2100
F 0 "U702" H 4400 1950 60  0000 C CNN
F 1 "TBD62X83A" H 4550 2200 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 4300 2100 60  0001 C CNN
F 3 "~" H 4300 2100 60  0000 C CNN
	2    4300 2100
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U702
U 3 1 62B01C43
P 4300 2600
F 0 "U702" H 4400 2450 60  0000 C CNN
F 1 "TBD62X83A" H 4550 2700 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 4300 2600 60  0001 C CNN
F 3 "~" H 4300 2600 60  0000 C CNN
	3    4300 2600
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U702
U 4 1 62B01C44
P 4300 3100
F 0 "U702" H 4400 2950 60  0000 C CNN
F 1 "TBD62X83A" H 4550 3200 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 4300 3100 60  0001 C CNN
F 3 "~" H 4300 3100 60  0000 C CNN
	4    4300 3100
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U702
U 5 1 62B01C45
P 4300 3600
F 0 "U702" H 4400 3450 60  0000 C CNN
F 1 "TBD62X83A" H 4550 3700 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 4300 3600 60  0001 C CNN
F 3 "~" H 4300 3600 60  0000 C CNN
	5    4300 3600
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U702
U 6 1 62B01C46
P 4300 4100
F 0 "U702" H 4400 3950 60  0000 C CNN
F 1 "TBD62X83A" H 4550 4200 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 4300 4100 60  0001 C CNN
F 3 "~" H 4300 4100 60  0000 C CNN
	6    4300 4100
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U702
U 7 1 62B01C47
P 4300 4600
F 0 "U702" H 4400 4450 60  0000 C CNN
F 1 "TBD62X83A" H 4550 4700 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 4300 4600 60  0001 C CNN
F 3 "~" H 4300 4600 60  0000 C CNN
	7    4300 4600
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U702
U 8 1 62B01C48
P 4300 5100
F 0 "U702" H 4400 4950 60  0000 C CNN
F 1 "TBD62X83A" H 4550 5200 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 4300 5100 60  0001 C CNN
F 3 "~" H 4300 5100 60  0000 C CNN
	8    4300 5100
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U703
U 1 1 62B01C49
P 6800 1550
F 0 "U703" H 6900 1400 60  0000 C CNN
F 1 "TBD62X83A" H 7050 1650 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 6800 1550 60  0001 C CNN
F 3 "~" H 6800 1550 60  0000 C CNN
F 4 "757-TBD62083AFG or 757-TBD62783AFG" H 6800 1550 60  0001 C CNN "Mouser Part Number"
	1    6800 1550
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U703
U 2 1 62B01C4A
P 6800 2050
F 0 "U703" H 6900 1900 60  0000 C CNN
F 1 "TBD62X83A" H 7050 2150 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 6800 2050 60  0001 C CNN
F 3 "~" H 6800 2050 60  0000 C CNN
	2    6800 2050
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U703
U 3 1 62B01C4B
P 6800 2550
F 0 "U703" H 6900 2400 60  0000 C CNN
F 1 "TBD62X83A" H 7050 2650 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 6800 2550 60  0001 C CNN
F 3 "~" H 6800 2550 60  0000 C CNN
	3    6800 2550
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U703
U 4 1 62B01C4C
P 6800 3050
F 0 "U703" H 6900 2900 60  0000 C CNN
F 1 "TBD62X83A" H 7050 3150 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 6800 3050 60  0001 C CNN
F 3 "~" H 6800 3050 60  0000 C CNN
	4    6800 3050
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U703
U 5 1 62B01C4D
P 6800 3550
F 0 "U703" H 6900 3400 60  0000 C CNN
F 1 "TBD62X83A" H 7050 3650 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 6800 3550 60  0001 C CNN
F 3 "~" H 6800 3550 60  0000 C CNN
	5    6800 3550
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U703
U 6 1 62B01C4E
P 6800 4050
F 0 "U703" H 6900 3900 60  0000 C CNN
F 1 "TBD62X83A" H 7050 4150 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 6800 4050 60  0001 C CNN
F 3 "~" H 6800 4050 60  0000 C CNN
	6    6800 4050
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U703
U 7 1 62B01C4F
P 6800 4550
F 0 "U703" H 6900 4400 60  0000 C CNN
F 1 "TBD62X83A" H 7050 4650 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 6800 4550 60  0001 C CNN
F 3 "~" H 6800 4550 60  0000 C CNN
	7    6800 4550
	1    0    0    -1  
$EndComp
$Comp
L TBD62X83A U703
U 8 1 62B01C50
P 6800 5050
F 0 "U703" H 6900 4900 60  0000 C CNN
F 1 "TBD62X83A" H 7050 5150 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 6800 5050 60  0001 C CNN
F 3 "~" H 6800 5050 60  0000 C CNN
	8    6800 5050
	1    0    0    -1  
$EndComp
$Comp
L R_Pack08 RP701
U 1 1 62B01C51
P 9000 1950
F 0 "RP701" H 9000 2400 40  0000 C CNN
F 1 "1.5K Ohms" H 9000 1500 40  0000 C CNN
F 2 "48xxP:4816P" H 9000 1950 60  0001 C CNN
F 3 "~" H 9000 1950 60  0000 C CNN
F 4 "652-4816P-T1LF-1.5K" H 9000 1950 60  0001 C CNN "Mouser Part Number"
	1    9000 1950
	0    1    1    0   
$EndComp
$Comp
L R_Pack08 RP702
U 1 1 62B01C52
P 9050 4400
F 0 "RP702" H 9050 4850 40  0000 C CNN
F 1 "1.5K Ohms" H 9050 3950 40  0000 C CNN
F 2 "48xxP:4816P" H 9050 4400 60  0001 C CNN
F 3 "~" H 9050 4400 60  0000 C CNN
F 4 "652-4816P-T1LF-1.5K" H 9050 4400 60  0001 C CNN "Mouser Part Number"
	1    9050 4400
	0    1    1    0   
$EndComp
$Comp
L Screw_Terminal_01x09 P701
U 1 1 62B01C53
P 9950 1950
F 0 "P701" V 9900 1950 60  0000 C CNN
F 1 "A7 A6 A5 A4 A3 A2 A1 A0 C" V 10000 1950 60  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_9pol" H 9950 1950 60  0001 C CNN
F 3 "~" H 9950 1950 60  0000 C CNN
F 4 "651-1725724" H 9950 1950 60  0001 C CNN "Mouser Part Number"
	1    9950 1950
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_01x09 P702
U 1 1 62B01C54
P 9950 4400
F 0 "P702" V 9900 4400 60  0000 C CNN
F 1 "B7 B6 B5 B4 B3 B2 B1 B0 C" V 10000 4400 60  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_9pol" H 9950 4400 60  0001 C CNN
F 3 "~" H 9950 4400 60  0000 C CNN
F 4 "651-1725724" H 9950 4400 60  0001 C CNN "Mouser Part Number"
	1    9950 4400
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR063
U 1 1 62B01C55
P 3900 1100
F 0 "#PWR063" H 3900 1190 20  0001 C CNN
F 1 "+12V" H 3900 1190 30  0000 C CNN
F 2 "" H 3900 1100 60  0000 C CNN
F 3 "" H 3900 1100 60  0000 C CNN
	1    3900 1100
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR064
U 1 1 62B01C56
P 6400 1150
F 0 "#PWR064" H 6400 1240 20  0001 C CNN
F 1 "+12V" H 6400 1240 30  0000 C CNN
F 2 "" H 6400 1150 60  0000 C CNN
F 3 "" H 6400 1150 60  0000 C CNN
	1    6400 1150
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR065
U 1 1 62B01C57
P 7200 5400
F 0 "#PWR065" H 7200 5490 20  0001 C CNN
F 1 "+12V" H 7200 5490 30  0000 C CNN
F 2 "" H 7200 5400 60  0000 C CNN
F 3 "" H 7200 5400 60  0000 C CNN
	1    7200 5400
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR066
U 1 1 62B01C58
P 4750 5400
F 0 "#PWR066" H 4750 5490 20  0001 C CNN
F 1 "+12V" H 4750 5490 30  0000 C CNN
F 2 "" H 4750 5400 60  0000 C CNN
F 3 "" H 4750 5400 60  0000 C CNN
	1    4750 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR067
U 1 1 62B01C59
P 3900 5850
F 0 "#PWR067" H 3900 5850 30  0001 C CNN
F 1 "GND" H 3900 5780 30  0001 C CNN
F 2 "" H 3900 5850 60  0000 C CNN
F 3 "" H 3900 5850 60  0000 C CNN
	1    3900 5850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR068
U 1 1 62B01C5A
P 6450 5800
F 0 "#PWR068" H 6450 5800 30  0001 C CNN
F 1 "GND" H 6450 5730 30  0001 C CNN
F 2 "" H 6450 5800 60  0000 C CNN
F 3 "" H 6450 5800 60  0000 C CNN
	1    6450 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR069
U 1 1 62B01C5B
P 7200 1250
F 0 "#PWR069" H 7200 1250 30  0001 C CNN
F 1 "GND" H 7200 1180 30  0001 C CNN
F 2 "" H 7200 1250 60  0000 C CNN
F 3 "" H 7200 1250 60  0000 C CNN
	1    7200 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR070
U 1 1 62B01C5C
P 4700 1250
F 0 "#PWR070" H 4700 1250 30  0001 C CNN
F 1 "GND" H 4700 1180 30  0001 C CNN
F 2 "" H 4700 1250 60  0000 C CNN
F 3 "" H 4700 1250 60  0000 C CNN
	1    4700 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR071
U 1 1 62B01C5D
P 700 3600
F 0 "#PWR071" H 700 3600 30  0001 C CNN
F 1 "GND" H 700 3530 30  0001 C CNN
F 2 "" H 700 3600 60  0000 C CNN
F 3 "" H 700 3600 60  0000 C CNN
	1    700  3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3450 2300 3600
Wire Wire Line
	2300 2250 2300 2350
Wire Wire Line
	2700 2300 2700 1900
Wire Wire Line
	2300 2300 2700 2300
Connection ~ 2300 2300
Wire Wire Line
	2700 1900 3050 1900
Wire Wire Line
	3050 2250 3050 2350
Wire Wire Line
	2650 2850 4000 2850
Wire Wire Line
	4000 2850 4000 1600
Wire Wire Line
	4000 1600 4050 1600
Wire Wire Line
	4050 2100 3950 2100
Wire Wire Line
	3950 2100 3950 2800
Wire Wire Line
	3950 2800 2650 2800
Wire Wire Line
	2650 2750 3900 2750
Wire Wire Line
	3900 2750 3900 2600
Wire Wire Line
	3900 2600 4050 2600
Wire Wire Line
	4050 2700 4050 3100
Wire Wire Line
	2650 2700 4050 2700
Wire Wire Line
	2650 2650 3850 2650
Wire Wire Line
	3850 2650 3850 3600
Wire Wire Line
	3850 3600 4050 3600
Wire Wire Line
	4050 4100 3800 4100
Wire Wire Line
	3800 4100 3800 2600
Wire Wire Line
	3800 2600 2650 2600
Wire Wire Line
	3700 5100 4050 5100
Wire Wire Line
	2650 2500 3700 2500
Wire Wire Line
	3700 2500 3700 5100
Wire Wire Line
	2650 3300 6450 3300
Wire Wire Line
	6450 3300 6450 1550
Wire Wire Line
	6450 1550 6550 1550
Wire Wire Line
	6550 2050 6400 2050
Wire Wire Line
	6400 2050 6400 3250
Wire Wire Line
	6400 3250 2650 3250
Wire Wire Line
	2650 3200 3900 3200
Wire Wire Line
	3900 3200 3900 3800
Wire Wire Line
	3900 3800 6350 3800
Wire Wire Line
	6350 3800 6350 2550
Wire Wire Line
	6350 2550 6550 2550
Wire Wire Line
	6550 3050 6300 3050
Wire Wire Line
	6300 3050 6300 3850
Wire Wire Line
	6300 3850 3950 3850
Wire Wire Line
	3950 3850 3950 3150
Wire Wire Line
	3950 3150 2650 3150
Wire Wire Line
	2650 3100 4000 3100
Wire Wire Line
	4000 3100 4000 3900
Wire Wire Line
	4000 3900 6250 3900
Wire Wire Line
	6250 3900 6250 3550
Wire Wire Line
	6250 3550 6550 3550
Wire Wire Line
	6550 4050 6350 4050
Wire Wire Line
	6350 4050 6350 4300
Wire Wire Line
	6350 4300 3650 4300
Wire Wire Line
	3650 4300 3650 3050
Wire Wire Line
	3650 3050 2650 3050
Wire Wire Line
	2650 3000 3600 3000
Wire Wire Line
	3600 3000 3600 4350
Wire Wire Line
	3750 4600 4050 4600
Wire Wire Line
	2650 2550 3750 2550
Wire Wire Line
	3750 2550 3750 4600
Wire Wire Line
	3600 4350 6550 4350
Wire Wire Line
	6550 4350 6550 4550
Wire Wire Line
	6550 5050 6500 5050
Wire Wire Line
	6500 5050 6500 4400
Wire Wire Line
	6500 4400 3550 4400
Wire Wire Line
	3550 4400 3550 2950
Wire Wire Line
	3550 2950 2650 2950
Wire Wire Line
	4300 1200 4300 1500
Wire Wire Line
	6800 1200 6800 1450
Wire Wire Line
	6800 5150 6800 5600
Wire Wire Line
	4300 5200 4300 5650
Wire Wire Line
	4300 1350 5700 1350
Wire Wire Line
	5700 1350 5700 1050
Wire Wire Line
	5700 1050 9400 1050
Wire Wire Line
	9400 1050 9400 2350
Wire Wire Line
	9400 2350 9750 2350
Connection ~ 4300 1350
Wire Wire Line
	6800 1350 8700 1350
Wire Wire Line
	8700 1350 8700 3800
Wire Wire Line
	8700 3800 9650 3800
Wire Wire Line
	9650 3800 9650 4800
Wire Wire Line
	9650 4800 9750 4800
Connection ~ 6800 1350
Wire Wire Line
	9200 1550 9750 1550
Wire Wire Line
	9750 1650 9200 1650
Wire Wire Line
	9200 1750 9750 1750
Wire Wire Line
	9750 1850 9200 1850
Wire Wire Line
	9200 1950 9750 1950
Wire Wire Line
	9750 2050 9200 2050
Wire Wire Line
	9200 2150 9750 2150
Wire Wire Line
	9750 2250 9200 2250
Wire Wire Line
	9750 4000 9250 4000
Wire Wire Line
	9250 4100 9750 4100
Wire Wire Line
	9750 4200 9250 4200
Wire Wire Line
	9250 4300 9750 4300
Wire Wire Line
	9750 4400 9250 4400
Wire Wire Line
	9250 4500 9750 4500
Wire Wire Line
	9750 4600 9250 4600
Wire Wire Line
	9250 4700 9750 4700
Wire Wire Line
	4600 1600 6400 1600
Wire Wire Line
	6400 1600 6400 1750
Wire Wire Line
	6400 1750 8650 1750
Wire Wire Line
	8650 1750 8650 1550
Wire Wire Line
	8650 1550 8800 1550
Wire Wire Line
	8800 1650 8600 1650
Wire Wire Line
	8600 1650 8600 1800
Wire Wire Line
	8600 1800 4600 1800
Wire Wire Line
	4600 1800 4600 2100
Wire Wire Line
	4600 2600 4650 2600
Wire Wire Line
	4650 2600 4650 1850
Wire Wire Line
	4650 1850 8550 1850
Wire Wire Line
	8550 1850 8550 1700
Wire Wire Line
	8550 1700 8750 1700
Wire Wire Line
	8750 1700 8750 1750
Wire Wire Line
	8750 1750 8800 1750
Wire Wire Line
	8800 1850 8600 1850
Wire Wire Line
	8600 1850 8600 2250
Wire Wire Line
	8600 2250 4700 2250
Wire Wire Line
	4700 2250 4700 3100
Wire Wire Line
	4700 3100 4600 3100
Wire Wire Line
	4600 3600 4750 3600
Wire Wire Line
	4750 3600 4750 2300
Wire Wire Line
	4750 2300 8650 2300
Wire Wire Line
	8650 2300 8650 1950
Wire Wire Line
	8650 1950 8800 1950
Wire Wire Line
	4600 4100 4800 4100
Wire Wire Line
	4800 4100 4800 2350
Wire Wire Line
	4800 2350 8750 2350
Wire Wire Line
	8750 2350 8750 2050
Wire Wire Line
	8750 2050 8800 2050
Wire Wire Line
	8800 2150 8550 2150
Wire Wire Line
	8550 2150 8550 4750
Wire Wire Line
	8550 4750 4600 4750
Wire Wire Line
	4600 4750 4600 4600
Wire Wire Line
	4600 5100 6450 5100
Wire Wire Line
	6450 5100 6450 4800
Wire Wire Line
	6450 4800 8500 4800
Wire Wire Line
	8500 4800 8500 2400
Wire Wire Line
	8500 2400 8800 2400
Wire Wire Line
	8800 2400 8800 2250
Wire Wire Line
	8850 4000 8450 4000
Wire Wire Line
	8450 4000 8450 1550
Wire Wire Line
	8450 1550 7100 1550
Wire Wire Line
	7100 2050 8400 2050
Wire Wire Line
	8400 2050 8400 4100
Wire Wire Line
	8400 4100 8850 4100
Wire Wire Line
	8850 4200 8350 4200
Wire Wire Line
	8350 4200 8350 2550
Wire Wire Line
	8350 2550 7100 2550
Wire Wire Line
	7100 3050 8300 3050
Wire Wire Line
	8300 3050 8300 4300
Wire Wire Line
	8300 4300 8850 4300
Wire Wire Line
	8850 4400 8250 4400
Wire Wire Line
	8250 4400 8250 3550
Wire Wire Line
	8250 3550 7100 3550
Wire Wire Line
	7100 4050 8200 4050
Wire Wire Line
	8200 4050 8200 4500
Wire Wire Line
	8200 4500 8850 4500
Wire Wire Line
	8850 4600 7350 4600
Wire Wire Line
	7350 4600 7350 4550
Wire Wire Line
	7350 4550 7100 4550
Wire Wire Line
	8850 4700 8850 5050
Wire Wire Line
	8850 5050 7100 5050
Wire Wire Line
	700  2950 1950 2950
Wire Wire Line
	1950 2950 1950 3050
Wire Wire Line
	700  3450 1950 3450
Wire Wire Line
	1950 3450 1950 3300
Wire Wire Line
	1950 3100 1900 3100
Wire Wire Line
	1900 3100 1900 3050
Wire Wire Line
	1900 3050 700  3050
Wire Wire Line
	1950 3250 1900 3250
Wire Wire Line
	700  3350 1900 3350
Wire Wire Line
	1750 3200 1950 3200
Wire Wire Line
	700  3150 1950 3150
Wire Wire Line
	700  2750 700  3600
Connection ~ 700  3050
Connection ~ 700  3150
Connection ~ 700  3250
Connection ~ 700  3350
Connection ~ 700  3450
Wire Wire Line
	1850 2650 1950 2650
Wire Wire Line
	700  2750 1950 2750
Wire Wire Line
	1900 3350 1900 3250
Wire Wire Line
	1750 3250 1750 3200
Wire Wire Line
	700  3250 1750 3250
Wire Wire Line
	1850 2650 1850 3550
Connection ~ 700  2950
$Comp
L D_Schottky D701
U 1 1 62B01C5E
P 3000 5550
F 0 "D701" H 3000 5650 40  0000 C CNN
F 1 "DFLS240-7" H 3000 5450 40  0000 C CNN
F 2 "Diodes_SMD:D_PowerDI-123" H 3000 5550 60  0001 C CNN
F 3 "~" H 3000 5550 60  0000 C CNN
F 4 "621-DFLS240-7" H 3000 5550 60  0001 C CNN "Mouser Part Number"
	1    3000 5550
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR072
U 1 1 62B01C5F
P 2800 5350
F 0 "#PWR072" H 2800 5300 20  0001 C CNN
F 1 "+12V" H 2800 5450 30  0000 C CNN
F 2 "" H 2800 5350 60  0000 C CNN
F 3 "" H 2800 5350 60  0000 C CNN
	1    2800 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5550 2800 5350
$Comp
L Screw_Terminal_01x02 T701
U 1 1 62B01C60
P 2150 5550
F 0 "T701" V 2100 5550 40  0000 C CNN
F 1 "+ 12V -" V 2200 5550 40  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_2pol" H 2150 5550 60  0001 C CNN
F 3 "~" H 2150 5550 60  0000 C CNN
F 4 "651-1725656" H 2150 5550 60  0001 C CNN "Mouser Part Number"
	1    2150 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 5550 2850 5550
$Comp
L GND #PWR073
U 1 1 62B01C61
P 2350 5850
F 0 "#PWR073" H 2350 5850 30  0001 C CNN
F 1 "GND" H 2350 5780 30  0001 C CNN
F 2 "" H 2350 5850 60  0000 C CNN
F 3 "" H 2350 5850 60  0000 C CNN
	1    2350 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 5650 2350 5850
Text GLabel 3200 5550 2    50   Input ~ 0
CAN +12V
$Comp
L R JP701
U 1 1 62B01C62
P 4050 1200
F 0 "JP701" V 4130 1200 50  0000 C CNN
F 1 "0" V 4050 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3980 1200 50  0001 C CNN
F 3 "" H 4050 1200 50  0001 C CNN
F 4 "71-CRCW12060000Z0EBC" V 4050 1200 60  0001 C CNN "Mouser Part Number"
	1    4050 1200
	0    1    1    0   
$EndComp
$Comp
L R JP703
U 1 1 62B01C63
P 4500 1200
F 0 "JP703" V 4580 1200 50  0000 C CNN
F 1 "0" V 4500 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4430 1200 50  0001 C CNN
F 3 "" H 4500 1200 50  0001 C CNN
F 4 "71-CRCW12060000Z0EBC" V 4500 1200 60  0001 C CNN "Mouser Part Number"
	1    4500 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 1100 3900 1200
Wire Wire Line
	4200 1200 4350 1200
Connection ~ 4300 1200
Wire Wire Line
	4700 1250 4700 1200
Wire Wire Line
	4700 1200 4650 1200
$Comp
L R JP702
U 1 1 62B01C64
P 4100 5650
F 0 "JP702" V 4180 5650 50  0000 C CNN
F 1 "0" V 4100 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4030 5650 50  0001 C CNN
F 3 "" H 4100 5650 50  0001 C CNN
F 4 "71-CRCW12060000Z0EBC" V 4100 5650 60  0001 C CNN "Mouser Part Number"
	1    4100 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 5650 3900 5650
Wire Wire Line
	3900 5650 3900 5850
$Comp
L R JP704
U 1 1 62B01C65
P 4550 5650
F 0 "JP704" V 4630 5650 50  0000 C CNN
F 1 "0" V 4550 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4480 5650 50  0001 C CNN
F 3 "" H 4550 5650 50  0001 C CNN
F 4 "71-CRCW12060000Z0EBC" V 4550 5650 60  0001 C CNN "Mouser Part Number"
	1    4550 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 5650 4400 5650
Connection ~ 4300 5650
Wire Wire Line
	4750 5400 4750 5650
Wire Wire Line
	4750 5650 4700 5650
$Comp
L R JP705
U 1 1 62B01C66
P 6600 1200
F 0 "JP705" V 6680 1200 50  0000 C CNN
F 1 "0" V 6600 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6530 1200 50  0001 C CNN
F 3 "" H 6600 1200 50  0001 C CNN
F 4 "71-CRCW12060000Z0EBC" V 6600 1200 60  0001 C CNN "Mouser Part Number"
	1    6600 1200
	0    1    1    0   
$EndComp
$Comp
L R JP707
U 1 1 62B01C67
P 7000 1200
F 0 "JP707" V 7080 1200 50  0000 C CNN
F 1 "0" V 7000 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6930 1200 50  0001 C CNN
F 3 "" H 7000 1200 50  0001 C CNN
F 4 "71-CRCW12060000Z0EBC" V 7000 1200 60  0001 C CNN "Mouser Part Number"
	1    7000 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 1150 6400 1200
Wire Wire Line
	6400 1200 6450 1200
Wire Wire Line
	6750 1200 6850 1200
Connection ~ 6800 1200
Wire Wire Line
	7150 1200 7200 1200
Wire Wire Line
	7200 1200 7200 1250
$Comp
L R JP706
U 1 1 62B01C68
P 6600 5600
F 0 "JP706" V 6680 5600 50  0000 C CNN
F 1 "0" V 6600 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6530 5600 50  0001 C CNN
F 3 "" H 6600 5600 50  0001 C CNN
F 4 "71-CRCW12060000Z0EBC" V 6600 5600 60  0001 C CNN "Mouser Part Number"
	1    6600 5600
	0    1    1    0   
$EndComp
$Comp
L R JP708
U 1 1 62B01C69
P 7050 5600
F 0 "JP708" V 7130 5600 50  0000 C CNN
F 1 "0" V 7050 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6980 5600 50  0001 C CNN
F 3 "" H 7050 5600 50  0001 C CNN
F 4 "71-CRCW12060000Z0EBC" V 7050 5600 60  0001 C CNN "Mouser Part Number"
	1    7050 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 5400 7200 5600
Wire Wire Line
	6750 5600 6900 5600
Connection ~ 6800 5600
Wire Wire Line
	6450 5600 6450 5800
Wire Wire Line
	1850 3550 2300 3550
Connection ~ 2300 3550
Wire Wire Line
	3050 1900 3050 1950
Wire Wire Line
	3200 5550 3150 5550
Connection ~ 2800 5550
Text GLabel 3250 5400 2    60   Input ~ 0
CAN+12V
Wire Wire Line
	3250 5400 3200 5400
Wire Wire Line
	3200 5400 3200 5550
$EndSCHEMATC
