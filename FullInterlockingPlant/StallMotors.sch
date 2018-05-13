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
LIBS:FullInterlockingPlant-cache
LIBS:FullInterlockingPlant-cache
EELAYER 27 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 4
Title "Swich Motor Control and sense"
Date "13 may 2018"
Rev "1.0"
Comp "Deepwoods Software"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74AHCT00 U1
U 1 1 5AF774BF
P 2200 3750
F 0 "U1" H 2200 3800 60  0000 C CNN
F 1 "74AHCT00" H 2200 3650 60  0000 C CNN
F 2 "~" H 2200 3750 60  0000 C CNN
F 3 "~" H 2200 3750 60  0000 C CNN
F 4 "595-SN74AHC00N" H 2200 3750 60  0001 C CNN "Mouser part Number"
	1    2200 3750
	1    0    0    -1  
$EndComp
$Comp
L 74AHCT00 U1
U 2 1 5AF774C0
P 2200 4450
F 0 "U1" H 2200 4500 60  0000 C CNN
F 1 "74AHCT00" H 2200 4350 60  0000 C CNN
F 2 "~" H 2200 4450 60  0000 C CNN
F 3 "~" H 2200 4450 60  0000 C CNN
F 4 "74HCT00" H 2200 4450 60  0001 C CNN "Mouser part Number"
	2    2200 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4150 1600 4350
Wire Wire Line
	1600 4150 2800 4150
Wire Wire Line
	2800 4150 2800 3750
Wire Wire Line
	2800 4450 2800 4200
Wire Wire Line
	2800 4200 1550 4200
Wire Wire Line
	1550 4200 1550 3850
Wire Wire Line
	1550 3850 1600 3850
$Comp
L GND #PWR016
U 1 1 5AF774C1
P 2000 4000
F 0 "#PWR016" H 2000 4000 30  0001 C CNN
F 1 "GND" H 2000 3930 30  0001 C CNN
F 2 "" H 2000 4000 60  0000 C CNN
F 3 "" H 2000 4000 60  0000 C CNN
	1    2000 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3950 2000 4000
$Comp
L +3.3V #PWR017
U 1 1 5AF774C2
P 2000 3500
F 0 "#PWR017" H 2000 3460 30  0001 C CNN
F 1 "+3.3V" H 2000 3610 30  0000 C CNN
F 2 "" H 2000 3500 60  0000 C CNN
F 3 "" H 2000 3500 60  0000 C CNN
	1    2000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3550 2000 3500
$Comp
L 74AHCT00 U1
U 3 1 5AF774CE
P 2250 5150
F 0 "U1" H 2250 5200 60  0000 C CNN
F 1 "74AHCT00" H 2250 5050 60  0000 C CNN
F 2 "~" H 2250 5150 60  0000 C CNN
F 3 "~" H 2250 5150 60  0000 C CNN
	3    2250 5150
	1    0    0    -1  
$EndComp
$Comp
L 74AHCT00 U1
U 4 1 5AF774CF
P 2250 5850
F 0 "U1" H 2250 5900 60  0000 C CNN
F 1 "74AHCT00" H 2250 5750 60  0000 C CNN
F 2 "~" H 2250 5850 60  0000 C CNN
F 3 "~" H 2250 5850 60  0000 C CNN
	4    2250 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5550 1650 5750
Wire Wire Line
	2850 5550 1650 5550
Wire Wire Line
	2850 5150 2850 5550
Wire Wire Line
	2850 5850 2850 5600
Wire Wire Line
	2850 5600 1600 5600
Wire Wire Line
	1600 5600 1600 5250
Wire Wire Line
	1600 5250 1650 5250
$Comp
L MCT6H IC1
U 1 1 5AF774D0
P 4350 1450
F 0 "IC1" H 4160 1640 40  0000 C CNN
F 1 "MCT6H" H 4510 1260 40  0000 C CNN
F 2 "DIP8" H 4150 1270 30  0000 C CIN
F 3 "~" H 4350 1450 60  0000 C CNN
F 4 "782-MCT6H " H 4350 1450 60  0001 C CNN "Mouser part Number"
	1    4350 1450
	1    0    0    -1  
$EndComp
$Comp
L MCT6H IC1
U 2 1 5AF774D1
P 4350 2900
F 0 "IC1" H 4160 3090 40  0000 C CNN
F 1 "MCT6H" H 4510 2710 40  0000 C CNN
F 2 "DIP8" H 4150 2720 30  0000 C CIN
F 3 "~" H 4350 2900 60  0000 C CNN
	2    4350 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5AF774D2
P 4000 1600
F 0 "#PWR018" H 4000 1600 30  0001 C CNN
F 1 "GND" H 4000 1530 30  0001 C CNN
F 2 "" H 4000 1600 60  0000 C CNN
F 3 "" H 4000 1600 60  0000 C CNN
	1    4000 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 5AF774D3
P 4000 3050
F 0 "#PWR019" H 4000 3050 30  0001 C CNN
F 1 "GND" H 4000 2980 30  0001 C CNN
F 2 "" H 4000 3050 60  0000 C CNN
F 3 "" H 4000 3050 60  0000 C CNN
	1    4000 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1550 4000 1600
Wire Wire Line
	4000 3000 4000 3050
$Comp
L R R5
U 1 1 5AF774D4
P 3750 1350
F 0 "R5" V 3830 1350 40  0000 C CNN
F 1 "270 Ohms" V 3757 1351 40  0000 C CNN
F 2 "~" V 3680 1350 30  0000 C CNN
F 3 "~" H 3750 1350 30  0000 C CNN
F 4 "603-CFR-25JR-52-270R" V 3750 1350 60  0001 C CNN "Mouser Part Number"
	1    3750 1350
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5AF774D5
P 3750 2800
F 0 "R6" V 3830 2800 40  0000 C CNN
F 1 "270 Ohms" V 3757 2801 40  0000 C CNN
F 2 "~" V 3680 2800 30  0000 C CNN
F 3 "~" H 3750 2800 30  0000 C CNN
F 4 "603-CFR-25JR-52-270R" V 3750 2800 60  0001 C CNN "Mouser Part Number"
	1    3750 2800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR020
U 1 1 5AF774D6
P 4700 3050
F 0 "#PWR020" H 4700 3050 30  0001 C CNN
F 1 "GND" H 4700 2980 30  0001 C CNN
F 2 "" H 4700 3050 60  0000 C CNN
F 3 "" H 4700 3050 60  0000 C CNN
	1    4700 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 5AF774D7
P 4700 1600
F 0 "#PWR021" H 4700 1600 30  0001 C CNN
F 1 "GND" H 4700 1530 30  0001 C CNN
F 2 "" H 4700 1600 60  0000 C CNN
F 3 "" H 4700 1600 60  0000 C CNN
	1    4700 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1550 4700 1600
Wire Wire Line
	4700 3000 4700 3050
$Comp
L R R1
U 1 1 5AF774D8
P 1850 3300
F 0 "R1" V 1930 3300 40  0000 C CNN
F 1 "10K Ohms" V 1857 3301 40  0000 C CNN
F 2 "~" V 1780 3300 30  0000 C CNN
F 3 "~" H 1850 3300 30  0000 C CNN
F 4 "603-CFR-25JR-5210K" V 1850 3300 60  0001 C CNN "Mouser Part Number"
	1    1850 3300
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 5AF774D9
P 1900 4700
F 0 "R2" V 1980 4700 40  0000 C CNN
F 1 "10K Ohms" V 1907 4701 40  0000 C CNN
F 2 "~" V 1830 4700 30  0000 C CNN
F 3 "~" H 1900 4700 30  0000 C CNN
F 4 "603-CFR-25JR-5210K" V 1900 4700 60  0001 C CNN "Mouser Part Number"
	1    1900 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 4550 1650 4700
$Comp
L R R3
U 1 1 5AF774DA
P 1900 4850
F 0 "R3" V 1980 4850 40  0000 C CNN
F 1 "10K Ohms" V 1907 4851 40  0000 C CNN
F 2 "~" V 1830 4850 30  0000 C CNN
F 3 "~" H 1900 4850 30  0000 C CNN
F 4 "603-CFR-25JR-5210K" V 1900 4850 60  0001 C CNN "Mouser Part Number"
	1    1900 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 4850 1650 5050
$Comp
L R R4
U 1 1 5AF774DB
P 1900 6150
F 0 "R4" V 1980 6150 40  0000 C CNN
F 1 "10K Ohms" V 1907 6151 40  0000 C CNN
F 2 "~" V 1830 6150 30  0000 C CNN
F 3 "~" H 1900 6150 30  0000 C CNN
F 4 "603-CFR-25JR-5210K" V 1900 6150 60  0001 C CNN "Mouser Part Number"
	1    1900 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 5950 1650 6150
Wire Wire Line
	1600 3300 1600 3650
$Comp
L +3.3V #PWR022
U 1 1 5AF774DC
P 2100 3250
F 0 "#PWR022" H 2100 3210 30  0001 C CNN
F 1 "+3.3V" H 2100 3360 30  0000 C CNN
F 2 "" H 2100 3250 60  0000 C CNN
F 3 "" H 2100 3250 60  0000 C CNN
	1    2100 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3250 2100 3300
$Comp
L +3.3V #PWR023
U 1 1 5AF774DD
P 2250 4800
F 0 "#PWR023" H 2250 4760 30  0001 C CNN
F 1 "+3.3V" H 2250 4910 30  0000 C CNN
F 2 "" H 2250 4800 60  0000 C CNN
F 3 "" H 2250 4800 60  0000 C CNN
	1    2250 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4850 2250 4850
Wire Wire Line
	2250 4850 2250 4800
Wire Wire Line
	2250 4800 2150 4800
Wire Wire Line
	2150 4800 2150 4700
Connection ~ 2250 4800
$Comp
L +3.3V #PWR024
U 1 1 5AF774DE
P 2300 6250
F 0 "#PWR024" H 2300 6210 30  0001 C CNN
F 1 "+3.3V" H 2300 6360 30  0000 C CNN
F 2 "" H 2300 6250 60  0000 C CNN
F 3 "" H 2300 6250 60  0000 C CNN
	1    2300 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6150 2150 6250
Wire Wire Line
	2150 6250 2300 6250
$Comp
L LM324N U2
U 1 1 5AF774DF
P 6100 1250
F 0 "U2" H 6150 1450 60  0000 C CNN
F 1 "LM324N" H 6250 1050 50  0000 C CNN
F 2 "" H 6100 1250 60  0000 C CNN
F 3 "" H 6100 1250 60  0000 C CNN
F 4 "512-LM324N" H 6100 1250 60  0001 C CNN "Mouser part Number"
	1    6100 1250
	1    0    0    -1  
$EndComp
$Comp
L LM324N U2
U 2 1 5AF774E0
P 6100 1950
F 0 "U2" H 6150 2150 60  0000 C CNN
F 1 "LM324N" H 6250 1750 50  0000 C CNN
F 2 "" H 6100 1950 60  0000 C CNN
F 3 "" H 6100 1950 60  0000 C CNN
	2    6100 1950
	1    0    0    -1  
$EndComp
$Comp
L LM324N U2
U 3 1 5AF774E1
P 6100 2700
F 0 "U2" H 6150 2900 60  0000 C CNN
F 1 "LM324N" H 6250 2500 50  0000 C CNN
F 2 "" H 6100 2700 60  0000 C CNN
F 3 "" H 6100 2700 60  0000 C CNN
	3    6100 2700
	1    0    0    -1  
$EndComp
$Comp
L LM324N U2
U 4 1 5AF774E2
P 6100 3450
F 0 "U2" H 6150 3650 60  0000 C CNN
F 1 "LM324N" H 6250 3250 50  0000 C CNN
F 2 "" H 6100 3450 60  0000 C CNN
F 3 "" H 6100 3450 60  0000 C CNN
	4    6100 3450
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR025
U 1 1 5AF774E3
P 6000 600
F 0 "#PWR025" H 6000 550 20  0001 C CNN
F 1 "+12V" H 6000 700 30  0000 C CNN
F 2 "" H 6000 600 60  0000 C CNN
F 3 "" H 6000 600 60  0000 C CNN
	1    6000 600 
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2
U 1 1 5AF774E4
P 6350 850
F 0 "C2" H 6400 950 50  0000 L CNN
F 1 "1uf 35V" H 6400 750 50  0000 L CNN
F 2 "~" H 6350 850 60  0000 C CNN
F 3 "~" H 6350 850 60  0000 C CNN
F 4 "74-199D105X9035A1VE3" H 6350 850 60  0001 C CNN "Mouser Part Number"
	1    6350 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 650  6350 650 
$Comp
L GND #PWR026
U 1 1 5AF774E5
P 6350 1100
F 0 "#PWR026" H 6350 1100 30  0001 C CNN
F 1 "GND" H 6350 1030 30  0001 C CNN
F 2 "" H 6350 1100 60  0000 C CNN
F 3 "" H 6350 1100 60  0000 C CNN
	1    6350 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1050 6350 1100
$Comp
L R R11
U 1 1 5AF774E6
P 5550 900
F 0 "R11" V 5630 900 40  0000 C CNN
F 1 "1K Ohms" V 5557 901 40  0000 C CNN
F 2 "~" V 5480 900 30  0000 C CNN
F 3 "~" H 5550 900 30  0000 C CNN
F 4 "279-2-1623927-3 " V 5550 900 60  0001 C CNN "Mouser Part Number"
	1    5550 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1150 5600 1150
$Comp
L R R9
U 1 1 5AF774E7
P 5300 1100
F 0 "R9" V 5380 1100 40  0000 C CNN
F 1 "1K Ohms" V 5307 1101 40  0000 C CNN
F 2 "~" V 5230 1100 30  0000 C CNN
F 3 "~" H 5300 1100 30  0000 C CNN
F 4 "279-2-1623927-3" V 5300 1100 60  0001 C CNN "Mouser part Number"
	1    5300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1350 5600 1350
Wire Wire Line
	5300 850  5300 650 
Connection ~ 5550 650 
Wire Wire Line
	6000 600  6000 850 
Connection ~ 6000 650 
$Comp
L R R7
U 1 1 5AF774E8
P 5050 1350
F 0 "R7" V 5130 1350 40  0000 C CNN
F 1 "100 Ohms" V 5057 1351 40  0000 C CNN
F 2 "~" V 4980 1350 30  0000 C CNN
F 3 "~" H 5050 1350 30  0000 C CNN
F 4 "603-CFR-25JR-52100R" V 5050 1350 60  0001 C CNN "Mouser Part Number"
	1    5050 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 1350 4800 1350
Wire Wire Line
	5550 1150 5550 3550
Wire Wire Line
	5550 3550 5600 3550
Wire Wire Line
	5600 2600 5550 2600
Connection ~ 5550 2600
Wire Wire Line
	5600 2050 5550 2050
Connection ~ 5550 2050
Wire Wire Line
	5600 1350 5600 1850
$Comp
L GND #PWR027
U 1 1 5AF774E9
P 6000 3900
F 0 "#PWR027" H 6000 3900 30  0001 C CNN
F 1 "GND" H 6000 3830 30  0001 C CNN
F 2 "" H 6000 3900 60  0000 C CNN
F 3 "" H 6000 3900 60  0000 C CNN
	1    6000 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3850 6000 3900
$Comp
L ZENER Z1
U 1 1 5AF774EA
P 5600 3750
F 0 "Z1" H 5600 3850 50  0000 C CNN
F 1 "1N5229B" H 5600 3650 40  0000 C CNN
F 2 "~" H 5600 3750 60  0000 C CNN
F 3 "~" H 5600 3750 60  0000 C CNN
F 4 "512-1N5229BTR" H 5600 3750 60  0001 C CNN "Mouser Part Number"
	1    5600 3750
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR028
U 1 1 5AF774EB
P 5600 4000
F 0 "#PWR028" H 5600 4000 30  0001 C CNN
F 1 "GND" H 5600 3930 30  0001 C CNN
F 2 "" H 5600 4000 60  0000 C CNN
F 3 "" H 5600 4000 60  0000 C CNN
	1    5600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3950 5600 4000
$Comp
L DIODE D1
U 1 1 5AF774EC
P 5350 1600
F 0 "D1" H 5350 1700 40  0000 C CNN
F 1 "1N4002" H 5350 1500 40  0000 C CNN
F 2 "~" H 5350 1600 60  0000 C CNN
F 3 "~" H 5350 1600 60  0000 C CNN
F 4 "833-1N4002-TP" H 5350 1600 60  0001 C CNN "Mouser Part Number"
	1    5350 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1600 5150 1450
Wire Wire Line
	5150 1450 5350 1450
Wire Wire Line
	5350 1450 5350 1350
Connection ~ 5350 1350
$Comp
L R R8
U 1 1 5AF774ED
P 5050 2800
F 0 "R8" V 5130 2800 40  0000 C CNN
F 1 "100 Ohms" V 5057 2801 40  0000 C CNN
F 2 "~" V 4980 2800 30  0000 C CNN
F 3 "~" H 5050 2800 30  0000 C CNN
F 4 "603-CFR-25JR-52100R" V 5050 2800 60  0001 C CNN "Mouser Part Number"
	1    5050 2800
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 5AF774EE
P 5300 2550
F 0 "R10" V 5380 2550 40  0000 C CNN
F 1 "1K Ohms" V 5307 2551 40  0000 C CNN
F 2 "~" V 5230 2550 30  0000 C CNN
F 3 "~" H 5300 2550 30  0000 C CNN
F 4 "279-2-1623927-3" V 5300 2550 60  0001 C CNN "Mouser Part Number"
	1    5300 2550
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR029
U 1 1 5AF774EF
P 5300 2200
F 0 "#PWR029" H 5300 2150 20  0001 C CNN
F 1 "+12V" H 5300 2300 30  0000 C CNN
F 2 "" H 5300 2200 60  0000 C CNN
F 3 "" H 5300 2200 60  0000 C CNN
	1    5300 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2200 5300 2300
Wire Wire Line
	5300 2800 5600 2800
Wire Wire Line
	5600 2800 5600 3350
$Comp
L DIODE D2
U 1 1 5AF774F0
P 5350 3100
F 0 "D2" H 5350 3200 40  0000 C CNN
F 1 "1N4002" H 5350 3000 40  0000 C CNN
F 2 "~" H 5350 3100 60  0000 C CNN
F 3 "~" H 5350 3100 60  0000 C CNN
F 4 "833-1N4002-TP" H 5350 3100 60  0001 C CNN "Mouser Part Number"
	1    5350 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2800 5350 2900
Wire Wire Line
	5350 2900 5150 2900
Wire Wire Line
	5150 2900 5150 3100
Connection ~ 5350 2800
Wire Wire Line
	4700 2800 4800 2800
$Comp
L CONN_5 T1
U 1 1 5AF774F1
P 650 3650
F 0 "T1" V 600 3650 50  0000 C CNN
F 1 "Motor 1" V 700 3650 50  0000 C CNN
F 2 "~" H 650 3650 60  0000 C CNN
F 3 "~" H 650 3650 60  0000 C CNN
F 4 "571-282834-5" V 650 3650 60  0001 C CNN "Mouser Part Number"
	1    650  3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 3650 1450 3650
Wire Wire Line
	1450 3650 1450 3450
Wire Wire Line
	1450 3450 1050 3450
Wire Wire Line
	1600 4550 1350 4550
Wire Wire Line
	1350 4550 1350 3650
Wire Wire Line
	1350 3650 1050 3650
$Comp
L GND #PWR030
U 1 1 5AF774F2
P 1250 3550
F 0 "#PWR030" H 1250 3550 30  0001 C CNN
F 1 "GND" H 1250 3480 30  0001 C CNN
F 2 "" H 1250 3550 60  0000 C CNN
F 3 "" H 1250 3550 60  0000 C CNN
	1    1250 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3550 1050 3550
$Comp
L CONN_5 T2
U 1 1 5AF774F3
P 650 5400
F 0 "T2" V 600 5400 50  0000 C CNN
F 1 "Motor 2" V 700 5400 50  0000 C CNN
F 2 "~" H 650 5400 60  0000 C CNN
F 3 "~" H 650 5400 60  0000 C CNN
F 4 "571-282834-5" V 650 5400 60  0001 C CNN "Mouser Part Number"
	1    650  5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 5050 1050 5050
Wire Wire Line
	1050 5050 1050 5200
Wire Wire Line
	1650 5950 1500 5950
Wire Wire Line
	1500 5950 1500 5400
Wire Wire Line
	1500 5400 1050 5400
$Comp
L GND #PWR031
U 1 1 5AF774F4
P 1150 5300
F 0 "#PWR031" H 1150 5300 30  0001 C CNN
F 1 "GND" H 1150 5230 30  0001 C CNN
F 2 "" H 1150 5300 60  0000 C CNN
F 3 "" H 1150 5300 60  0000 C CNN
	1    1150 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 5300 1050 5300
$Comp
L MPQ3725A Q1
U 1 1 5AF774F5
P 7300 1250
F 0 "Q1" H 7300 1102 40  0000 R CNN
F 1 "MPQ3725A" H 7300 1400 40  0000 R CNN
F 2 "DIP-14__300" H 7200 1352 29  0000 C CNN
F 3 "~" H 7300 1250 60  0000 C CNN
F 4 "610-MPQ3725A " H 7300 1250 60  0001 C CNN "Mouser part Number"
	1    7300 1250
	1    0    0    -1  
$EndComp
$Comp
L MPQ3725A Q1
U 2 1 5AF774F6
P 7300 1950
F 0 "Q1" H 7300 1802 40  0000 R CNN
F 1 "MPQ3725A" H 7300 2100 40  0000 R CNN
F 2 "DIP-14__300" H 7200 2052 29  0000 C CNN
F 3 "~" H 7300 1950 60  0000 C CNN
	2    7300 1950
	1    0    0    -1  
$EndComp
$Comp
L MPQ3725A Q1
U 3 1 5AF774F7
P 7300 2700
F 0 "Q1" H 7300 2552 40  0000 R CNN
F 1 "MPQ3725A" H 7300 2850 40  0000 R CNN
F 2 "DIP-14__300" H 7200 2802 29  0000 C CNN
F 3 "~" H 7300 2700 60  0000 C CNN
	3    7300 2700
	1    0    0    -1  
$EndComp
$Comp
L MPQ3725A Q1
U 4 1 5AF774F8
P 7300 3450
F 0 "Q1" H 7300 3302 40  0000 R CNN
F 1 "MPQ3725A" H 7300 3600 40  0000 R CNN
F 2 "DIP-14__300" H 7200 3552 29  0000 C CNN
F 3 "~" H 7300 3450 60  0000 C CNN
	4    7300 3450
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 5AF774F9
P 6850 3450
F 0 "R15" V 6930 3450 40  0000 C CNN
F 1 "1K Ohms" V 6857 3451 40  0000 C CNN
F 2 "~" V 6780 3450 30  0000 C CNN
F 3 "~" H 6850 3450 30  0000 C CNN
F 4 "279-2-1623927-3" V 6850 3450 60  0001 C CNN "Mouser Part Number"
	1    6850 3450
	0    1    1    0   
$EndComp
$Comp
L R R14
U 1 1 5AF774FA
P 6850 2700
F 0 "R14" V 6930 2700 40  0000 C CNN
F 1 "1K Ohms" V 6857 2701 40  0000 C CNN
F 2 "~" V 6780 2700 30  0000 C CNN
F 3 "~" H 6850 2700 30  0000 C CNN
F 4 "279-2-1623927-3" V 6850 2700 60  0001 C CNN "Mouser Part Number"
	1    6850 2700
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 5AF774FB
P 6850 1950
F 0 "R13" V 6930 1950 40  0000 C CNN
F 1 "1K Ohms" V 6857 1951 40  0000 C CNN
F 2 "~" V 6780 1950 30  0000 C CNN
F 3 "~" H 6850 1950 30  0000 C CNN
F 4 "279-2-1623927-3" V 6850 1950 60  0001 C CNN "Mouser Part Number"
	1    6850 1950
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 5AF774FC
P 6850 1250
F 0 "R12" V 6930 1250 40  0000 C CNN
F 1 "1K Ohms" V 6857 1251 40  0000 C CNN
F 2 "~" V 6780 1250 30  0000 C CNN
F 3 "~" H 6850 1250 30  0000 C CNN
F 4 "279-2-1623927-3" V 6850 1250 60  0001 C CNN "Mouser Part Number"
	1    6850 1250
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 5AF774FD
P 7400 800
F 0 "R16" V 7480 800 40  0000 C CNN
F 1 "470 Ohms" V 7407 801 40  0000 C CNN
F 2 "~" V 7330 800 30  0000 C CNN
F 3 "~" H 7400 800 30  0000 C CNN
F 4 "279-CFR50J470R" V 7400 800 60  0001 C CNN "Mouser part Number"
	1    7400 800 
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 5AF774FE
P 7550 1500
F 0 "R17" V 7630 1500 40  0000 C CNN
F 1 "470 Ohms" V 7557 1501 40  0000 C CNN
F 2 "~" V 7480 1500 30  0000 C CNN
F 3 "~" H 7550 1500 30  0000 C CNN
F 4 "279-CFR50J470R " V 7550 1500 60  0001 C CNN "Mouser Part Number"
	1    7550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1750 8500 1750
$Comp
L R R18
U 1 1 5AF774FF
P 7550 2250
F 0 "R18" V 7630 2250 40  0000 C CNN
F 1 "470 Ohms" V 7557 2251 40  0000 C CNN
F 2 "~" V 7480 2250 30  0000 C CNN
F 3 "~" H 7550 2250 30  0000 C CNN
F 4 "279-CFR50J470R " V 7550 2250 60  0001 C CNN "Mouser Part Number"
	1    7550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2500 8400 2500
$Comp
L R R19
U 1 1 5AF77500
P 7550 3000
F 0 "R19" V 7630 3000 40  0000 C CNN
F 1 "470 Ohms" V 7557 3001 40  0000 C CNN
F 2 "~" V 7480 3000 30  0000 C CNN
F 3 "~" H 7550 3000 30  0000 C CNN
F 4 "279-CFR50J470R" V 7550 3000 60  0001 C CNN "Mousere Part Number"
	1    7550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3250 8250 3250
$Comp
L +12V #PWR032
U 1 1 5AF77501
P 7550 600
F 0 "#PWR032" H 7550 550 20  0001 C CNN
F 1 "+12V" H 7550 700 30  0000 C CNN
F 2 "" H 7550 600 60  0000 C CNN
F 3 "" H 7550 600 60  0000 C CNN
	1    7550 600 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 550  7500 550 
Wire Wire Line
	7500 550  7500 600 
Wire Wire Line
	7500 600  7550 600 
$Comp
L +12V #PWR033
U 1 1 5AF77502
P 7550 1250
F 0 "#PWR033" H 7550 1200 20  0001 C CNN
F 1 "+12V" H 7550 1350 30  0000 C CNN
F 2 "" H 7550 1250 60  0000 C CNN
F 3 "" H 7550 1250 60  0000 C CNN
	1    7550 1250
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR034
U 1 1 5AF77503
P 7550 2000
F 0 "#PWR034" H 7550 1950 20  0001 C CNN
F 1 "+12V" H 7550 2100 30  0000 C CNN
F 2 "" H 7550 2000 60  0000 C CNN
F 3 "" H 7550 2000 60  0000 C CNN
	1    7550 2000
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR035
U 1 1 5AF77504
P 7550 2750
F 0 "#PWR035" H 7550 2700 20  0001 C CNN
F 1 "+12V" H 7550 2850 30  0000 C CNN
F 2 "" H 7550 2750 60  0000 C CNN
F 3 "" H 7550 2750 60  0000 C CNN
	1    7550 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 5AF77505
P 7400 1500
F 0 "#PWR036" H 7400 1500 30  0001 C CNN
F 1 "GND" H 7400 1430 30  0001 C CNN
F 2 "" H 7400 1500 60  0000 C CNN
F 3 "" H 7400 1500 60  0000 C CNN
	1    7400 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 5AF77506
P 7400 2200
F 0 "#PWR037" H 7400 2200 30  0001 C CNN
F 1 "GND" H 7400 2130 30  0001 C CNN
F 2 "" H 7400 2200 60  0000 C CNN
F 3 "" H 7400 2200 60  0000 C CNN
	1    7400 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 5AF77507
P 7400 2950
F 0 "#PWR038" H 7400 2950 30  0001 C CNN
F 1 "GND" H 7400 2880 30  0001 C CNN
F 2 "" H 7400 2950 60  0000 C CNN
F 3 "" H 7400 2950 60  0000 C CNN
	1    7400 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 5AF77508
P 7400 3700
F 0 "#PWR039" H 7400 3700 30  0001 C CNN
F 1 "GND" H 7400 3630 30  0001 C CNN
F 2 "" H 7400 3700 60  0000 C CNN
F 3 "" H 7400 3700 60  0000 C CNN
	1    7400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3650 7400 3700
Wire Wire Line
	7400 2900 7400 2950
Wire Wire Line
	7400 2150 7400 2200
Wire Wire Line
	7400 1450 7400 1500
Wire Wire Line
	7400 1050 8700 1050
Wire Wire Line
	8700 1050 8700 4250
Wire Wire Line
	8700 4250 3100 4250
Wire Wire Line
	3100 4250 3100 4050
Wire Wire Line
	3100 4050 1200 4050
Wire Wire Line
	1200 4050 1200 3750
Wire Wire Line
	1200 3750 1050 3750
Wire Wire Line
	8500 1750 8500 4350
Wire Wire Line
	8500 4350 2950 4350
Wire Wire Line
	2950 4350 2950 4100
Wire Wire Line
	2950 4100 1050 4100
Wire Wire Line
	1050 4100 1050 3850
Connection ~ 7550 1750
Wire Wire Line
	8400 2500 8400 5450
Wire Wire Line
	8400 5450 1250 5450
Wire Wire Line
	1250 5450 1250 5500
Wire Wire Line
	1250 5500 1050 5500
Connection ~ 7550 2500
Wire Wire Line
	8250 3250 8250 5500
Wire Wire Line
	8250 5500 1350 5500
Wire Wire Line
	1350 5500 1350 5600
Wire Wire Line
	1350 5600 1050 5600
Connection ~ 7550 3250
Text Label 8000 1050 0    60   ~ 0
Motor 1 A
Text Label 8000 1750 0    60   ~ 0
Motor 1 B
Text Label 7900 2500 0    60   ~ 0
Motor 2 A
Text Label 7800 3250 0    60   ~ 0
Motor 2 B
Text Label 1200 3450 0    60   ~ 0
Point 1 A
Text Label 1100 3650 0    60   ~ 0
Point 1 B
Text Label 1150 5050 0    60   ~ 0
Point 2 A
Text Label 1200 5400 0    60   ~ 0
Point 2 B
$Comp
L CONN_2 T3
U 1 1 5AF77509
P 9850 1350
F 0 "T3" V 9800 1350 40  0000 C CNN
F 1 "12 to 16 Volts" V 9900 1350 40  0000 C CNN
F 2 "~" H 9850 1350 60  0000 C CNN
F 3 "~" H 9850 1350 60  0000 C CNN
F 4 "571-282834-2" V 9850 1350 60  0001 C CNN "Mouser Partnumber"
	1    9850 1350
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR040
U 1 1 5AF7750A
P 9500 1250
F 0 "#PWR040" H 9500 1200 20  0001 C CNN
F 1 "+12V" H 9500 1350 30  0000 C CNN
F 2 "" H 9500 1250 60  0000 C CNN
F 3 "" H 9500 1250 60  0000 C CNN
	1    9500 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 5AF7750B
P 9500 1500
F 0 "#PWR041" H 9500 1500 30  0001 C CNN
F 1 "GND" H 9500 1430 30  0001 C CNN
F 2 "" H 9500 1500 60  0000 C CNN
F 3 "" H 9500 1500 60  0000 C CNN
	1    9500 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1450 9500 1500
$Comp
L C C1
U 1 1 5AF7750C
P 3600 4800
F 0 "C1" H 3600 4900 40  0000 L CNN
F 1 ".1 uf" H 3606 4715 40  0000 L CNN
F 2 "~" H 3638 4650 30  0000 C CNN
F 3 "~" H 3600 4800 60  0000 C CNN
F 4 "21RZ310-RC" H 3600 4800 60  0001 C CNN "Mouser part Number"
	1    3600 4800
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR042
U 1 1 5AF7750D
P 3600 4600
F 0 "#PWR042" H 3600 4560 30  0001 C CNN
F 1 "+3.3V" H 3600 4710 30  0000 C CNN
F 2 "" H 3600 4600 60  0000 C CNN
F 3 "" H 3600 4600 60  0000 C CNN
	1    3600 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 5AF7750E
P 3600 5000
F 0 "#PWR043" H 3600 5000 30  0001 C CNN
F 1 "GND" H 3600 4930 30  0001 C CNN
F 2 "" H 3600 5000 60  0000 C CNN
F 3 "" H 3600 5000 60  0000 C CNN
	1    3600 5000
	1    0    0    -1  
$EndComp
Connection ~ 5550 1600
Connection ~ 5550 3100
Text HLabel 3500 2800 0    60   Input ~ 0
M Select 2
Text HLabel 3500 1350 0    60   Input ~ 0
MSelect 1
Text HLabel 2800 3750 2    60   Input ~ 0
Point Sense 1
Text HLabel 2850 5150 2    60   Input ~ 0
Point Sense 2
$EndSCHEMATC
