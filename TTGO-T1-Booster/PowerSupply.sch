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
LIBS:sn65hvd233-ht
LIBS:lm2574n-5
LIBS:MCP9700T-E_LT
LIBS:DRV8873HPWPR
LIBS:ina180b
LIBS:esp32_devboards
LIBS:TTGO-T1-Booster-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 4 6
Title "ESP32 S3 Multifunction Board"
Date ""
Rev "1.0"
Comp "Deepwoods Software"
Comment1 "Power Supply"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LM2574HVM-5.0 U401
U 1 1 632C8425
P 5200 2800
F 0 "U401" H 5200 2850 60  0000 C CNN
F 1 "LM2574N-5.0" H 5200 2950 21  0000 C CNN
F 2 "SOIC_Wide:SOIC-14_7.4x8.7mm_Pitch1.27mm" H 5200 2800 60  0001 C CNN
F 3 "~" H 5200 2800 60  0000 C CNN
F 4 "926-LM2574MX-5.0NOPB" H 5200 2800 60  0001 C CNN "Mouser Part Number"
	1    5200 2800
	1    0    0    -1  
$EndComp
$Comp
L CP1 C402
U 1 1 632C8426
P 5950 2900
F 0 "C402" H 6000 3000 50  0000 L CNN
F 1 "22 uf 100V" H 6000 2800 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_8x10" H 5950 2900 60  0001 C CNN
F 3 "~" H 5950 2900 60  0000 C CNN
F 4 "647-UUX2A220MNL6GS" H 5950 2900 60  0001 C CNN "Mouser Part Number"
	1    5950 2900
	1    0    0    -1  
$EndComp
$Comp
L CP1 C401
U 1 1 632C8427
P 3700 2800
F 0 "C401" H 3750 2900 50  0000 L CNN
F 1 "220 uf 25V" H 3750 2700 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_8x10" H 3700 2800 60  0001 C CNN
F 3 "~" H 3700 2800 60  0000 C CNN
F 4 "647-UWT1E221MNL1GS" H 3700 2800 60  0001 C CNN "Mouser Part Number"
	1    3700 2800
	1    0    0    -1  
$EndComp
$Comp
L L_Small L401
U 1 1 632C8428
P 4550 2900
F 0 "L401" H 4550 3000 50  0000 C CNN
F 1 "330 uh" H 4550 2850 50  0000 C CNN
F 2 "SRN1060:SRN1060" H 4550 2900 60  0001 C CNN
F 3 "~" H 4550 2900 60  0000 C CNN
F 4 "652-SRN1060-331M" H 4550 2900 60  0001 C CNN "Mouser Part Number"
	1    4550 2900
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D401
U 1 1 632C8429
P 4850 3100
F 0 "D401" H 4850 3200 40  0000 C CNN
F 1 "CMSH1-60 TR13" H 4850 3000 40  0000 C CNN
F 2 "Diodes_SMD:D_SMB" H 4850 3100 60  0001 C CNN
F 3 "~" H 4850 3100 60  0000 C CNN
F 4 "610-CMSH1-60TR13" H 4850 3100 60  0001 C CNN "Mouser Part Number"
	1    4850 3100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR020
U 1 1 632C842A
P 4850 3400
F 0 "#PWR020" H 4850 3400 30  0001 C CNN
F 1 "GND" H 4850 3330 30  0001 C CNN
F 2 "" H 4850 3400 60  0000 C CNN
F 3 "" H 4850 3400 60  0000 C CNN
	1    4850 3400
	1    0    0    -1  
$EndComp
NoConn ~ 5500 2900
NoConn ~ 5500 2800
NoConn ~ 5350 2450
NoConn ~ 5300 2450
NoConn ~ 5250 2450
NoConn ~ 5200 2450
NoConn ~ 5150 2450
NoConn ~ 5100 2450
$Comp
L +5V #PWR021
U 1 1 632C842B
P 3700 2450
F 0 "#PWR021" H 3700 2300 50  0001 C CNN
F 1 "+5V" H 3700 2590 50  0000 C CNN
F 2 "" H 3700 2450 50  0001 C CNN
F 3 "" H 3700 2450 50  0001 C CNN
	1    3700 2450
	1    0    0    -1  
$EndComp
Text HLabel 6275 2275 0    60   Input ~ 0
PowerInput
$Comp
L LF120_TO220 U402
U 1 1 63B5F061
P 6900 2500
F 0 "U402" H 6750 2625 50  0000 C CNN
F 1 "LF120_TO220" H 6900 2625 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TO-252-2" H 6900 2725 50  0001 C CIN
F 3 "" H 6900 2450 50  0001 C CNN
F 4 "511-LF120ABDT-TR" H 6900 2500 60  0001 C CNN "Mouser Part Number"
	1    6900 2500
	1    0    0    -1  
$EndComp
Text HLabel 7525 2500 2    60   Output ~ 0
12V
$Comp
L GND #PWR022
U 1 1 63B5F114
P 6900 2925
F 0 "#PWR022" H 6900 2675 50  0001 C CNN
F 1 "GND" H 6900 2775 50  0000 C CNN
F 2 "" H 6900 2925 50  0001 C CNN
F 3 "" H 6900 2925 50  0001 C CNN
	1    6900 2925
	1    0    0    -1  
$EndComp
$Comp
L C C403
U 1 1 63B5F156
P 6450 2700
F 0 "C403" H 6475 2800 50  0000 L CNN
F 1 "10 nf" H 6475 2600 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6488 2550 50  0001 C CNN
F 3 "" H 6450 2700 50  0001 C CNN
F 4 "791-1206B103K500CT" H 6450 2700 60  0001 C CNN "Mouser Part Number"
	1    6450 2700
	1    0    0    -1  
$EndComp
$Comp
L CP1 C404
U 1 1 63B5F271
P 7375 2700
F 0 "C404" H 7400 2800 50  0000 L CNN
F 1 "10 uf" H 7400 2600 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_5x5.3" H 7375 2700 50  0001 C CNN
F 3 "" H 7375 2700 50  0001 C CNN
F 4 "710-865230542002" H 7375 2700 60  0001 C CNN "Mouser Part Number"
	1    7375 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2700 5950 2700
Wire Wire Line
	3700 2600 4900 2600
Wire Wire Line
	4300 2900 4300 2600
Connection ~ 4300 2600
Wire Wire Line
	4650 2900 4900 2900
Connection ~ 4850 2900
Wire Wire Line
	5950 3150 5950 3050
Wire Wire Line
	5150 3150 5950 3150
Connection ~ 5350 3150
Connection ~ 5250 3150
Wire Wire Line
	5150 3300 5150 3150
Wire Wire Line
	3700 3300 5150 3300
Wire Wire Line
	3700 3300 3700 2950
Connection ~ 4850 3300
Wire Wire Line
	3700 2450 3700 2650
Wire Wire Line
	4850 3250 4850 3400
Connection ~ 3700 2600
Wire Wire Line
	4450 2900 4300 2900
Wire Wire Line
	4850 2950 4850 2900
Connection ~ 5950 2700
Wire Wire Line
	5950 2500 5950 2750
Wire Wire Line
	5950 2500 6600 2500
Wire Wire Line
	6275 2275 6300 2275
Wire Wire Line
	6300 2275 6300 2500
Connection ~ 6300 2500
Wire Wire Line
	7200 2500 7525 2500
Wire Wire Line
	6900 2800 6900 2925
Wire Wire Line
	6450 2550 6450 2500
Connection ~ 6450 2500
Wire Wire Line
	6450 2850 7375 2850
Connection ~ 6900 2850
Wire Wire Line
	7375 2550 7375 2500
Connection ~ 7375 2500
$EndSCHEMATC
