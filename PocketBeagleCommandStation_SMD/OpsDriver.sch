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
LIBS:PocketBeagleCommandStation_SMD-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
Title "Pocket Beagle DCC Command Station (SMD version)"
Date "2021-04-09"
Rev "A"
Comp "Deepwoods Software"
Comment1 "Operations DCC Driver"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2500 2500 0    60   Input ~ 0
SIGNAL
Text HLabel 2500 2400 0    60   Input ~ 0
ENABLE
Text HLabel 2500 2600 0    60   Input ~ 0
BRAKE
Text HLabel 6050 1550 2    60   Input ~ 0
PowerIn
Text HLabel 5100 2350 2    60   Output ~ 0
A
Text HLabel 5100 2750 2    60   Output ~ 0
B
Text HLabel 6050 1750 2    60   Output ~ 0
Sense_Pos
Text HLabel 6050 1950 2    60   Output ~ 0
Sense_Neg
$Comp
L DRV8873HPWPR U4
U 1 1 606FD60F
P 3550 1800
F 0 "U4" H 4800 2100 50  0000 L CNN
F 1 "DRV8873HPWPR" H 4800 2000 50  0000 L CNN
F 2 "SOP65P640X120:SOP65P640X120-25N" H 4800 1900 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/drv8873.pdf" H 4800 1800 50  0001 L CNN
F 4 "Motor / Motion / Ignition Controllers & Drivers 10A H-Bridge Motor Driver with Integrated Current Sensing and Current Sense Output" H 4800 1700 50  0001 L CNN "Description"
F 5 "1.2" H 4800 1600 50  0001 L CNN "Height"
F 6 "595-DRV8873HPWPR" H 4800 1500 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/DRV8873HPWPR?qs=0lSvoLzn4L9%252BP4S8Gvwd%252BQ%3D%3D" H 4800 1400 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 4800 1300 50  0001 L CNN "Manufacturer_Name"
F 9 "DRV8873HPWPR" H 4800 1200 50  0001 L CNN "Manufacturer_Part_Number"
	1    3550 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR37
U 1 1 6070432B
P 5250 1800
F 0 "#PWR37" H 5250 1550 50  0001 C CNN
F 1 "GND" H 5250 1650 50  0000 C CNN
F 2 "" H 5250 1800 50  0001 C CNN
F 3 "" H 5250 1800 50  0001 C CNN
	1    5250 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR36
U 1 1 60704370
P 4250 3550
F 0 "#PWR36" H 4250 3300 50  0001 C CNN
F 1 "GND" H 4250 3400 50  0000 C CNN
F 2 "" H 4250 3550 50  0001 C CNN
F 3 "" H 4250 3550 50  0001 C CNN
	1    4250 3550
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 607043BF
P 5800 1550
F 0 "R17" V 5880 1550 50  0000 C CNN
F 1 "0.005 Ohms" V 5800 1550 50  0000 C CNN
F 2 "" V 5730 1550 50  0001 C CNN
F 3 "" H 5800 1550 50  0001 C CNN
	1    5800 1550
	0    1    1    0   
$EndComp
Text Label 5650 2100 0    60   ~ 0
Local_VDD
$Comp
L C_Small C11
U 1 1 607044D9
P 5100 1950
F 0 "C11" H 5110 2020 50  0000 L CNN
F 1 "47 nf" H 5110 1870 50  0000 L CNN
F 2 "" H 5100 1950 50  0001 C CNN
F 3 "" H 5100 1950 50  0001 C CNN
	1    5100 1950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C12
U 1 1 6070454C
P 5250 2100
F 0 "C12" H 5260 2170 50  0000 L CNN
F 1 "1 uf" H 5260 2020 50  0000 L CNN
F 2 "" H 5250 2100 50  0001 C CNN
F 3 "" H 5250 2100 50  0001 C CNN
	1    5250 2100
	0    1    1    0   
$EndComp
$Comp
L C C13
U 1 1 607045D9
P 5800 2450
F 0 "C13" H 5825 2550 50  0000 L CNN
F 1 "100 nf" H 5825 2350 50  0000 L CNN
F 2 "" H 5838 2300 50  0001 C CNN
F 3 "" H 5800 2450 50  0001 C CNN
	1    5800 2450
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 607045FC
P 6150 2450
F 0 "C14" H 6175 2550 50  0000 L CNN
F 1 "100 nf" H 6175 2350 50  0000 L CNN
F 2 "" H 6188 2300 50  0001 C CNN
F 3 "" H 6150 2450 50  0001 C CNN
	1    6150 2450
	1    0    0    -1  
$EndComp
$Comp
L CP1 C15
U 1 1 60704621
P 6500 2450
F 0 "C15" H 6525 2550 50  0000 L CNN
F 1 "47 uf" H 6525 2350 50  0000 L CNN
F 2 "" H 6500 2450 50  0001 C CNN
F 3 "" H 6500 2450 50  0001 C CNN
	1    6500 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR39
U 1 1 60704783
P 6150 2750
F 0 "#PWR39" H 6150 2500 50  0001 C CNN
F 1 "GND" H 6150 2600 50  0000 C CNN
F 2 "" H 6150 2750 50  0001 C CNN
F 3 "" H 6150 2750 50  0001 C CNN
	1    6150 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR38
U 1 1 60704831
P 5300 2550
F 0 "#PWR38" H 5300 2300 50  0001 C CNN
F 1 "GND" H 5300 2400 50  0000 C CNN
F 2 "" H 5300 2550 50  0001 C CNN
F 3 "" H 5300 2550 50  0001 C CNN
	1    5300 2550
	1    0    0    -1  
$EndComp
NoConn ~ 3550 2700
NoConn ~ 3550 2900
$Comp
L C C10
U 1 1 607048DD
P 3000 2000
F 0 "C10" H 3025 2100 50  0000 L CNN
F 1 "1 uf" H 3025 1900 50  0000 L CNN
F 2 "" H 3038 1850 50  0001 C CNN
F 3 "" H 3000 2000 50  0001 C CNN
	1    3000 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR34
U 1 1 6070495B
P 3000 2250
F 0 "#PWR34" H 3000 2000 50  0001 C CNN
F 1 "GND" H 3000 2100 50  0000 C CNN
F 2 "" H 3000 2250 50  0001 C CNN
F 3 "" H 3000 2250 50  0001 C CNN
	1    3000 2250
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 60704A49
P 3500 1450
F 0 "R16" V 3580 1450 50  0000 C CNN
F 1 "10K Ohms" V 3500 1450 50  0000 C CNN
F 2 "" V 3430 1450 50  0001 C CNN
F 3 "" H 3500 1450 50  0001 C CNN
	1    3500 1450
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 60704A7E
P 3400 1450
F 0 "R15" V 3480 1450 50  0000 C CNN
F 1 "10K Ohms" V 3400 1450 50  0000 C CNN
F 2 "" V 3330 1450 50  0001 C CNN
F 3 "" H 3400 1450 50  0001 C CNN
	1    3400 1450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR35
U 1 1 60707495
P 3400 1100
F 0 "#PWR35" H 3400 950 50  0001 C CNN
F 1 "+3.3V" H 3400 1240 50  0000 C CNN
F 2 "" H 3400 1100 50  0001 C CNN
F 3 "" H 3400 1100 50  0001 C CNN
	1    3400 1100
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 6070758B
P 2600 2150
F 0 "R14" V 2680 2150 50  0000 C CNN
F 1 "10K Ohms" V 2600 2150 50  0000 C CNN
F 2 "" V 2530 2150 50  0001 C CNN
F 3 "" H 2600 2150 50  0001 C CNN
	1    2600 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR33
U 1 1 607075FE
P 2600 2850
F 0 "#PWR33" H 2600 2600 50  0001 C CNN
F 1 "GND" H 2600 2700 50  0000 C CNN
F 2 "" H 2600 2850 50  0001 C CNN
F 3 "" H 2600 2850 50  0001 C CNN
	1    2600 2850
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P TP7
U 1 1 60742F6B
P 3300 2750
F 0 "TP7" H 3300 3020 50  0000 C CNN
F 1 "OPSB" H 3300 2950 50  0000 C CNN
F 2 "" H 3500 2750 50  0001 C CNN
F 3 "" H 3500 2750 50  0001 C CNN
	1    3300 2750
	-1   0    0    1   
$EndComp
$Comp
L TEST_1P TP6
U 1 1 60743082
P 3050 2750
F 0 "TP6" H 3050 3020 50  0000 C CNN
F 1 "OPSS" H 3050 2950 50  0000 C CNN
F 2 "" H 3250 2750 50  0001 C CNN
F 3 "" H 3250 2750 50  0001 C CNN
	1    3050 2750
	-1   0    0    1   
$EndComp
$Comp
L TEST_1P TP5
U 1 1 607430B7
P 2850 2750
F 0 "TP5" H 2850 3020 50  0000 C CNN
F 1 "OPSE" H 2850 2950 50  0000 C CNN
F 2 "" H 3050 2750 50  0001 C CNN
F 3 "" H 3050 2750 50  0001 C CNN
	1    2850 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 2400 3550 2400
Wire Wire Line
	2500 2500 3550 2500
Wire Wire Line
	2500 2600 3550 2600
Wire Wire Line
	5100 2350 5000 2350
Wire Wire Line
	5000 2300 5000 2400
Wire Wire Line
	5000 2300 4950 2300
Wire Wire Line
	5000 2400 4950 2400
Connection ~ 5000 2350
Wire Wire Line
	5100 2750 5000 2750
Wire Wire Line
	5000 2700 5000 2800
Wire Wire Line
	5000 2700 4950 2700
Wire Wire Line
	5000 2800 4950 2800
Connection ~ 5000 2750
Wire Wire Line
	5650 2200 4950 2200
Wire Wire Line
	5550 2200 5550 2900
Wire Wire Line
	5550 2900 4950 2900
Wire Wire Line
	5250 1800 4950 1800
Wire Wire Line
	4250 3400 4250 3550
Wire Wire Line
	5950 1550 6050 1550
Wire Wire Line
	5650 1550 5650 2200
Connection ~ 5550 2200
Wire Wire Line
	6050 1750 6000 1750
Wire Wire Line
	6000 1750 6000 1550
Connection ~ 6000 1550
Wire Wire Line
	6050 1950 5650 1950
Connection ~ 5650 1950
Wire Wire Line
	5100 1850 4950 1850
Wire Wire Line
	4950 1850 4950 1900
Wire Wire Line
	5100 2050 4950 2050
Wire Wire Line
	4950 2050 4950 2000
Wire Wire Line
	5150 2100 4950 2100
Wire Wire Line
	5350 2100 5650 2100
Connection ~ 5650 2100
Wire Wire Line
	5550 2300 6500 2300
Connection ~ 6150 2300
Connection ~ 5550 2300
Connection ~ 5800 2300
Wire Wire Line
	5800 2600 6500 2600
Connection ~ 6150 2600
Wire Wire Line
	6150 2750 6150 2600
Wire Wire Line
	4950 2500 5050 2500
Wire Wire Line
	5050 2500 5050 2600
Wire Wire Line
	5050 2600 4950 2600
Wire Wire Line
	5300 2550 5050 2550
Connection ~ 5050 2550
Wire Wire Line
	3000 1800 3550 1800
Wire Wire Line
	3250 1800 3250 2300
Wire Wire Line
	3250 2300 3550 2300
Wire Wire Line
	3000 1800 3000 1850
Connection ~ 3250 1800
Wire Wire Line
	3000 2150 3000 2250
Wire Wire Line
	3500 1600 3500 1900
Wire Wire Line
	3500 1900 3550 1900
Wire Wire Line
	3400 1600 3400 2800
Wire Wire Line
	3400 2800 3550 2800
Wire Wire Line
	3400 1100 3400 1300
Wire Wire Line
	3500 1300 3500 1150
Wire Wire Line
	3500 1150 3400 1150
Connection ~ 3400 1150
Wire Wire Line
	3550 2000 2600 2000
Wire Wire Line
	2600 2300 2600 2850
Wire Wire Line
	3550 2100 3450 2100
Wire Wire Line
	3450 2100 3450 2200
Wire Wire Line
	3000 2200 3550 2200
Connection ~ 3000 2200
Connection ~ 3450 2200
Wire Wire Line
	2850 2750 2850 2400
Connection ~ 2850 2400
Wire Wire Line
	3050 2750 3050 2500
Connection ~ 3050 2500
Wire Wire Line
	3300 2750 3300 2600
Connection ~ 3300 2600
$EndSCHEMATC
