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
LIBS:PocketBeagleCommandStation_SMD-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
Title "Pocket Beagle DCC Command Station (SMD version)"
Date "2021-04-09"
Rev "A"
Comp "Deepwoods Software"
Comment1 "Prog and OpenLCB DCC drivers"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L DRV8801PWP U6
U 1 1 60703850
P 3250 2350
F 0 "U6" H 4500 2650 50  0000 L CNN
F 1 "DRV8801PWP" H 4500 2550 50  0000 L CNN
F 2 "SOP65P640X120:SOP65P640X120-17N" H 4500 2450 50  0001 L CNN
F 3 "https://www.ti.com/lit/gpn/DRV8801" H 4500 2350 50  0001 L CNN
F 4 "Motor / Motion / Ignition Controllers & Drivers Full Bridge Motor Drvr" H 4500 2250 50  0001 L CNN "Description"
F 5 "1.2" H 4500 2150 50  0001 L CNN "Height"
F 6 "595-DRV8801PWP" H 4500 2050 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/DRV8801PWP?qs=IK5e5L0zOXgGek5L7Qn3rg%3D%3D" H 4500 1950 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 4500 1850 50  0001 L CNN "Manufacturer_Name"
F 9 "DRV8801PWP" H 4500 1750 50  0001 L CNN "Manufacturer_Part_Number"
	1    3250 2350
	1    0    0    -1  
$EndComp
Text HLabel 3100 2950 0    60   Output ~ 0
1A
Text HLabel 4950 2950 2    60   Output ~ 0
1B
Text HLabel 5400 3050 2    60   Input ~ 0
Power1
Text HLabel 1600 2450 0    60   Input ~ 0
Signal1
Text HLabel 1600 2650 0    60   Input ~ 0
Enable1
$Comp
L 74AHC1G08 U5
U 1 1 60706D15
P 2450 2550
F 0 "U5" H 2450 2600 50  0000 C CNN
F 1 "74AHC1G08" H 2450 2500 50  0000 C CNN
F 2 "" H 2450 2550 50  0001 C CNN
F 3 "" H 2450 2550 50  0001 C CNN
	1    2450 2550
	1    0    0    -1  
$EndComp
$Comp
L R R23
U 1 1 60706F6F
P 5100 3050
F 0 "R23" V 5180 3050 50  0000 C CNN
F 1 "0.005 Ohms" V 5100 3050 50  0000 C CNN
F 2 "" V 5030 3050 50  0001 C CNN
F 3 "" H 5100 3050 50  0001 C CNN
	1    5100 3050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR035
U 1 1 60707066
P 3950 4000
F 0 "#PWR035" H 3950 3750 50  0001 C CNN
F 1 "GND" H 3950 3850 50  0000 C CNN
F 2 "" H 3950 4000 50  0001 C CNN
F 3 "" H 3950 4000 50  0001 C CNN
	1    3950 4000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR036
U 1 1 607070B2
P 2250 1950
F 0 "#PWR036" H 2250 1800 50  0001 C CNN
F 1 "+3.3V" H 2250 2090 50  0000 C CNN
F 2 "" H 2250 1950 50  0001 C CNN
F 3 "" H 2250 1950 50  0001 C CNN
	1    2250 1950
	1    0    0    -1  
$EndComp
Text HLabel 5450 3250 2    60   Output ~ 0
Sense1_Pos
Text HLabel 5450 3500 2    60   Output ~ 0
Sense1_Neg
$Comp
L C_Small C17
U 1 1 60708432
P 4750 2800
F 0 "C17" H 4760 2870 50  0000 L CNN
F 1 "100 nf" H 4760 2720 50  0000 L CNN
F 2 "" H 4750 2800 50  0001 C CNN
F 3 "" H 4750 2800 50  0001 C CNN
	1    4750 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 60708524
P 4700 1850
F 0 "#PWR037" H 4700 1600 50  0001 C CNN
F 1 "GND" H 4700 1700 50  0000 C CNN
F 2 "" H 4700 1850 50  0001 C CNN
F 3 "" H 4700 1850 50  0001 C CNN
	1    4700 1850
	1    0    0    -1  
$EndComp
$Comp
L R R21
U 1 1 607085F1
P 3200 2100
F 0 "R21" V 3280 2100 50  0000 C CNN
F 1 "10K Ohms" V 3200 2100 50  0000 C CNN
F 2 "" V 3130 2100 50  0001 C CNN
F 3 "" H 3200 2100 50  0001 C CNN
	1    3200 2100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR038
U 1 1 60708624
P 3200 1850
F 0 "#PWR038" H 3200 1700 50  0001 C CNN
F 1 "+3.3V" H 3200 1990 50  0000 C CNN
F 2 "" H 3200 1850 50  0001 C CNN
F 3 "" H 3200 1850 50  0001 C CNN
	1    3200 1850
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 607086C0
P 4850 2450
F 0 "R22" V 4930 2450 50  0000 C CNN
F 1 "10K Ohms" V 4850 2450 50  0000 C CNN
F 2 "" V 4780 2450 50  0001 C CNN
F 3 "" H 4850 2450 50  0001 C CNN
	1    4850 2450
	0    1    1    0   
$EndComp
$Comp
L R R18
U 1 1 607086F7
P 1650 3050
F 0 "R18" V 1730 3050 50  0000 C CNN
F 1 "10K Ohms" V 1650 3050 50  0000 C CNN
F 2 "" V 1580 3050 50  0001 C CNN
F 3 "" H 1650 3050 50  0001 C CNN
	1    1650 3050
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 607088C1
P 3150 3350
F 0 "R20" V 3230 3350 50  0000 C CNN
F 1 "1 Ohms" V 3150 3350 50  0000 C CNN
F 2 "" V 3080 3350 50  0001 C CNN
F 3 "" H 3150 3350 50  0001 C CNN
	1    3150 3350
	1    0    0    -1  
$EndComp
$Comp
L R R19
U 1 1 607089B6
P 3050 2100
F 0 "R19" V 3130 2100 50  0000 C CNN
F 1 "10K Ohms" V 3050 2100 50  0000 C CNN
F 2 "" V 2980 2100 50  0001 C CNN
F 3 "" H 3050 2100 50  0001 C CNN
	1    3050 2100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C19
U 1 1 60708E8A
P 5000 2650
F 0 "C19" H 5010 2720 50  0000 L CNN
F 1 "100 nf" H 5010 2570 50  0000 L CNN
F 2 "" H 5000 2650 50  0001 C CNN
F 3 "" H 5000 2650 50  0001 C CNN
	1    5000 2650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C18
U 1 1 60708F5E
P 4750 3200
F 0 "C18" H 4760 3270 50  0000 L CNN
F 1 "100 nf" H 4760 3120 50  0000 L CNN
F 2 "" H 4750 3200 50  0001 C CNN
F 3 "" H 4750 3200 50  0001 C CNN
	1    4750 3200
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C16
U 1 1 60708F8B
P 4550 3200
F 0 "C16" H 4560 3270 50  0000 L CNN
F 1 "100 uf" H 4560 3120 50  0000 L CNN
F 2 "" H 4550 3200 50  0001 C CNN
F 3 "" H 4550 3200 50  0001 C CNN
	1    4550 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2550 3250 2550
Wire Wire Line
	1850 2450 1600 2450
Wire Wire Line
	1600 2650 1850 2650
Wire Wire Line
	3250 2850 1750 2850
Wire Wire Line
	1750 2850 1750 2650
Connection ~ 1750 2650
Wire Wire Line
	3100 2950 3250 2950
Wire Wire Line
	4950 2950 4650 2950
Wire Wire Line
	5250 3050 5400 3050
Wire Wire Line
	4650 3050 4950 3050
Wire Wire Line
	3250 2650 2800 2650
Wire Wire Line
	2800 2650 2800 3800
Wire Wire Line
	2800 3800 4850 3800
Wire Wire Line
	4850 3800 4850 2650
Wire Wire Line
	4850 2650 4650 2650
Wire Wire Line
	3950 3550 3950 4000
Connection ~ 3950 3800
Connection ~ 2800 3250
Wire Wire Line
	2250 1950 2250 2350
Wire Wire Line
	5450 3250 5300 3250
Wire Wire Line
	5300 3250 5300 3050
Connection ~ 5300 3050
Wire Wire Line
	4900 3050 4900 3500
Wire Wire Line
	4900 3500 5450 3500
Connection ~ 4900 3050
Wire Wire Line
	4650 2750 4650 2700
Wire Wire Line
	4650 2700 4750 2700
Wire Wire Line
	4650 2850 4650 2900
Wire Wire Line
	4650 2900 4750 2900
Wire Wire Line
	3250 2450 2950 2450
Wire Wire Line
	2950 2450 2950 1750
Wire Wire Line
	2950 1750 5200 1750
Wire Wire Line
	5200 1750 5200 2350
Wire Wire Line
	5200 2350 4650 2350
Wire Wire Line
	4700 1850 4700 1750
Connection ~ 4700 1750
Wire Wire Line
	3200 1850 3200 1950
Wire Wire Line
	3200 2250 3200 2350
Wire Wire Line
	3200 2350 3250 2350
Wire Wire Line
	1650 2900 1650 2650
Connection ~ 1650 2650
Wire Wire Line
	1650 3250 2800 3250
Wire Wire Line
	2250 2750 2200 2750
Wire Wire Line
	2200 2750 2200 3250
Connection ~ 2200 3250
Wire Wire Line
	4650 2450 4700 2450
Wire Wire Line
	5000 2450 5000 2350
Connection ~ 5000 2350
Wire Wire Line
	3150 3200 3150 3050
Wire Wire Line
	3150 3050 3250 3050
Wire Wire Line
	3150 3500 3150 3800
Connection ~ 3150 3800
Wire Wire Line
	3050 1950 3050 1900
Wire Wire Line
	3050 1900 3200 1900
Connection ~ 3200 1900
Wire Wire Line
	3050 2250 3050 2750
Wire Wire Line
	3050 2750 3250 2750
Wire Wire Line
	4550 3100 4750 3100
Wire Wire Line
	4750 3100 4750 3050
Connection ~ 4750 3050
Wire Wire Line
	4550 3300 4750 3300
Wire Wire Line
	4750 3300 4750 3800
Connection ~ 4750 3800
Wire Wire Line
	5000 2550 4650 2550
Wire Wire Line
	5000 2750 5200 2750
Wire Wire Line
	5200 2750 5200 3500
Connection ~ 5200 3500
$Comp
L DRV8801PWP U8
U 1 1 6070A68E
P 7750 4250
F 0 "U8" H 9000 4550 50  0000 L CNN
F 1 "DRV8801PWP" H 9000 4450 50  0000 L CNN
F 2 "SOP65P640X120:SOP65P640X120-17N" H 9000 4350 50  0001 L CNN
F 3 "https://www.ti.com/lit/gpn/DRV8801" H 9000 4250 50  0001 L CNN
F 4 "Motor / Motion / Ignition Controllers & Drivers Full Bridge Motor Drvr" H 9000 4150 50  0001 L CNN "Description"
F 5 "1.2" H 9000 4050 50  0001 L CNN "Height"
F 6 "595-DRV8801PWP" H 9000 3950 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/DRV8801PWP?qs=IK5e5L0zOXgGek5L7Qn3rg%3D%3D" H 9000 3850 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 9000 3750 50  0001 L CNN "Manufacturer_Name"
F 9 "DRV8801PWP" H 9000 3650 50  0001 L CNN "Manufacturer_Part_Number"
	1    7750 4250
	1    0    0    -1  
$EndComp
Text HLabel 6950 4850 0    60   Output ~ 0
2A
Text HLabel 10150 4850 2    60   Output ~ 0
2B
Text HLabel 9900 4950 2    60   Input ~ 0
Power2
Text HLabel 6100 4350 0    60   Input ~ 0
Signal2
Text HLabel 6100 4550 0    60   Input ~ 0
Enable2
$Comp
L 74AHC1G08 U7
U 1 1 6070A699
P 6950 4450
F 0 "U7" H 6950 4500 50  0000 C CNN
F 1 "74AHC1G08" H 6950 4400 50  0000 C CNN
F 2 "" H 6950 4450 50  0001 C CNN
F 3 "" H 6950 4450 50  0001 C CNN
	1    6950 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 6070A6A5
P 8450 5900
F 0 "#PWR039" H 8450 5650 50  0001 C CNN
F 1 "GND" H 8450 5750 50  0000 C CNN
F 2 "" H 8450 5900 50  0001 C CNN
F 3 "" H 8450 5900 50  0001 C CNN
	1    8450 5900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR040
U 1 1 6070A6AB
P 6750 3850
F 0 "#PWR040" H 6750 3700 50  0001 C CNN
F 1 "+3.3V" H 6750 3990 50  0000 C CNN
F 2 "" H 6750 3850 50  0001 C CNN
F 3 "" H 6750 3850 50  0001 C CNN
	1    6750 3850
	1    0    0    -1  
$EndComp
$Comp
L C_Small C21
U 1 1 6070A6B3
P 9250 4700
F 0 "C21" H 9260 4770 50  0000 L CNN
F 1 "100 nf" H 9260 4620 50  0000 L CNN
F 2 "" H 9250 4700 50  0001 C CNN
F 3 "" H 9250 4700 50  0001 C CNN
	1    9250 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 6070A6B9
P 9200 3750
F 0 "#PWR041" H 9200 3500 50  0001 C CNN
F 1 "GND" H 9200 3600 50  0000 C CNN
F 2 "" H 9200 3750 50  0001 C CNN
F 3 "" H 9200 3750 50  0001 C CNN
	1    9200 3750
	1    0    0    -1  
$EndComp
$Comp
L R R28
U 1 1 6070A6BF
P 7700 4000
F 0 "R28" V 7780 4000 50  0000 C CNN
F 1 "10K Ohms" V 7700 4000 50  0000 C CNN
F 2 "" V 7630 4000 50  0001 C CNN
F 3 "" H 7700 4000 50  0001 C CNN
	1    7700 4000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR042
U 1 1 6070A6C5
P 7700 3750
F 0 "#PWR042" H 7700 3600 50  0001 C CNN
F 1 "+3.3V" H 7700 3890 50  0000 C CNN
F 2 "" H 7700 3750 50  0001 C CNN
F 3 "" H 7700 3750 50  0001 C CNN
	1    7700 3750
	1    0    0    -1  
$EndComp
$Comp
L R R29
U 1 1 6070A6CB
P 9350 4350
F 0 "R29" V 9430 4350 50  0000 C CNN
F 1 "10K Ohms" V 9350 4350 50  0000 C CNN
F 2 "" V 9280 4350 50  0001 C CNN
F 3 "" H 9350 4350 50  0001 C CNN
	1    9350 4350
	0    1    1    0   
$EndComp
$Comp
L R R24
U 1 1 6070A6D1
P 6150 4950
F 0 "R24" V 6230 4950 50  0000 C CNN
F 1 "10K Ohms" V 6150 4950 50  0000 C CNN
F 2 "" V 6080 4950 50  0001 C CNN
F 3 "" H 6150 4950 50  0001 C CNN
	1    6150 4950
	1    0    0    -1  
$EndComp
$Comp
L R R27
U 1 1 6070A6D7
P 7650 5250
F 0 "R27" V 7730 5250 50  0000 C CNN
F 1 "1 Ohms" V 7650 5250 50  0000 C CNN
F 2 "" V 7580 5250 50  0001 C CNN
F 3 "" H 7650 5250 50  0001 C CNN
	1    7650 5250
	1    0    0    -1  
$EndComp
$Comp
L R R26
U 1 1 6070A6DD
P 7550 4000
F 0 "R26" V 7630 4000 50  0000 C CNN
F 1 "10K Ohms" V 7550 4000 50  0000 C CNN
F 2 "" V 7480 4000 50  0001 C CNN
F 3 "" H 7550 4000 50  0001 C CNN
	1    7550 4000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C23
U 1 1 6070A6E3
P 9500 4550
F 0 "C23" H 9510 4620 50  0000 L CNN
F 1 "100 nf" H 9510 4470 50  0000 L CNN
F 2 "" H 9500 4550 50  0001 C CNN
F 3 "" H 9500 4550 50  0001 C CNN
	1    9500 4550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C22
U 1 1 6070A6E9
P 9250 5100
F 0 "C22" H 9260 5170 50  0000 L CNN
F 1 "100 nf" H 9260 5020 50  0000 L CNN
F 2 "" H 9250 5100 50  0001 C CNN
F 3 "" H 9250 5100 50  0001 C CNN
	1    9250 5100
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C20
U 1 1 6070A6EF
P 9050 5100
F 0 "C20" H 9060 5170 50  0000 L CNN
F 1 "100 uf" H 9060 5020 50  0000 L CNN
F 2 "" H 9050 5100 50  0001 C CNN
F 3 "" H 9050 5100 50  0001 C CNN
	1    9050 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4450 7750 4450
Wire Wire Line
	6350 4350 6100 4350
Wire Wire Line
	6100 4550 6350 4550
Wire Wire Line
	7750 4750 6250 4750
Wire Wire Line
	6250 4750 6250 4550
Connection ~ 6250 4550
Wire Wire Line
	6950 4850 7750 4850
Wire Wire Line
	10150 4850 9150 4850
Wire Wire Line
	9150 4950 9900 4950
Wire Wire Line
	7750 4550 7300 4550
Wire Wire Line
	7300 4550 7300 5700
Wire Wire Line
	7300 5700 9350 5700
Wire Wire Line
	9350 5700 9350 4550
Wire Wire Line
	9350 4550 9150 4550
Wire Wire Line
	8450 5450 8450 5900
Connection ~ 8450 5700
Connection ~ 7300 5150
Wire Wire Line
	6750 3850 6750 4250
Wire Wire Line
	9150 4650 9150 4600
Wire Wire Line
	9150 4600 9250 4600
Wire Wire Line
	9150 4750 9150 4800
Wire Wire Line
	9150 4800 9250 4800
Wire Wire Line
	7750 4350 7450 4350
Wire Wire Line
	7450 4350 7450 3650
Wire Wire Line
	7450 3650 9700 3650
Wire Wire Line
	9700 3650 9700 4250
Wire Wire Line
	9700 4250 9150 4250
Wire Wire Line
	9200 3750 9200 3650
Connection ~ 9200 3650
Wire Wire Line
	7700 3750 7700 3850
Wire Wire Line
	7700 4150 7700 4250
Wire Wire Line
	7700 4250 7750 4250
Wire Wire Line
	6150 4800 6150 4550
Connection ~ 6150 4550
Wire Wire Line
	6150 5150 7300 5150
Wire Wire Line
	6750 4650 6700 4650
Wire Wire Line
	6700 4650 6700 5150
Connection ~ 6700 5150
Wire Wire Line
	9150 4350 9200 4350
Wire Wire Line
	9500 4350 9500 4250
Connection ~ 9500 4250
Wire Wire Line
	7650 5100 7650 4950
Wire Wire Line
	7650 4950 7750 4950
Wire Wire Line
	7650 5400 7650 5700
Connection ~ 7650 5700
Wire Wire Line
	7550 3850 7550 3800
Wire Wire Line
	7550 3800 7700 3800
Connection ~ 7700 3800
Wire Wire Line
	7550 4150 7550 4650
Wire Wire Line
	7550 4650 7750 4650
Wire Wire Line
	9050 5000 9250 5000
Wire Wire Line
	9250 5000 9250 4950
Connection ~ 9250 4950
Wire Wire Line
	9050 5200 9250 5200
Wire Wire Line
	9250 5200 9250 5700
Connection ~ 9250 5700
Wire Wire Line
	9500 4450 9150 4450
Wire Wire Line
	9500 4650 9500 4950
Connection ~ 9500 4950
$Comp
L R R30
U 1 1 6070ACE1
P 9850 4650
F 0 "R30" V 9930 4650 50  0000 C CNN
F 1 "10K Ohms" V 9850 4650 50  0000 C CNN
F 2 "" V 9780 4650 50  0001 C CNN
F 3 "" H 9850 4650 50  0001 C CNN
	1    9850 4650
	1    0    0    -1  
$EndComp
$Comp
L R R25
U 1 1 6070ADFE
P 7000 5350
F 0 "R25" V 7080 5350 50  0000 C CNN
F 1 "10K Ohms" V 7000 5350 50  0000 C CNN
F 2 "" V 6930 5350 50  0001 C CNN
F 3 "" H 7000 5350 50  0001 C CNN
	1    7000 5350
	1    0    0    -1  
$EndComp
$Comp
L D_Shockley D7
U 1 1 6070AF68
P 7000 5850
F 0 "D7" H 7000 5950 50  0000 C CNN
F 1 "B5819W" H 7000 5750 50  0000 C CNN
F 2 "" H 7000 5850 50  0001 C CNN
F 3 "" H 7000 5850 50  0001 C CNN
	1    7000 5850
	0    -1   -1   0   
$EndComp
$Comp
L D_Shockley D8
U 1 1 6070BA0F
P 10100 4650
F 0 "D8" H 10100 4750 50  0000 C CNN
F 1 "B5819W" H 10100 4550 50  0000 C CNN
F 2 "" H 10100 4650 50  0001 C CNN
F 3 "" H 10100 4650 50  0001 C CNN
	1    10100 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 5500 7000 5700
Wire Wire Line
	7000 5200 7000 5150
Connection ~ 7000 5150
Wire Wire Line
	7150 4850 7150 5600
Wire Wire Line
	7150 5600 7000 5600
Connection ~ 7000 5600
Connection ~ 7150 4850
Wire Wire Line
	7000 6000 9650 6000
Wire Wire Line
	9650 6000 9650 4950
Wire Wire Line
	9650 4950 9700 4950
Connection ~ 9700 4950
Wire Wire Line
	9850 4800 9850 4850
Connection ~ 9850 4850
Wire Wire Line
	10100 4800 10100 4850
Connection ~ 10100 4850
Wire Wire Line
	9700 4500 10100 4500
Wire Wire Line
	9700 4950 9700 4500
Connection ~ 9850 4500
$EndSCHEMATC
