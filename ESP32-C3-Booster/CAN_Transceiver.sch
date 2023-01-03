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
LIBS:USBLC6-2SC6
LIBS:sn65hvd233-ht
LIBS:lm2574n-5
LIBS:DRV8873HPWPR
LIBS:mcp9701at
LIBS:MCP9700T-E_LT
LIBS:ina180b
LIBS:mechanical
LIBS:esp32-c3-wroom-2
LIBS:gct_usb4105
LIBS:ESP32-C3-Booster-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title "Pocket Beagle DCC Command Station (SMD version)"
Date "2021-04-09"
Rev "A"
Comp "Deepwoods Software"
Comment1 "CAN Transceiver"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TCAN332DR U302
U 1 1 630A50A5
P 4600 2950
F 0 "U302" H 4600 2900 30  0000 C CNN
F 1 "TCAN332DR" H 4600 3000 30  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 4600 2950 60  0001 C CNN
F 3 "" H 4600 2950 60  0000 C CNN
F 4 "595-TCAN332DR" H 4600 2950 60  0001 C CNN "Mouser Part Number"
	1    4600 2950
	1    0    0    -1  
$EndComp
$Comp
L RJ45 J303
U 1 1 630A50A6
P 7900 3950
F 0 "J303" H 8100 4450 50  0000 C CNN
F 1 "RJ45" H 7750 4450 50  0000 C CNN
F 2 "RJ45-8N-S:RJ45_8N-S" H 7900 3950 50  0001 C CNN
F 3 "" H 7900 3950 50  0001 C CNN
F 4 "710-615008144221" H 7900 3950 60  0001 C CNN "Mouser Part Number"
	1    7900 3950
	0    1    1    0   
$EndComp
$Comp
L RJ45 J302
U 1 1 630A50A7
P 7900 2500
F 0 "J302" H 8100 3000 50  0000 C CNN
F 1 "RJ45" H 7750 3000 50  0000 C CNN
F 2 "RJ45-8N-S:RJ45_8N-S" H 7900 2500 50  0001 C CNN
F 3 "" H 7900 2500 50  0001 C CNN
F 4 "710-615008144221" H 7900 2500 60  0001 C CNN "Mouser Part Number"
	1    7900 2500
	0    1    1    0   
$EndComp
NoConn ~ 8250 3050
NoConn ~ 8250 4500
NoConn ~ 4350 3050
NoConn ~ 4350 3150
$Comp
L +3.3V #PWR020
U 1 1 630A50A8
P 4600 2450
F 0 "#PWR020" H 4600 2300 50  0001 C CNN
F 1 "+3.3V" H 4600 2590 50  0000 C CNN
F 2 "" H 4600 2450 50  0001 C CNN
F 3 "" H 4600 2450 50  0001 C CNN
	1    4600 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 630A50A9
P 4600 3500
F 0 "#PWR021" H 4600 3250 50  0001 C CNN
F 1 "GND" H 4600 3350 50  0000 C CNN
F 2 "" H 4600 3500 50  0001 C CNN
F 3 "" H 4600 3500 50  0001 C CNN
	1    4600 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 630A50AA
P 7400 3100
F 0 "#PWR022" H 7400 2850 50  0001 C CNN
F 1 "GND" H 7400 2950 50  0000 C CNN
F 2 "" H 7400 3100 50  0001 C CNN
F 3 "" H 7400 3100 50  0001 C CNN
	1    7400 3100
	1    0    0    -1  
$EndComp
$Comp
L C C301
U 1 1 630A50AB
P 5250 2450
F 0 "C301" H 5275 2550 50  0000 L CNN
F 1 "100 nf" H 5275 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5288 2300 50  0001 C CNN
F 3 "" H 5250 2450 50  0001 C CNN
F 4 "603-CC603KPX7R9BB104" H 5250 2450 60  0001 C CNN "Mouser Part Number"
	1    5250 2450
	1    0    0    -1  
$EndComp
$Comp
L CP1 C303
U 1 1 630A50AC
P 5600 2450
F 0 "C303" H 5625 2550 50  0000 L CNN
F 1 "15 uf 15V" H 5625 2350 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.8" H 5600 2450 50  0001 C CNN
F 3 "" H 5600 2450 50  0001 C CNN
F 4 "647-UUD1C150MCL" H 5600 2450 60  0001 C CNN "Mouser Part Number"
	1    5600 2450
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x02_Odd_Even J301
U 1 1 630A50AD
P 5500 3850
F 0 "J301" H 5550 3950 50  0000 C CNN
F 1 "Termination" H 5550 3650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x02_Pitch2.54mm" H 5500 3850 50  0001 C CNN
F 3 "" H 5500 3850 50  0001 C CNN
F 4 "538-90131-0122 " H 5500 3850 60  0001 C CNN "Mouser Part Number"
	1    5500 3850
	1    0    0    -1  
$EndComp
$Comp
L R R303
U 1 1 630A50AE
P 5300 3400
F 0 "R303" V 5380 3400 50  0000 C CNN
F 1 "60" V 5300 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5230 3400 50  0001 C CNN
F 3 "" H 5300 3400 50  0001 C CNN
F 4 "71-CRCW120660R0KNAIF" V 5300 3400 60  0001 C CNN "Mouser Part Number"
	1    5300 3400
	1    0    0    -1  
$EndComp
$Comp
L R R304
U 1 1 630A50AF
P 5800 3400
F 0 "R304" V 5880 3400 50  0000 C CNN
F 1 "60" V 5800 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5730 3400 50  0001 C CNN
F 3 "" H 5800 3400 50  0001 C CNN
F 4 "71-CRCW120660R0KNAIF " V 5800 3400 60  0001 C CNN "Mouser Part Number"
	1    5800 3400
	1    0    0    -1  
$EndComp
$Comp
L C C302
U 1 1 630A50B0
P 5550 4350
F 0 "C302" H 5575 4450 50  0000 L CNN
F 1 "47 nf" H 5575 4250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5588 4200 50  0001 C CNN
F 3 "" H 5550 4350 50  0001 C CNN
F 4 "963-GMK107BJ473KAHT" H 5550 4350 60  0001 C CNN "Mouser Part Number"
	1    5550 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 630A50B1
P 5550 4750
F 0 "#PWR023" H 5550 4500 50  0001 C CNN
F 1 "GND" H 5550 4600 50  0000 C CNN
F 2 "" H 5550 4750 50  0001 C CNN
F 3 "" H 5550 4750 50  0001 C CNN
	1    5550 4750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR024
U 1 1 630A50B2
P 5450 2150
F 0 "#PWR024" H 5450 2000 50  0001 C CNN
F 1 "+3.3V" H 5450 2290 50  0000 C CNN
F 2 "" H 5450 2150 50  0001 C CNN
F 3 "" H 5450 2150 50  0001 C CNN
	1    5450 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 630A50B3
P 5400 2600
F 0 "#PWR025" H 5400 2350 50  0001 C CNN
F 1 "GND" H 5400 2450 50  0000 C CNN
F 2 "" H 5400 2600 50  0001 C CNN
F 3 "" H 5400 2600 50  0001 C CNN
	1    5400 2600
	1    0    0    -1  
$EndComp
Text HLabel 2250 2700 0    60   Input ~ 0
CAN_TX
Text HLabel 2200 2850 0    60   Output ~ 0
CAN_RX
$Comp
L Screw_Terminal_01x02 T301
U 1 1 630A50B4
P 5750 1200
F 0 "T301" H 5750 1300 50  0000 C CNN
F 1 "LCC Power Out" H 5750 1000 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_2pol" H 5750 1200 50  0001 C CNN
F 3 "" H 5750 1200 50  0001 C CNN
F 4 "651-1725656" H 5750 1200 60  0001 C CNN "Mouser Part Number"
	1    5750 1200
	0    -1   -1   0   
$EndComp
$Comp
L Screw_Terminal_01x02 T302
U 1 1 630A50B5
P 6800 1200
F 0 "T302" H 6800 1300 50  0000 C CNN
F 1 "LCC Power In" H 6800 1000 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_2pol" H 6800 1200 50  0001 C CNN
F 3 "" H 6800 1200 50  0001 C CNN
F 4 "651-1725656" H 6800 1200 60  0001 C CNN "Mouser Part Number"
	1    6800 1200
	0    -1   -1   0   
$EndComp
$Comp
L D_Schottky D303
U 1 1 630A50B6
P 5900 1650
F 0 "D303" H 5900 1750 50  0000 C CNN
F 1 "DFLS240" H 5900 1550 50  0000 C CNN
F 2 "Diodes_SMD:D_PowerDI-123" H 5900 1650 50  0001 C CNN
F 3 "" H 5900 1650 50  0001 C CNN
F 4 "621-DFLS240-7" H 5900 1650 60  0001 C CNN "Mouser Part Number"
	1    5900 1650
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D304
U 1 1 630A50B7
P 6650 1650
F 0 "D304" H 6650 1750 50  0000 C CNN
F 1 "DFLS240" H 6650 1550 50  0000 C CNN
F 2 "Diodes_SMD:D_PowerDI-123" H 6650 1650 50  0001 C CNN
F 3 "" H 6650 1650 50  0001 C CNN
F 4 "621-DFLS240-7" H 6650 1650 60  0001 C CNN "Mouser Part Number"
	1    6650 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 630A50B8
P 6900 1800
F 0 "#PWR026" H 6900 1550 50  0001 C CNN
F 1 "GND" H 6900 1650 50  0000 C CNN
F 2 "" H 6900 1800 50  0001 C CNN
F 3 "" H 6900 1800 50  0001 C CNN
	1    6900 1800
	1    0    0    -1  
$EndComp
Text HLabel 6300 2450 0    60   BiDi ~ 0
ALT_L
Text HLabel 6300 2600 0    60   BiDi ~ 0
ALT_H
$Comp
L LM358 U301
U 2 1 630A50B9
P 3600 1950
F 0 "U301" H 3600 2150 50  0000 L CNN
F 1 "LM358" H 3600 1750 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 3600 1950 50  0001 C CNN
F 3 "" H 3600 1950 50  0001 C CNN
F 4 "595-LM358BIDR" H 3600 1950 60  0001 C CNN "Mouser Part Number"
	2    3600 1950
	1    0    0    1   
$EndComp
$Comp
L LM358 U301
U 1 1 630A50BA
P 3550 3400
F 0 "U301" H 3550 3600 50  0000 L CNN
F 1 "LM358" H 3550 3200 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 3550 3400 50  0001 C CNN
F 3 "" H 3550 3400 50  0001 C CNN
	1    3550 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 630A50BB
P 3450 3800
F 0 "#PWR027" H 3450 3550 50  0001 C CNN
F 1 "GND" H 3450 3650 50  0000 C CNN
F 2 "" H 3450 3800 50  0001 C CNN
F 3 "" H 3450 3800 50  0001 C CNN
	1    3450 3800
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR028
U 1 1 630A50BC
P 3450 3050
F 0 "#PWR028" H 3450 2900 50  0001 C CNN
F 1 "+3.3V" H 3450 3190 50  0000 C CNN
F 2 "" H 3450 3050 50  0001 C CNN
F 3 "" H 3450 3050 50  0001 C CNN
	1    3450 3050
	1    0    0    -1  
$EndComp
$Comp
L R R301
U 1 1 630A50BD
P 4450 1500
F 0 "R301" H 4530 1500 50  0000 C CNN
F 1 "160" V 4450 1500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4380 1500 50  0001 C CNN
F 3 "" H 4450 1500 50  0001 C CNN
F 4 "603-AC0603JR-07160RL" H 4450 1500 60  0001 C CNN "Mouser Part Number"
	1    4450 1500
	0    1    1    0   
$EndComp
$Comp
L R R302
U 1 1 630A50BE
P 4500 3800
F 0 "R302" V 4580 3800 50  0000 C CNN
F 1 "160" V 4500 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4430 3800 50  0001 C CNN
F 3 "" H 4500 3800 50  0001 C CNN
F 4 "603-AC0603JR-07160RL" V 4500 3800 60  0001 C CNN "Mouser Part Number"
	1    4500 3800
	0    1    1    0   
$EndComp
$Comp
L LED D301
U 1 1 630A50BF
P 4750 1250
F 0 "D301" H 4750 1350 50  0000 C CNN
F 1 "Tx" H 4750 1150 50  0000 C CNN
F 2 "LEDs:LED_0603" H 4750 1250 50  0001 C CNN
F 3 "" H 4750 1250 50  0001 C CNN
F 4 "710-150060SS75000" H 4750 1250 60  0001 C CNN "Mouser Part Number"
	1    4750 1250
	0    -1   -1   0   
$EndComp
$Comp
L LED D302
U 1 1 630A50C0
P 4900 3600
F 0 "D302" H 4900 3700 50  0000 C CNN
F 1 "Rx" H 4900 3500 50  0000 C CNN
F 2 "LEDs:LED_0603" H 4900 3600 50  0001 C CNN
F 3 "" H 4900 3600 50  0001 C CNN
F 4 "710-150060YS75000" H 4900 3600 60  0001 C CNN "Mouser Part Number"
	1    4900 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7100 3600 7450 3600
Wire Wire Line
	7100 2150 7100 3600
Wire Wire Line
	7100 2150 7450 2150
Wire Wire Line
	7050 3700 7450 3700
Wire Wire Line
	7050 2250 7050 3700
Wire Wire Line
	7050 2250 7450 2250
Wire Wire Line
	7450 3800 7000 3800
Wire Wire Line
	7000 3800 7000 2350
Wire Wire Line
	7000 2350 7450 2350
Wire Wire Line
	7450 3900 6950 3900
Wire Wire Line
	6950 3900 6950 2450
Wire Wire Line
	6300 2450 7450 2450
Wire Wire Line
	6900 4000 7450 4000
Wire Wire Line
	6900 2550 6900 4000
Wire Wire Line
	6900 2550 7450 2550
Wire Wire Line
	7450 4100 6850 4100
Wire Wire Line
	6850 4100 6850 2650
Wire Wire Line
	6850 2650 7450 2650
Wire Wire Line
	7450 4200 6750 4200
Wire Wire Line
	6750 4200 6750 2750
Wire Wire Line
	6750 2750 7450 2750
Wire Wire Line
	6650 4300 7450 4300
Wire Wire Line
	6650 4300 6650 2850
Wire Wire Line
	6350 2850 7450 2850
Wire Wire Line
	4850 3100 7100 3100
Connection ~ 7100 3100
Wire Wire Line
	4850 2800 7050 2800
Connection ~ 7050 2800
Wire Wire Line
	7400 2350 7400 3100
Connection ~ 7400 2750
Connection ~ 7400 2650
Connection ~ 7400 2350
Wire Wire Line
	4600 3300 4600 3500
Wire Wire Line
	5300 3250 5300 2800
Connection ~ 5300 2800
Wire Wire Line
	5800 3250 5800 3100
Connection ~ 5800 3100
Wire Wire Line
	5300 3550 5300 3850
Wire Wire Line
	5800 3550 5800 3850
Wire Wire Line
	5300 3950 5300 4100
Wire Wire Line
	5300 4100 5800 4100
Wire Wire Line
	5800 4100 5800 3950
Wire Wire Line
	5550 4200 5550 4100
Connection ~ 5550 4100
Wire Wire Line
	5550 4750 5550 4500
Wire Wire Line
	5250 2600 5600 2600
Connection ~ 5400 2600
Wire Wire Line
	5250 2300 5600 2300
Wire Wire Line
	5450 2150 5450 2300
Connection ~ 5450 2300
Wire Wire Line
	2250 2700 4350 2700
Wire Wire Line
	4350 2700 4350 2750
Wire Wire Line
	2200 2850 4350 2850
Wire Wire Line
	6800 1400 6800 1650
Wire Wire Line
	6050 1650 6500 1650
Wire Wire Line
	5750 1650 5750 1400
Wire Wire Line
	6350 2850 6350 1650
Wire Wire Line
	6350 1650 6250 1650
Connection ~ 6250 1650
Connection ~ 6650 2850
Wire Wire Line
	5850 1400 5850 1500
Wire Wire Line
	5850 1500 6900 1500
Wire Wire Line
	6900 1400 6900 1800
Connection ~ 6900 1500
Connection ~ 6950 2450
Wire Wire Line
	6300 2600 6900 2600
Connection ~ 6900 2600
Wire Wire Line
	3250 3300 2950 3300
Wire Wire Line
	2950 3300 2950 2850
Connection ~ 2950 2850
Wire Wire Line
	3300 2050 2950 2050
Wire Wire Line
	2950 2050 2950 2700
Connection ~ 2950 2700
Wire Wire Line
	3250 3500 3000 3500
Wire Wire Line
	3000 3500 3000 3900
Wire Wire Line
	3000 3900 4200 3900
Wire Wire Line
	4200 3900 4200 3400
Wire Wire Line
	4200 3400 3850 3400
Wire Wire Line
	3300 1850 2950 1850
Wire Wire Line
	2950 1850 2950 1400
Wire Wire Line
	2950 1400 4250 1400
Wire Wire Line
	4250 1400 4250 1950
Wire Wire Line
	4250 1950 3900 1950
Wire Wire Line
	3450 3700 3450 3800
Wire Wire Line
	4300 1500 4250 1500
Connection ~ 4250 1500
Wire Wire Line
	4350 3800 4200 3800
Connection ~ 4200 3800
Wire Wire Line
	4750 1400 4750 1500
Wire Wire Line
	4750 1500 4600 1500
Wire Wire Line
	4900 3750 4900 3800
Wire Wire Line
	4900 3800 4650 3800
$Comp
L +3.3V #PWR029
U 1 1 630A50C1
P 4750 950
F 0 "#PWR029" H 4750 800 50  0001 C CNN
F 1 "+3.3V" H 4750 1090 50  0000 C CNN
F 2 "" H 4750 950 50  0001 C CNN
F 3 "" H 4750 950 50  0001 C CNN
	1    4750 950 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR030
U 1 1 630A50C2
P 4900 3350
F 0 "#PWR030" H 4900 3200 50  0001 C CNN
F 1 "+3.3V" H 4900 3490 50  0000 C CNN
F 2 "" H 4900 3350 50  0001 C CNN
F 3 "" H 4900 3350 50  0001 C CNN
	1    4900 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3350 4900 3450
Wire Wire Line
	4750 950  4750 1100
Wire Wire Line
	3450 3050 3450 3100
Wire Wire Line
	4600 2450 4600 2600
$EndSCHEMATC
