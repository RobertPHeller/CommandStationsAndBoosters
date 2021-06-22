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
Sheet 2 7
Title "Pocket Beagle Multifunction Board"
Date "3 mar 2019"
Rev ""
Comp "Deepwoods Software"
Comment1 "CAN Transceiver"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TCAN332DR U1
U 1 1 5C828C17
P 4100 3400
F 0 "U1" H 4100 3350 30  0000 C CNN
F 1 "TCAN332DR" H 4100 3450 30  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 4100 3400 60  0001 C CNN
F 3 "~" H 4100 3400 60  0000 C CNN
F 4 "595-TCAN332DR" H 4100 3400 60  0001 C CNN "Mouser Part Number"
	1    4100 3400
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR05
U 1 1 5C828C94
P 4100 2900
F 0 "#PWR05" H 4100 3000 40  0001 C CNN
F 1 "+3V3" H 4100 3025 40  0000 C CNN
F 2 "" H 4100 2900 60  0000 C CNN
F 3 "" H 4100 2900 60  0000 C CNN
	1    4100 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5C828CBC
P 4100 3800
F 0 "#PWR06" H 4100 3800 30  0001 C CNN
F 1 "GND" H 4100 3730 30  0001 C CNN
F 2 "" H 4100 3800 60  0000 C CNN
F 3 "" H 4100 3800 60  0000 C CNN
	1    4100 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2900 4100 3050
Wire Wire Line
	4100 3750 4100 3800
Wire Wire Line
	4100 4900 4100 4950
Wire Wire Line
	4650 4900 4100 4900
Text HLabel 3600 4300 0    25   Input ~ 0
CAN_TX
Text HLabel 3600 4400 0    25   Input ~ 0
CAN_RX
Wire Wire Line
	3850 3200 3800 3200
Wire Wire Line
	3800 3200 3800 4300
Wire Wire Line
	3850 3300 3750 3300
Wire Wire Line
	3750 3300 3750 4400
$Comp
L C C1
U 1 1 5C828DA1
P 4650 3800
AR Path="/5C828DA1" Ref="C1"  Part="1" 
AR Path="/5C828AE5/5C828DA1" Ref="C1"  Part="1" 
AR Path="/60CCDA7F/5C828DA1" Ref="C1"  Part="1" 
F 0 "C1" H 4650 3900 40  0000 L CNN
F 1 ".1 uf" H 4656 3715 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4688 3650 30  0001 C CNN
F 3 "~" H 4650 3800 60  0000 C CNN
F 4 "710-885012206095" H 4650 3800 60  0001 C CNN "Mouser Part Number"
	1    4650 3800
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2
U 1 1 5C828DB0
P 5000 3800
F 0 "C2" H 5050 3900 50  0000 L CNN
F 1 "15 uf 15V" H 5050 3700 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.7" H 5000 3800 60  0001 C CNN
F 3 "~" H 5000 3800 60  0000 C CNN
F 4 "647-UUD1C150MCL" H 5000 3800 60  0001 C CNN "Mouser Part Number"
	1    5000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3000 4650 3000
Wire Wire Line
	4650 3000 4650 3650
Connection ~ 4100 3000
Wire Wire Line
	4650 3600 5000 3600
Wire Wire Line
	5000 4000 4650 4000
Wire Wire Line
	4650 3950 4650 4900
Wire Wire Line
	4350 3250 7750 3250
Wire Wire Line
	4350 3550 4450 3550
Wire Wire Line
	4450 3550 4450 3100
Wire Wire Line
	4450 3100 7800 3100
Text Label 5400 3100 0    25   ~ 0
CANH
Text Label 5400 3250 0    25   ~ 0
CANL
$Comp
L R R1
U 1 1 5C828F93
P 5850 3650
F 0 "R1" V 5930 3650 40  0000 C CNN
F 1 "60 Ohms" V 5857 3651 40  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5780 3650 30  0001 C CNN
F 3 "~" H 5850 3650 30  0000 C CNN
F 4 "71-CRCW120660R0KNAIF" H 5850 3650 60  0001 C CNN "Mouser Part Number"
	1    5850 3650
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5C828FA2
P 6550 3650
F 0 "R2" V 6630 3650 40  0000 C CNN
F 1 "60 Ohms" V 6557 3651 40  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6480 3650 30  0001 C CNN
F 3 "~" H 6550 3650 30  0000 C CNN
F 4 "71-CRCW120660R0KNAIF" H 6550 3650 60  0001 C CNN "Mouser Part Number"
	1    6550 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3100 5850 3500
Connection ~ 5850 3100
Wire Wire Line
	6550 3250 6550 3500
$Comp
L Conn_02x02_Odd_Even JP1
U 1 1 5C829002
P 6200 4200
F 0 "JP1" H 6200 4350 50  0000 C CNN
F 1 "Termination" H 6210 4070 40  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x02_Pitch2.54mm" H 6200 4200 60  0001 C CNN
F 3 "" H 6200 4200 60  0000 C CNN
F 4 "649-67997-404HLF" H 6200 4200 60  0001 C CNN "Mouser Part Number"
	1    6200 4200
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5C8290C3
P 6200 4750
AR Path="/5C8290C3" Ref="C3"  Part="1" 
AR Path="/5C828AE5/5C8290C3" Ref="C3"  Part="1" 
AR Path="/60CCDA7F/5C8290C3" Ref="C3"  Part="1" 
F 0 "C3" H 6200 4850 40  0000 L CNN
F 1 "47 nf" H 6206 4665 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6238 4600 30  0001 C CNN
F 3 "~" H 6200 4750 60  0000 C CNN
F 4 "710-885012206093" H 6200 4750 60  0001 C CNN "Mouser Part Number"
	1    6200 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5C8290D2
P 6200 5100
F 0 "#PWR07" H 6200 5100 30  0001 C CNN
F 1 "GND" H 6200 5030 30  0001 C CNN
F 2 "" H 6200 5100 60  0000 C CNN
F 3 "" H 6200 5100 60  0000 C CNN
	1    6200 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4450 6200 4600
Connection ~ 6200 4450
Wire Wire Line
	6200 4900 6200 5100
$Comp
L RJ45 J2
U 1 1 5C829171
P 8350 4700
F 0 "J2" H 8550 5200 60  0000 C CNN
F 1 "RJ45" H 8200 5200 60  0000 C CNN
F 2 "RJ45-8N-S:RJ45_8N-S" H 8350 4700 60  0001 C CNN
F 3 "" H 8350 4700 60  0000 C CNN
F 4 "710-615008144221" H 8350 4700 60  0001 C CNN "Mouser Part Number"
	1    8350 4700
	0    1    1    0   
$EndComp
$Comp
L RJ45 J1
U 1 1 5C829180
P 8350 3050
F 0 "J1" H 8550 3550 60  0000 C CNN
F 1 "RJ45" H 8200 3550 60  0000 C CNN
F 2 "RJ45-8N-S:RJ45_8N-S" H 8350 3050 60  0001 C CNN
F 3 "" H 8350 3050 60  0000 C CNN
F 4 "710-615008144221" H 8350 3050 60  0001 C CNN "Mouser Part Number"
	1    8350 3050
	0    1    1    0   
$EndComp
NoConn ~ 8700 3600
NoConn ~ 8700 5250
Wire Wire Line
	7800 2700 7800 4350
Wire Wire Line
	7800 2700 7900 2700
Wire Wire Line
	7800 4350 7900 4350
Connection ~ 7800 3100
Wire Wire Line
	7900 2800 7750 2800
Wire Wire Line
	7750 2800 7750 4450
Wire Wire Line
	7750 4450 7900 4450
Connection ~ 7750 3250
Connection ~ 6550 3250
Wire Wire Line
	7500 2900 7900 2900
Wire Wire Line
	7700 2900 7700 4550
Wire Wire Line
	7700 4550 7900 4550
Wire Wire Line
	7900 4650 7650 4650
Wire Wire Line
	7650 4650 7650 3000
Wire Wire Line
	7650 3000 7900 3000
Wire Wire Line
	7900 3100 7900 3150
Wire Wire Line
	7900 3150 7600 3150
Wire Wire Line
	7600 3150 7600 4750
Wire Wire Line
	7600 4750 7900 4750
Wire Wire Line
	7900 3200 7550 3200
Wire Wire Line
	7550 2900 7550 4850
Wire Wire Line
	7550 4850 7900 4850
Wire Wire Line
	7500 3300 7900 3300
Wire Wire Line
	7500 2900 7500 4950
Wire Wire Line
	7500 4950 7900 4950
Wire Wire Line
	7450 5050 7900 5050
Wire Wire Line
	7450 3400 7900 3400
Connection ~ 7700 2900
Connection ~ 7550 3200
Connection ~ 7550 2900
Connection ~ 7500 3300
$Comp
L Screw_Terminal_01x02 T2
U 1 1 5C829479
P 6700 1950
F 0 "T2" V 6650 1950 40  0000 C CNN
F 1 "- 15 out +" V 6750 1950 40  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_2pol" H 6700 1950 60  0001 C CNN
F 3 "" H 6700 1950 60  0000 C CNN
F 4 "651-1725656" H 6700 1950 60  0001 C CNN "Mouser Part Number"
	1    6700 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2050 6450 2950
Wire Wire Line
	6450 2950 7500 2950
Connection ~ 7450 3400
Connection ~ 7500 2950
$Comp
L D_Schottky D2
U 1 1 5C829535
P 6100 1950
F 0 "D2" H 6100 2050 40  0000 C CNN
F 1 "DFLS240-7" H 6100 1850 40  0000 C CNN
F 2 "Diodes_SMD:D_SMB" H 6100 1950 60  0001 C CNN
F 3 "~" H 6100 1950 60  0000 C CNN
F 4 "621-DFLS240-7" H 6100 1950 60  0001 C CNN "Mouser Part Number"
	1    6100 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 1950 5950 1950
Wire Wire Line
	5800 1950 5800 3000
Wire Wire Line
	5800 3000 7450 3000
Wire Wire Line
	7450 3000 7450 5050
$Comp
L GND #PWR08
U 1 1 5C8295F7
P 6750 2650
F 0 "#PWR08" H 6750 2650 30  0001 C CNN
F 1 "GND" H 6750 2580 30  0001 C CNN
F 2 "" H 6750 2650 60  0000 C CNN
F 3 "" H 6750 2650 60  0000 C CNN
	1    6750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2400 6750 2650
Wire Wire Line
	5900 2400 6750 2400
Connection ~ 6450 2400
$Comp
L Screw_Terminal_01x02 T1
U 1 1 5C82965E
P 5800 1100
F 0 "T1" V 5750 1100 40  0000 C CNN
F 1 "- 15 in +" V 5850 1100 40  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_2pol" H 5800 1100 60  0001 C CNN
F 3 "" H 5800 1100 60  0000 C CNN
F 4 "651-1725656" H 5800 1100 60  0001 C CNN "Mouser Part Number"
	1    5800 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 1400 5950 1850
Wire Wire Line
	5950 1850 5900 1850
Wire Wire Line
	5900 1850 5900 2400
$Comp
L D_Schottky D1
U 1 1 5C8297A7
P 5750 1700
F 0 "D1" H 5750 1800 40  0000 C CNN
F 1 "DFLS240-7" H 5750 1600 40  0000 C CNN
F 2 "Diodes_SMD:D_SMB" H 5750 1700 60  0001 C CNN
F 3 "~" H 5750 1700 60  0000 C CNN
F 4 "621-DFLS240-7" H 5750 1700 60  0001 C CNN "Mouser Part Number"
	1    5750 1700
	0    1    -1   0   
$EndComp
Wire Wire Line
	5750 1950 5750 1850
Connection ~ 5800 1950
Wire Wire Line
	5350 1800 5350 1950
Connection ~ 5750 1950
Text GLabel 5350 1800 0    100  Input ~ 0
CAN +12V
Wire Wire Line
	3800 4300 3600 4300
Wire Wire Line
	3750 4400 3600 4400
$Comp
L GND #PWR09
U 1 1 5C828CCB
P 4100 4950
F 0 "#PWR09" H 4100 4950 30  0001 C CNN
F 1 "GND" H 4100 4880 30  0001 C CNN
F 2 "" H 4100 4950 60  0000 C CNN
F 3 "" H 4100 4950 60  0000 C CNN
	1    4100 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1300 5750 1300
Wire Wire Line
	5750 1300 5750 1550
Wire Wire Line
	6500 1950 6250 1950
Wire Wire Line
	5900 1300 5900 1400
Wire Wire Line
	5900 1400 5950 1400
Wire Wire Line
	6500 2050 6450 2050
Wire Wire Line
	5000 3600 5000 3650
Connection ~ 4650 3600
Wire Wire Line
	5000 3950 5000 4000
Connection ~ 4650 4000
Wire Wire Line
	5850 3800 5850 4200
Wire Wire Line
	5850 4200 6000 4200
Wire Wire Line
	6550 3800 6550 4200
Wire Wire Line
	6550 4200 6500 4200
Wire Wire Line
	6500 4300 6500 4450
Wire Wire Line
	6500 4450 5950 4450
Wire Wire Line
	5950 4450 5950 4300
Wire Wire Line
	5950 4300 6000 4300
NoConn ~ 3850 3500
NoConn ~ 3850 3600
$EndSCHEMATC
