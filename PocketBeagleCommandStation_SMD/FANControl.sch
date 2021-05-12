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
LIBS:MCP9700T-E_LT
LIBS:PocketBeagleCommandStation_SMD-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
Title "Pocket Beagle DCC Command Station (SMD version)"
Date "2021-04-09"
Rev "A"
Comp "Deepwoods Software"
Comment1 "Fan Control"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Screw_Terminal_01x02 J6
U 1 1 6070C31D
P 5800 2600
F 0 "J6" H 5800 2700 50  0000 C CNN
F 1 "Fan" H 5800 2400 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_2pol" H 5800 2600 50  0001 C CNN
F 3 "" H 5800 2600 50  0001 C CNN
	1    5800 2600
	1    0    0    -1  
$EndComp
$Comp
L R R31
U 1 1 6070C321
P 4600 3300
F 0 "R31" V 4680 3300 50  0000 C CNN
F 1 "1K" V 4600 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4530 3300 50  0001 C CNN
F 3 "" H 4600 3300 50  0001 C CNN
F 4 "279-CRGCQ0603F1K0" V 4600 3300 60  0001 C CNN "Mouser Part Number"
	1    4600 3300
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR068
U 1 1 6070C322
P 3450 3850
F 0 "#PWR068" H 3450 3700 50  0001 C CNN
F 1 "+3.3V" H 3450 3990 50  0000 C CNN
F 2 "" H 3450 3850 50  0001 C CNN
F 3 "" H 3450 3850 50  0001 C CNN
	1    3450 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR069
U 1 1 6070C323
P 5550 3750
F 0 "#PWR069" H 5550 3500 50  0001 C CNN
F 1 "GND" H 5550 3600 50  0000 C CNN
F 2 "" H 5550 3750 50  0001 C CNN
F 3 "" H 5550 3750 50  0001 C CNN
	1    5550 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR070
U 1 1 6070C324
P 3450 4900
F 0 "#PWR070" H 3450 4650 50  0001 C CNN
F 1 "GND" H 3450 4750 50  0000 C CNN
F 2 "" H 3450 4900 50  0001 C CNN
F 3 "" H 3450 4900 50  0001 C CNN
	1    3450 4900
	1    0    0    -1  
$EndComp
Text HLabel 5350 1900 0    60   Input ~ 0
FAN_POWER
Text HLabel 4250 3300 0    60   Input ~ 0
FAN_CONTROL
Text HLabel 4650 4500 2    60   Output ~ 0
TEMP_SENSE
$Comp
L Q_NPN_Darlington_BCEC Q3
U 1 1 60715B68
P 5450 3300
F 0 "Q3" H 5670 3350 50  0000 L CNN
F 1 "BSP52T3G" H 5670 3250 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 5650 3400 50  0001 C CNN
F 3 "" H 5450 3300 50  0001 C CNN
F 4 "863-BSP52T3G" H 5450 3300 60  0001 C CNN "Mouser Part Number"
	1    5450 3300
	1    0    0    -1  
$EndComp
$Comp
L D D9
U 1 1 60715FC4
P 6100 3300
F 0 "D9" H 6100 3400 50  0000 C CNN
F 1 "1SS352H3F" H 6100 3200 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323" H 6100 3300 50  0001 C CNN
F 3 "" H 6100 3300 50  0001 C CNN
F 4 "757-1SS352H3F" H 6100 3300 60  0001 C CNN "Mouser Part Number"
	1    6100 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 3500 5550 3750
Wire Wire Line
	5250 3300 4750 3300
Wire Wire Line
	5600 2700 5550 2700
Wire Wire Line
	5550 2700 5550 3100
Wire Wire Line
	5550 1900 5550 2600
Wire Wire Line
	5550 2600 5600 2600
Wire Wire Line
	4250 3300 4450 3300
Wire Wire Line
	5350 1900 5550 1900
Wire Wire Line
	3450 3850 3450 4100
Wire Wire Line
	5550 3100 6100 3100
Wire Wire Line
	6100 3100 6100 3150
Connection ~ 5650 3100
Wire Wire Line
	5550 3500 6100 3500
Wire Wire Line
	6100 3500 6100 3450
$Comp
L Fan_IEC60617 M1
U 1 1 60750662
P 7950 2900
F 0 "M1" H 8100 3050 50  0000 L CNN
F 1 "Fan_IEC60617" H 8100 3000 50  0000 L TNN
F 2 "FAN:25mmFanMount" H 8000 2760 50  0001 L CNN
F 3 "" H 7950 2910 50  0001 C CNN
	1    7950 2900
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C34
U 1 1 60770F04
P 2300 4350
F 0 "C34" H 2310 4420 50  0000 L CNN
F 1 "100 uf" H 2310 4270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2300 4350 50  0001 C CNN
F 3 "" H 2300 4350 50  0001 C CNN
F 4 "603-CC603KPX7R9BB104" H 2300 4350 60  0001 C CNN "Mouser Part Number"
	1    2300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4250 2300 4000
Wire Wire Line
	2300 4000 3450 4000
Connection ~ 3450 4000
Wire Wire Line
	2300 4450 2300 4800
Wire Wire Line
	2300 4800 4450 4800
Connection ~ 3450 4800
$Comp
L MCP9700T-E_LT U9
U 1 1 609C16C9
P 4350 4300
F 0 "U9" H 4900 4250 50  0000 L CNN
F 1 "MCP9700T-E_LT" H 5050 3950 50  0000 L CNN
F 2 "SOT65P210X110-5N" H 5300 4400 50  0001 L CNN
F 3 "" H 5300 4300 50  0001 L CNN
F 4 "Temperature sensor, -40 to +125 degC Microchip MCP9700T-E/LT Temperature Sensor 5-Pin SC-70, -40 ??? +125 degC" H 5300 4200 50  0001 L CNN "Description"
F 5 "1.1" H 5300 4100 50  0001 L CNN "Height"
F 6 "579-MCP9700T-E/LT" H 5300 4000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Microchip-Technology/MCP9700T-E-LT?qs=RnzODY3cU8tW7jSxAPzBuw%3D%3D" H 5300 3900 50  0001 L CNN "Mouser Price/Stock"
F 8 "Microchip" H 5300 3800 50  0001 L CNN "Manufacturer_Name"
F 9 "MCP9700T-E/LT" H 5300 3700 50  0001 L CNN "Manufacturer_Part_Number"
	1    4350 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3450 4100 3250 4100
Wire Wire Line
	3250 4100 3250 4300
Wire Wire Line
	3450 4900 3450 4800
Wire Wire Line
	4350 4400 4450 4400
Wire Wire Line
	4450 4400 4450 4800
NoConn ~ 4350 4300
NoConn ~ 3250 4400
Wire Wire Line
	4650 4500 4350 4500
$EndSCHEMATC
