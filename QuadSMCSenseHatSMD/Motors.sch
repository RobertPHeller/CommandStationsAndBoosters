EESchema Schematic File Version 2
LIBS:SMCSenseHAT-cache
LIBS:lm324n-X
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
LIBS:acpl-247
LIBS:mmpq2222a
LIBS:QuadSMCSenseHatSMD-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title ""
Date "26 jun 2017"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ACPL-247 IC1
U 1 1 59501DB6
P 3200 2300
F 0 "IC1" H 3010 2490 40  0000 C CNN
F 1 "ACPL-247" H 3300 2110 40  0000 C CNN
F 2 "SOP16" H 3020 2120 30  0000 C CIN
F 3 "~" H 3200 2300 60  0000 C CNN
	1    3200 2300
	1    0    0    -1  
$EndComp
$Comp
L ACPL-247 IC1
U 2 1 59501DC5
P 3200 3500
F 0 "IC1" H 3010 3690 40  0000 C CNN
F 1 "ACPL-247" H 3300 3310 40  0000 C CNN
F 2 "SOP16" H 3020 3320 30  0000 C CIN
F 3 "~" H 3200 3500 60  0000 C CNN
	2    3200 3500
	1    0    0    -1  
$EndComp
$Comp
L ACPL-247 IC1
U 3 1 59501DD4
P 3200 5350
F 0 "IC1" H 3010 5540 40  0000 C CNN
F 1 "ACPL-247" H 3300 5160 40  0000 C CNN
F 2 "SOP16" H 3020 5170 30  0000 C CIN
F 3 "~" H 3200 5350 60  0000 C CNN
	3    3200 5350
	1    0    0    -1  
$EndComp
$Comp
L ACPL-247 IC1
U 4 1 59501DE3
P 3250 6650
F 0 "IC1" H 3060 6840 40  0000 C CNN
F 1 "ACPL-247" H 3350 6460 40  0000 C CNN
F 2 "SOP16" H 3070 6470 30  0000 C CIN
F 3 "~" H 3250 6650 60  0000 C CNN
	4    3250 6650
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 59501E1A
P 2600 2200
F 0 "R1" V 2680 2200 40  0000 C CNN
F 1 "330" V 2607 2201 40  0000 C CNN
F 2 "SM0805" V 2530 2200 30  0001 C CNN
F 3 "~" H 2600 2200 30  0000 C CNN
	1    2600 2200
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 59501E29
P 2600 3400
F 0 "R2" V 2680 3400 40  0000 C CNN
F 1 "330" V 2607 3401 40  0000 C CNN
F 2 "~" V 2530 3400 30  0000 C CNN
F 3 "~" H 2600 3400 30  0000 C CNN
	1    2600 3400
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 59501E38
P 2600 5250
F 0 "R3" V 2680 5250 40  0000 C CNN
F 1 "330" V 2607 5251 40  0000 C CNN
F 2 "~" V 2530 5250 30  0000 C CNN
F 3 "~" H 2600 5250 30  0000 C CNN
	1    2600 5250
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 59501E47
P 2650 6550
F 0 "R4" V 2730 6550 40  0000 C CNN
F 1 "330" V 2657 6551 40  0000 C CNN
F 2 "~" V 2580 6550 30  0000 C CNN
F 3 "~" H 2650 6550 30  0000 C CNN
	1    2650 6550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR015
U 1 1 59501E56
P 2850 2400
F 0 "#PWR015" H 2850 2400 30  0001 C CNN
F 1 "GND" H 2850 2330 30  0001 C CNN
F 2 "" H 2850 2400 60  0000 C CNN
F 3 "" H 2850 2400 60  0000 C CNN
	1    2850 2400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR016
U 1 1 59501E65
P 2850 3600
F 0 "#PWR016" H 2850 3600 30  0001 C CNN
F 1 "GND" H 2850 3530 30  0001 C CNN
F 2 "" H 2850 3600 60  0000 C CNN
F 3 "" H 2850 3600 60  0000 C CNN
	1    2850 3600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR017
U 1 1 59501E74
P 2850 5450
F 0 "#PWR017" H 2850 5450 30  0001 C CNN
F 1 "GND" H 2850 5380 30  0001 C CNN
F 2 "" H 2850 5450 60  0000 C CNN
F 3 "" H 2850 5450 60  0000 C CNN
	1    2850 5450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR018
U 1 1 59501E83
P 2900 6750
F 0 "#PWR018" H 2900 6750 30  0001 C CNN
F 1 "GND" H 2900 6680 30  0001 C CNN
F 2 "" H 2900 6750 60  0000 C CNN
F 3 "" H 2900 6750 60  0000 C CNN
	1    2900 6750
	0    1    1    0   
$EndComp
Text GLabel 2350 2200 0    49   Input ~ 0
M Select 1
Text GLabel 2350 3400 0    49   Input ~ 0
M Select 2
Text GLabel 2350 5250 0    49   Input ~ 0
M Select 3
Text GLabel 2400 6550 0    49   Input ~ 0
M Select 4
$Comp
L LM324N U1
U 1 1 59502680
P 5550 2100
F 0 "U1" H 5600 2300 60  0000 C CNN
F 1 "LM324N" H 5700 1900 50  0000 C CNN
F 2 "~" H 5550 2100 60  0000 C CNN
F 3 "~" H 5550 2100 60  0000 C CNN
	1    5550 2100
	1    0    0    -1  
$EndComp
$Comp
L LM324N U1
U 4 1 5950268F
P 5550 2650
F 0 "U1" H 5600 2850 60  0000 C CNN
F 1 "LM324N" H 5700 2450 50  0000 C CNN
F 2 "~" H 5550 2650 60  0000 C CNN
F 3 "~" H 5550 2650 60  0000 C CNN
	4    5550 2650
	1    0    0    -1  
$EndComp
$Comp
L LM324N U1
U 3 1 595026A3
P 5550 3300
F 0 "U1" H 5600 3500 60  0000 C CNN
F 1 "LM324N" H 5700 3100 50  0000 C CNN
F 2 "~" H 5550 3300 60  0000 C CNN
F 3 "~" H 5550 3300 60  0000 C CNN
	3    5550 3300
	1    0    0    -1  
$EndComp
$Comp
L LM324N U1
U 2 1 595026B2
P 5550 3900
F 0 "U1" H 5600 4100 60  0000 C CNN
F 1 "LM324N" H 5700 3700 50  0000 C CNN
F 2 "~" H 5550 3900 60  0000 C CNN
F 3 "~" H 5550 3900 60  0000 C CNN
	2    5550 3900
	1    0    0    -1  
$EndComp
$Comp
L LM324N U2
U 1 1 595026BF
P 5550 5150
F 0 "U2" H 5600 5350 60  0000 C CNN
F 1 "LM324N" H 5700 4950 50  0000 C CNN
F 2 "~" H 5550 5150 60  0000 C CNN
F 3 "~" H 5550 5150 60  0000 C CNN
	1    5550 5150
	1    0    0    -1  
$EndComp
$Comp
L LM324N U2
U 4 1 595026C5
P 5550 5800
F 0 "U2" H 5600 6000 60  0000 C CNN
F 1 "LM324N" H 5700 5600 50  0000 C CNN
F 2 "~" H 5550 5800 60  0000 C CNN
F 3 "~" H 5550 5800 60  0000 C CNN
	4    5550 5800
	1    0    0    -1  
$EndComp
$Comp
L LM324N U2
U 3 1 595026CB
P 5550 6450
F 0 "U2" H 5600 6650 60  0000 C CNN
F 1 "LM324N" H 5700 6250 50  0000 C CNN
F 2 "~" H 5550 6450 60  0000 C CNN
F 3 "~" H 5550 6450 60  0000 C CNN
	3    5550 6450
	1    0    0    -1  
$EndComp
$Comp
L LM324N U2
U 2 1 595026D1
P 5550 7050
F 0 "U2" H 5600 7250 60  0000 C CNN
F 1 "LM324N" H 5700 6850 50  0000 C CNN
F 2 "~" H 5550 7050 60  0000 C CNN
F 3 "~" H 5550 7050 60  0000 C CNN
	2    5550 7050
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 59502745
P 3800 2200
F 0 "R5" V 3880 2200 40  0000 C CNN
F 1 "100" V 3807 2201 40  0000 C CNN
F 2 "~" V 3730 2200 30  0000 C CNN
F 3 "~" H 3800 2200 30  0000 C CNN
	1    3800 2200
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 59502754
P 3800 3400
F 0 "R6" V 3880 3400 40  0000 C CNN
F 1 "100" V 3807 3401 40  0000 C CNN
F 2 "~" V 3730 3400 30  0000 C CNN
F 3 "~" H 3800 3400 30  0000 C CNN
	1    3800 3400
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 59502763
P 3800 5250
F 0 "R7" V 3880 5250 40  0000 C CNN
F 1 "100" V 3807 5251 40  0000 C CNN
F 2 "~" V 3730 5250 30  0000 C CNN
F 3 "~" H 3800 5250 30  0000 C CNN
	1    3800 5250
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 59502772
P 3850 6550
F 0 "R8" V 3930 6550 40  0000 C CNN
F 1 "100" V 3857 6551 40  0000 C CNN
F 2 "~" V 3780 6550 30  0000 C CNN
F 3 "~" H 3850 6550 30  0000 C CNN
	1    3850 6550
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 T5
U 1 1 5950280D
P 1100 7100
F 0 "T5" V 1050 7100 40  0000 C CNN
F 1 "12 to 15 Volts" V 1150 7100 40  0000 C CNN
F 2 "~" H 1100 7100 60  0000 C CNN
F 3 "~" H 1100 7100 60  0000 C CNN
	1    1100 7100
	-1   0    0    1   
$EndComp
$Comp
L +12V #PWR019
U 1 1 59502832
P 1450 7200
F 0 "#PWR019" H 1450 7150 20  0001 C CNN
F 1 "+12V" H 1450 7300 30  0000 C CNN
F 2 "" H 1450 7200 60  0000 C CNN
F 3 "" H 1450 7200 60  0000 C CNN
	1    1450 7200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR020
U 1 1 59502841
P 1450 7000
F 0 "#PWR020" H 1450 7000 30  0001 C CNN
F 1 "GND" H 1450 6930 30  0001 C CNN
F 2 "" H 1450 7000 60  0000 C CNN
F 3 "" H 1450 7000 60  0000 C CNN
	1    1450 7000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 2000 4900 2000
Wire Wire Line
	4900 2000 4900 4000
Wire Wire Line
	4900 2750 5050 2750
Wire Wire Line
	4900 3200 5050 3200
Connection ~ 4900 2750
Wire Wire Line
	4900 4000 5050 4000
Connection ~ 4900 3200
Wire Wire Line
	4900 7150 5050 7150
Wire Wire Line
	4900 5050 4900 7150
Wire Wire Line
	4900 6350 5050 6350
Wire Wire Line
	4900 5900 5050 5900
Connection ~ 4900 6350
Wire Wire Line
	4900 5050 5050 5050
Connection ~ 4900 5900
Wire Wire Line
	5050 5250 5050 5700
Wire Wire Line
	5050 6550 5050 6950
Wire Wire Line
	5050 2200 5050 2550
Wire Wire Line
	5050 3400 5050 3800
$Comp
L R R9
U 1 1 595029D0
P 4400 1950
F 0 "R9" V 4480 1950 40  0000 C CNN
F 1 "1K" V 4407 1951 40  0000 C CNN
F 2 "~" V 4330 1950 30  0000 C CNN
F 3 "~" H 4400 1950 30  0000 C CNN
	1    4400 1950
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 595029DF
P 4400 3150
F 0 "R10" V 4480 3150 40  0000 C CNN
F 1 "1K" V 4407 3151 40  0000 C CNN
F 2 "~" V 4330 3150 30  0000 C CNN
F 3 "~" H 4400 3150 30  0000 C CNN
	1    4400 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2200 5050 2200
Wire Wire Line
	4050 3400 5050 3400
Connection ~ 4400 2200
Connection ~ 4400 3400
$Comp
L GND #PWR021
U 1 1 59502A40
P 3550 2400
F 0 "#PWR021" H 3550 2400 30  0001 C CNN
F 1 "GND" H 3550 2330 30  0001 C CNN
F 2 "" H 3550 2400 60  0000 C CNN
F 3 "" H 3550 2400 60  0000 C CNN
	1    3550 2400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR022
U 1 1 59502A4F
P 3550 3600
F 0 "#PWR022" H 3550 3600 30  0001 C CNN
F 1 "GND" H 3550 3530 30  0001 C CNN
F 2 "" H 3550 3600 60  0000 C CNN
F 3 "" H 3550 3600 60  0000 C CNN
	1    3550 3600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR023
U 1 1 59502A5E
P 3550 5450
F 0 "#PWR023" H 3550 5450 30  0001 C CNN
F 1 "GND" H 3550 5380 30  0001 C CNN
F 2 "" H 3550 5450 60  0000 C CNN
F 3 "" H 3550 5450 60  0000 C CNN
	1    3550 5450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR024
U 1 1 59502A6D
P 3600 6750
F 0 "#PWR024" H 3600 6750 30  0001 C CNN
F 1 "GND" H 3600 6680 30  0001 C CNN
F 2 "" H 3600 6750 60  0000 C CNN
F 3 "" H 3600 6750 60  0000 C CNN
	1    3600 6750
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR025
U 1 1 59502A7C
P 4400 1700
F 0 "#PWR025" H 4400 1650 20  0001 C CNN
F 1 "+12V" H 4400 1800 30  0000 C CNN
F 2 "" H 4400 1700 60  0000 C CNN
F 3 "" H 4400 1700 60  0000 C CNN
	1    4400 1700
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR026
U 1 1 59502A95
P 4400 2900
F 0 "#PWR026" H 4400 2850 20  0001 C CNN
F 1 "+12V" H 4400 3000 30  0000 C CNN
F 2 "" H 4400 2900 60  0000 C CNN
F 3 "" H 4400 2900 60  0000 C CNN
	1    4400 2900
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 59502AA4
P 4450 5000
F 0 "R11" V 4530 5000 40  0000 C CNN
F 1 "1K" V 4457 5001 40  0000 C CNN
F 2 "~" V 4380 5000 30  0000 C CNN
F 3 "~" H 4450 5000 30  0000 C CNN
	1    4450 5000
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 59502AB3
P 4500 6300
F 0 "R12" V 4580 6300 40  0000 C CNN
F 1 "1K" V 4507 6301 40  0000 C CNN
F 2 "~" V 4430 6300 30  0000 C CNN
F 3 "~" H 4500 6300 30  0000 C CNN
	1    4500 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5250 5050 5250
Wire Wire Line
	4100 6550 5050 6550
Connection ~ 4450 5250
Connection ~ 4500 6550
$Comp
L +12V #PWR027
U 1 1 59502B3E
P 4450 4750
F 0 "#PWR027" H 4450 4700 20  0001 C CNN
F 1 "+12V" H 4450 4850 30  0000 C CNN
F 2 "" H 4450 4750 60  0000 C CNN
F 3 "" H 4450 4750 60  0000 C CNN
	1    4450 4750
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR028
U 1 1 59502B4D
P 4500 6050
F 0 "#PWR028" H 4500 6000 20  0001 C CNN
F 1 "+12V" H 4500 6150 30  0000 C CNN
F 2 "" H 4500 6050 60  0000 C CNN
F 3 "" H 4500 6050 60  0000 C CNN
	1    4500 6050
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 59502C3D
P 4900 1750
F 0 "R13" V 4980 1750 40  0000 C CNN
F 1 "1K" V 4907 1751 40  0000 C CNN
F 2 "~" V 4830 1750 30  0000 C CNN
F 3 "~" H 4900 1750 30  0000 C CNN
	1    4900 1750
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 59502C4C
P 4900 4800
F 0 "R14" V 4980 4800 40  0000 C CNN
F 1 "1K" V 4907 4801 40  0000 C CNN
F 2 "~" V 4830 4800 30  0000 C CNN
F 3 "~" H 4900 4800 30  0000 C CNN
	1    4900 4800
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR029
U 1 1 59502C5B
P 4900 1500
F 0 "#PWR029" H 4900 1450 20  0001 C CNN
F 1 "+12V" H 4900 1600 30  0000 C CNN
F 2 "" H 4900 1500 60  0000 C CNN
F 3 "" H 4900 1500 60  0000 C CNN
	1    4900 1500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR030
U 1 1 59502C6A
P 4900 4550
F 0 "#PWR030" H 4900 4500 20  0001 C CNN
F 1 "+12V" H 4900 4650 30  0000 C CNN
F 2 "" H 4900 4550 60  0000 C CNN
F 3 "" H 4900 4550 60  0000 C CNN
	1    4900 4550
	1    0    0    -1  
$EndComp
$Comp
L ZENER D5
U 1 1 59502C79
P 5050 4200
F 0 "D5" H 5050 4300 50  0000 C CNN
F 1 "1N5229B" H 5050 4100 40  0000 C CNN
F 2 "DO-214AC(SMA)" H 5050 4200 60  0001 C CNN
F 3 "~" H 5050 4200 60  0000 C CNN
	1    5050 4200
	0    -1   -1   0   
$EndComp
$Comp
L ZENER D6
U 1 1 59502C88
P 5050 7350
F 0 "D6" H 5050 7450 50  0000 C CNN
F 1 "1N5229B" H 5050 7250 40  0000 C CNN
F 2 "DO214AC(SMA)" H 5050 7350 60  0001 C CNN
F 3 "~" H 5050 7350 60  0000 C CNN
	1    5050 7350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR031
U 1 1 59502C97
P 5050 7550
F 0 "#PWR031" H 5050 7550 30  0001 C CNN
F 1 "GND" H 5050 7480 30  0001 C CNN
F 2 "" H 5050 7550 60  0000 C CNN
F 3 "" H 5050 7550 60  0000 C CNN
	1    5050 7550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 59502CB0
P 5050 4400
F 0 "#PWR032" H 5050 4400 30  0001 C CNN
F 1 "GND" H 5050 4330 30  0001 C CNN
F 2 "" H 5050 4400 60  0000 C CNN
F 3 "" H 5050 4400 60  0000 C CNN
	1    5050 4400
	1    0    0    -1  
$EndComp
$Comp
L DIODE D1
U 1 1 59502CBF
P 4700 2350
F 0 "D1" H 4700 2450 40  0000 C CNN
F 1 "1N4002" H 4700 2250 40  0000 C CNN
F 2 "DO-214AA(SMB)" H 4700 2350 60  0001 C CNN
F 3 "~" H 4700 2350 60  0000 C CNN
	1    4700 2350
	1    0    0    -1  
$EndComp
$Comp
L DIODE D2
U 1 1 59502CCE
P 4700 3550
F 0 "D2" H 4700 3650 40  0000 C CNN
F 1 "1N4002" H 4700 3450 40  0000 C CNN
F 2 "DO-214AA(SMB)" H 4700 3550 60  0001 C CNN
F 3 "~" H 4700 3550 60  0000 C CNN
	1    4700 3550
	1    0    0    -1  
$EndComp
$Comp
L DIODE D3
U 1 1 59502CDD
P 4700 5450
F 0 "D3" H 4700 5550 40  0000 C CNN
F 1 "1N4002" H 4700 5350 40  0000 C CNN
F 2 "DO-214AA(SMB)" H 4700 5450 60  0001 C CNN
F 3 "~" H 4700 5450 60  0000 C CNN
	1    4700 5450
	1    0    0    -1  
$EndComp
$Comp
L DIODE D4
U 1 1 59502CEC
P 4700 6800
F 0 "D4" H 4700 6900 40  0000 C CNN
F 1 "1N4002" H 4700 6700 40  0000 C CNN
F 2 "DO-214AA(SMB)" H 4700 6800 60  0001 C CNN
F 3 "~" H 4700 6800 60  0000 C CNN
	1    4700 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2350 4500 2200
Connection ~ 4500 2200
Wire Wire Line
	4500 3550 4500 3400
Connection ~ 4500 3400
Wire Wire Line
	4500 5450 4500 5250
Connection ~ 4500 5250
Wire Wire Line
	4500 6800 4500 6550
$Comp
L GND #PWR033
U 1 1 59502DA9
P 5450 7450
F 0 "#PWR033" H 5450 7450 30  0001 C CNN
F 1 "GND" H 5450 7380 30  0001 C CNN
F 2 "" H 5450 7450 60  0000 C CNN
F 3 "" H 5450 7450 60  0000 C CNN
	1    5450 7450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 59502DB8
P 5450 4300
F 0 "#PWR034" H 5450 4300 30  0001 C CNN
F 1 "GND" H 5450 4230 30  0001 C CNN
F 2 "" H 5450 4300 60  0000 C CNN
F 3 "" H 5450 4300 60  0000 C CNN
	1    5450 4300
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR035
U 1 1 59502DC7
P 5450 4750
F 0 "#PWR035" H 5450 4700 20  0001 C CNN
F 1 "+12V" H 5450 4850 30  0000 C CNN
F 2 "" H 5450 4750 60  0000 C CNN
F 3 "" H 5450 4750 60  0000 C CNN
	1    5450 4750
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR036
U 1 1 59502DE0
P 5450 1700
F 0 "#PWR036" H 5450 1650 20  0001 C CNN
F 1 "+12V" H 5450 1800 30  0000 C CNN
F 2 "" H 5450 1700 60  0000 C CNN
F 3 "" H 5450 1700 60  0000 C CNN
	1    5450 1700
	1    0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 59502DEF
P 5850 1750
F 0 "C1" H 5900 1850 50  0000 L CNN
F 1 "1 uf 35V" H 5900 1650 50  0000 L CNN
F 2 "c_elec_3x5.3" H 5850 1750 60  0001 C CNN
F 3 "~" H 5850 1750 60  0000 C CNN
	1    5850 1750
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2
U 1 1 59502DFE
P 5850 4750
F 0 "C2" H 5900 4850 50  0000 L CNN
F 1 "1 uf 35V" H 5900 4650 50  0000 L CNN
F 2 "c_elec_3x5.3" H 5850 4750 60  0001 C CNN
F 3 "~" H 5850 4750 60  0000 C CNN
	1    5850 4750
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR037
U 1 1 59502E1E
P 5850 1550
F 0 "#PWR037" H 5850 1500 20  0001 C CNN
F 1 "+12V" H 5850 1650 30  0000 C CNN
F 2 "" H 5850 1550 60  0000 C CNN
F 3 "" H 5850 1550 60  0000 C CNN
	1    5850 1550
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR038
U 1 1 59502E2D
P 5850 4550
F 0 "#PWR038" H 5850 4500 20  0001 C CNN
F 1 "+12V" H 5850 4650 30  0000 C CNN
F 2 "" H 5850 4550 60  0000 C CNN
F 3 "" H 5850 4550 60  0000 C CNN
	1    5850 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 59502E3C
P 5850 4950
F 0 "#PWR039" H 5850 4950 30  0001 C CNN
F 1 "GND" H 5850 4880 30  0001 C CNN
F 2 "" H 5850 4950 60  0000 C CNN
F 3 "" H 5850 4950 60  0000 C CNN
	1    5850 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 59502E55
P 5850 1950
F 0 "#PWR040" H 5850 1950 30  0001 C CNN
F 1 "GND" H 5850 1880 30  0001 C CNN
F 2 "" H 5850 1950 60  0000 C CNN
F 3 "" H 5850 1950 60  0000 C CNN
	1    5850 1950
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 59504EEE
P 6300 2100
F 0 "R15" V 6380 2100 40  0000 C CNN
F 1 "1K" V 6307 2101 40  0000 C CNN
F 2 "~" V 6230 2100 30  0000 C CNN
F 3 "~" H 6300 2100 30  0000 C CNN
	1    6300 2100
	0    -1   -1   0   
$EndComp
$Comp
L R R16
U 1 1 59504F03
P 6300 2650
F 0 "R16" V 6380 2650 40  0000 C CNN
F 1 "1K" V 6307 2651 40  0000 C CNN
F 2 "~" V 6230 2650 30  0000 C CNN
F 3 "~" H 6300 2650 30  0000 C CNN
	1    6300 2650
	0    -1   -1   0   
$EndComp
$Comp
L R R17
U 1 1 59504F1C
P 6300 3300
F 0 "R17" V 6380 3300 40  0000 C CNN
F 1 "1K" V 6307 3301 40  0000 C CNN
F 2 "~" V 6230 3300 30  0000 C CNN
F 3 "~" H 6300 3300 30  0000 C CNN
	1    6300 3300
	0    -1   -1   0   
$EndComp
$Comp
L R R18
U 1 1 59504F32
P 6300 3900
F 0 "R18" V 6380 3900 40  0000 C CNN
F 1 "1K" V 6307 3901 40  0000 C CNN
F 2 "~" V 6230 3900 30  0000 C CNN
F 3 "~" H 6300 3900 30  0000 C CNN
	1    6300 3900
	0    -1   -1   0   
$EndComp
$Comp
L R R19
U 1 1 59504F46
P 6300 5150
F 0 "R19" V 6380 5150 40  0000 C CNN
F 1 "1K" V 6307 5151 40  0000 C CNN
F 2 "~" V 6230 5150 30  0000 C CNN
F 3 "~" H 6300 5150 30  0000 C CNN
	1    6300 5150
	0    -1   -1   0   
$EndComp
$Comp
L R R20
U 1 1 59504F5A
P 6300 5800
F 0 "R20" V 6380 5800 40  0000 C CNN
F 1 "1K" V 6307 5801 40  0000 C CNN
F 2 "~" V 6230 5800 30  0000 C CNN
F 3 "~" H 6300 5800 30  0000 C CNN
	1    6300 5800
	0    -1   -1   0   
$EndComp
$Comp
L R R21
U 1 1 59504F6E
P 6300 6450
F 0 "R21" V 6380 6450 40  0000 C CNN
F 1 "1K" V 6307 6451 40  0000 C CNN
F 2 "~" V 6230 6450 30  0000 C CNN
F 3 "~" H 6300 6450 30  0000 C CNN
	1    6300 6450
	0    -1   -1   0   
$EndComp
$Comp
L R R22
U 1 1 59504F82
P 6300 7050
F 0 "R22" V 6380 7050 40  0000 C CNN
F 1 "1K" V 6307 7051 40  0000 C CNN
F 2 "~" V 6230 7050 30  0000 C CNN
F 3 "~" H 6300 7050 30  0000 C CNN
	1    6300 7050
	0    -1   -1   0   
$EndComp
$Comp
L MMPQ2222A Q1
U 1 1 59510D08
P 6750 2100
F 0 "Q1" H 6750 1950 50  0000 R CNN
F 1 "MMPQ2222A" H 6750 2250 50  0000 R CNN
F 2 "~" H 6750 2100 60  0000 C CNN
F 3 "~" H 6750 2100 60  0000 C CNN
	1    6750 2100
	1    0    0    -1  
$EndComp
$Comp
L MMPQ2222A Q1
U 2 1 59510D17
P 6750 2650
F 0 "Q1" H 6750 2500 50  0000 R CNN
F 1 "MMPQ2222A" H 6750 2800 50  0000 R CNN
F 2 "~" H 6750 2650 60  0000 C CNN
F 3 "~" H 6750 2650 60  0000 C CNN
	2    6750 2650
	1    0    0    -1  
$EndComp
$Comp
L MMPQ2222A Q1
U 3 1 59510D26
P 6750 3300
F 0 "Q1" H 6750 3150 50  0000 R CNN
F 1 "MMPQ2222A" H 6750 3450 50  0000 R CNN
F 2 "~" H 6750 3300 60  0000 C CNN
F 3 "~" H 6750 3300 60  0000 C CNN
	3    6750 3300
	1    0    0    -1  
$EndComp
$Comp
L MMPQ2222A Q1
U 4 1 59510D35
P 6750 3900
F 0 "Q1" H 6750 3750 50  0000 R CNN
F 1 "MMPQ2222A" H 6750 4050 50  0000 R CNN
F 2 "~" H 6750 3900 60  0000 C CNN
F 3 "~" H 6750 3900 60  0000 C CNN
	4    6750 3900
	1    0    0    -1  
$EndComp
$Comp
L MMPQ2222A Q2
U 1 1 59510D44
P 6750 5150
F 0 "Q2" H 6750 5000 50  0000 R CNN
F 1 "MMPQ2222A" H 6750 5300 50  0000 R CNN
F 2 "~" H 6750 5150 60  0000 C CNN
F 3 "~" H 6750 5150 60  0000 C CNN
	1    6750 5150
	1    0    0    -1  
$EndComp
$Comp
L MMPQ2222A Q2
U 2 1 59510D53
P 6750 5800
F 0 "Q2" H 6750 5650 50  0000 R CNN
F 1 "MMPQ2222A" H 6750 5950 50  0000 R CNN
F 2 "~" H 6750 5800 60  0000 C CNN
F 3 "~" H 6750 5800 60  0000 C CNN
	2    6750 5800
	1    0    0    -1  
$EndComp
$Comp
L MMPQ2222A Q2
U 3 1 59510D62
P 6750 6450
F 0 "Q2" H 6750 6300 50  0000 R CNN
F 1 "MMPQ2222A" H 6750 6600 50  0000 R CNN
F 2 "~" H 6750 6450 60  0000 C CNN
F 3 "~" H 6750 6450 60  0000 C CNN
	3    6750 6450
	1    0    0    -1  
$EndComp
$Comp
L MMPQ2222A Q2
U 4 1 59510D71
P 6750 7050
F 0 "Q2" H 6750 6900 50  0000 R CNN
F 1 "MMPQ2222A" H 6750 7200 50  0000 R CNN
F 2 "~" H 6750 7050 60  0000 C CNN
F 3 "~" H 6750 7050 60  0000 C CNN
	4    6750 7050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 59510D9E
P 6850 2300
F 0 "#PWR041" H 6850 2300 30  0001 C CNN
F 1 "GND" H 6850 2230 30  0001 C CNN
F 2 "" H 6850 2300 60  0000 C CNN
F 3 "" H 6850 2300 60  0000 C CNN
	1    6850 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 59510DAD
P 6850 2850
F 0 "#PWR042" H 6850 2850 30  0001 C CNN
F 1 "GND" H 6850 2780 30  0001 C CNN
F 2 "" H 6850 2850 60  0000 C CNN
F 3 "" H 6850 2850 60  0000 C CNN
	1    6850 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 59510DBC
P 6850 3500
F 0 "#PWR043" H 6850 3500 30  0001 C CNN
F 1 "GND" H 6850 3430 30  0001 C CNN
F 2 "" H 6850 3500 60  0000 C CNN
F 3 "" H 6850 3500 60  0000 C CNN
	1    6850 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR044
U 1 1 59510DCB
P 6850 4100
F 0 "#PWR044" H 6850 4100 30  0001 C CNN
F 1 "GND" H 6850 4030 30  0001 C CNN
F 2 "" H 6850 4100 60  0000 C CNN
F 3 "" H 6850 4100 60  0000 C CNN
	1    6850 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR045
U 1 1 59510DDA
P 6850 5350
F 0 "#PWR045" H 6850 5350 30  0001 C CNN
F 1 "GND" H 6850 5280 30  0001 C CNN
F 2 "" H 6850 5350 60  0000 C CNN
F 3 "" H 6850 5350 60  0000 C CNN
	1    6850 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR046
U 1 1 59510DE9
P 6850 6000
F 0 "#PWR046" H 6850 6000 30  0001 C CNN
F 1 "GND" H 6850 5930 30  0001 C CNN
F 2 "" H 6850 6000 60  0000 C CNN
F 3 "" H 6850 6000 60  0000 C CNN
	1    6850 6000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR047
U 1 1 59510DF8
P 6850 6650
F 0 "#PWR047" H 6850 6650 30  0001 C CNN
F 1 "GND" H 6850 6580 30  0001 C CNN
F 2 "" H 6850 6650 60  0000 C CNN
F 3 "" H 6850 6650 60  0000 C CNN
	1    6850 6650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR048
U 1 1 59510E07
P 6850 7250
F 0 "#PWR048" H 6850 7250 30  0001 C CNN
F 1 "GND" H 6850 7180 30  0001 C CNN
F 2 "" H 6850 7250 60  0000 C CNN
F 3 "" H 6850 7250 60  0000 C CNN
	1    6850 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1900 6950 1900
Wire Wire Line
	6950 1900 6950 2000
Wire Wire Line
	6850 2450 6950 2450
Wire Wire Line
	6950 2450 6950 2550
Wire Wire Line
	6850 3100 6950 3100
Wire Wire Line
	6950 3100 6950 3200
Wire Wire Line
	6850 3700 6950 3700
Wire Wire Line
	6950 3700 6950 3800
Wire Wire Line
	6850 4950 6950 4950
Wire Wire Line
	6950 4950 6950 5050
Wire Wire Line
	6850 5600 6950 5600
Wire Wire Line
	6950 5600 6950 5700
Wire Wire Line
	6850 6250 6950 6250
Wire Wire Line
	6950 6250 6950 6350
Wire Wire Line
	6850 6850 6950 6850
Wire Wire Line
	6950 6850 6950 6950
$Comp
L R R23
U 1 1 59510F5E
P 7150 1750
F 0 "R23" V 7230 1750 40  0000 C CNN
F 1 "470" V 7157 1751 40  0000 C CNN
F 2 "~" V 7080 1750 30  0000 C CNN
F 3 "~" H 7150 1750 30  0000 C CNN
	1    7150 1750
	1    0    0    -1  
$EndComp
$Comp
L R R24
U 1 1 59510F72
P 7150 2300
F 0 "R24" V 7230 2300 40  0000 C CNN
F 1 "470" V 7157 2301 40  0000 C CNN
F 2 "~" V 7080 2300 30  0000 C CNN
F 3 "~" H 7150 2300 30  0000 C CNN
	1    7150 2300
	1    0    0    -1  
$EndComp
$Comp
L R R25
U 1 1 59510F8B
P 7150 2950
F 0 "R25" V 7230 2950 40  0000 C CNN
F 1 "470" V 7157 2951 40  0000 C CNN
F 2 "~" V 7080 2950 30  0000 C CNN
F 3 "~" H 7150 2950 30  0000 C CNN
	1    7150 2950
	1    0    0    -1  
$EndComp
$Comp
L R R26
U 1 1 59510F91
P 7150 3550
F 0 "R26" V 7230 3550 40  0000 C CNN
F 1 "470" V 7157 3551 40  0000 C CNN
F 2 "~" V 7080 3550 30  0000 C CNN
F 3 "~" H 7150 3550 30  0000 C CNN
	1    7150 3550
	1    0    0    -1  
$EndComp
$Comp
L R R27
U 1 1 59510FA1
P 7200 4800
F 0 "R27" V 7280 4800 40  0000 C CNN
F 1 "470" V 7207 4801 40  0000 C CNN
F 2 "~" V 7130 4800 30  0000 C CNN
F 3 "~" H 7200 4800 30  0000 C CNN
	1    7200 4800
	1    0    0    -1  
$EndComp
$Comp
L R R28
U 1 1 59510FA7
P 7200 5450
F 0 "R28" V 7280 5450 40  0000 C CNN
F 1 "470" V 7207 5451 40  0000 C CNN
F 2 "~" V 7130 5450 30  0000 C CNN
F 3 "~" H 7200 5450 30  0000 C CNN
	1    7200 5450
	1    0    0    -1  
$EndComp
$Comp
L R R29
U 1 1 59510FAD
P 7200 6100
F 0 "R29" V 7280 6100 40  0000 C CNN
F 1 "470" V 7207 6101 40  0000 C CNN
F 2 "~" V 7130 6100 30  0000 C CNN
F 3 "~" H 7200 6100 30  0000 C CNN
	1    7200 6100
	1    0    0    -1  
$EndComp
$Comp
L R R30
U 1 1 59510FB3
P 7200 6700
F 0 "R30" V 7280 6700 40  0000 C CNN
F 1 "470" V 7207 6701 40  0000 C CNN
F 2 "~" V 7130 6700 30  0000 C CNN
F 3 "~" H 7200 6700 30  0000 C CNN
	1    7200 6700
	1    0    0    -1  
$EndComp
Text GLabel 7350 2000 2    49   Input ~ 0
Motor 1A
Text GLabel 7350 2550 2    49   Input ~ 0
Motor 1B
Text GLabel 7350 3200 2    49   Input ~ 0
Motor 2A
Text GLabel 7350 3800 2    49   Input ~ 0
Motor 2B
Text GLabel 7500 5050 2    49   Input ~ 0
Motor 3A
Text GLabel 7500 5700 2    49   Input ~ 0
Motor 3B
Text GLabel 7500 6350 2    49   Input ~ 0
Motor 4A
Text GLabel 7450 6950 2    49   Input ~ 0
Motor 4B
$Comp
L +12V #PWR049
U 1 1 59510FCF
P 7150 1500
F 0 "#PWR049" H 7150 1450 20  0001 C CNN
F 1 "+12V" H 7150 1600 30  0000 C CNN
F 2 "" H 7150 1500 60  0000 C CNN
F 3 "" H 7150 1500 60  0000 C CNN
	1    7150 1500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR050
U 1 1 59510FDE
P 7150 2050
F 0 "#PWR050" H 7150 2000 20  0001 C CNN
F 1 "+12V" H 7150 2150 30  0000 C CNN
F 2 "" H 7150 2050 60  0000 C CNN
F 3 "" H 7150 2050 60  0000 C CNN
	1    7150 2050
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR051
U 1 1 59510FED
P 7150 2700
F 0 "#PWR051" H 7150 2650 20  0001 C CNN
F 1 "+12V" H 7150 2800 30  0000 C CNN
F 2 "" H 7150 2700 60  0000 C CNN
F 3 "" H 7150 2700 60  0000 C CNN
	1    7150 2700
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR052
U 1 1 59510FFC
P 7150 3300
F 0 "#PWR052" H 7150 3250 20  0001 C CNN
F 1 "+12V" H 7150 3400 30  0000 C CNN
F 2 "" H 7150 3300 60  0000 C CNN
F 3 "" H 7150 3300 60  0000 C CNN
	1    7150 3300
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR053
U 1 1 5951100B
P 7200 4550
F 0 "#PWR053" H 7200 4500 20  0001 C CNN
F 1 "+12V" H 7200 4650 30  0000 C CNN
F 2 "" H 7200 4550 60  0000 C CNN
F 3 "" H 7200 4550 60  0000 C CNN
	1    7200 4550
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR054
U 1 1 5951101A
P 7200 5200
F 0 "#PWR054" H 7200 5150 20  0001 C CNN
F 1 "+12V" H 7200 5300 30  0000 C CNN
F 2 "" H 7200 5200 60  0000 C CNN
F 3 "" H 7200 5200 60  0000 C CNN
	1    7200 5200
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR055
U 1 1 59511029
P 7200 5850
F 0 "#PWR055" H 7200 5800 20  0001 C CNN
F 1 "+12V" H 7200 5950 30  0000 C CNN
F 2 "" H 7200 5850 60  0000 C CNN
F 3 "" H 7200 5850 60  0000 C CNN
	1    7200 5850
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR056
U 1 1 59511038
P 7200 6450
F 0 "#PWR056" H 7200 6400 20  0001 C CNN
F 1 "+12V" H 7200 6550 30  0000 C CNN
F 2 "" H 7200 6450 60  0000 C CNN
F 3 "" H 7200 6450 60  0000 C CNN
	1    7200 6450
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 2000 7350 2000
Connection ~ 7150 2000
Wire Wire Line
	6950 2550 7350 2550
Connection ~ 7150 2550
Wire Wire Line
	6950 3200 7350 3200
Connection ~ 7150 3200
Wire Wire Line
	6950 3800 7350 3800
Connection ~ 7150 3800
Wire Wire Line
	6950 5050 7500 5050
Connection ~ 7200 5050
Wire Wire Line
	6950 5700 7500 5700
Connection ~ 7200 5700
Wire Wire Line
	6950 6350 7500 6350
Connection ~ 7200 6350
Wire Wire Line
	6950 6950 7450 6950
Connection ~ 7200 6950
Connection ~ 4900 2350
Connection ~ 4900 3550
Connection ~ 4900 5450
Connection ~ 4900 6800
$EndSCHEMATC
