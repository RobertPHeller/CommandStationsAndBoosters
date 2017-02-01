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
LIBS:MCPtemp
LIBS:QuadSSSQuadIn-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "1 feb 2017"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RPi_GPIO J0
U 1 1 5516AE26
P 1800 2650
F 0 "J0" H 2550 2900 60  0000 C CNN
F 1 "RPi_GPIO" H 2550 2800 60  0000 C CNN
F 2 "RPi_Hat:Pin_Header_Straight_2x20" H 1800 2650 60  0001 C CNN
F 3 "" H 1800 2650 60  0000 C CNN
	1    1800 2650
	1    0    0    -1  
$EndComp
$Comp
L MCP23008 U1
U 1 1 5890FF83
P 5900 3000
F 0 "U1" H 5900 3200 60  0000 C CNN
F 1 "MCP23008" H 5850 3000 60  0000 C CNN
F 2 "DIP-18__300" H 5900 3000 60  0001 C CNN
F 3 "~" H 5900 3000 60  0000 C CNN
F 4 "579-MCP23008-E/P " H 5900 3000 60  0001 C CNN "Mouser Part Number"
	1    5900 3000
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR01
U 1 1 589100BD
P 1500 2650
F 0 "#PWR01" H 1500 2750 30  0001 C CNN
F 1 "VDD" H 1500 2760 30  0000 C CNN
F 2 "" H 1500 2650 60  0000 C CNN
F 3 "" H 1500 2650 60  0000 C CNN
	1    1500 2650
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR02
U 1 1 589100CC
P 1500 3450
F 0 "#PWR02" H 1500 3550 30  0001 C CNN
F 1 "VDD" H 1500 3560 30  0000 C CNN
F 2 "" H 1500 3450 60  0000 C CNN
F 3 "" H 1500 3450 60  0000 C CNN
	1    1500 3450
	1    0    0    -1  
$EndComp
$Comp
<<<<<<< HEAD
L GND #PWR2
=======
L GND #PWR03
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
U 1 1 589100FE
P 1500 3050
F 0 "#PWR03" H 1500 3050 30  0001 C CNN
F 1 "GND" H 1500 2980 30  0001 C CNN
F 2 "" H 1500 3050 60  0000 C CNN
F 3 "" H 1500 3050 60  0000 C CNN
	1    1500 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 58910125
P 1500 3850
F 0 "#PWR04" H 1500 3850 30  0001 C CNN
F 1 "GND" H 1500 3780 30  0001 C CNN
F 2 "" H 1500 3850 60  0000 C CNN
F 3 "" H 1500 3850 60  0000 C CNN
	1    1500 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 58910134
P 1500 4550
F 0 "#PWR05" H 1500 4550 30  0001 C CNN
F 1 "GND" H 1500 4480 30  0001 C CNN
F 2 "" H 1500 4550 60  0000 C CNN
F 3 "" H 1500 4550 60  0000 C CNN
	1    1500 4550
	1    0    0    -1  
$EndComp
$Comp
<<<<<<< HEAD
L GND #PWR6
U 1 1 58910143
P 3650 2850
F 0 "#PWR6" H 3650 2850 30  0001 C CNN
=======
L GND #PWR06
U 1 1 58910143
P 3650 2850
F 0 "#PWR06" H 3650 2850 30  0001 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
F 1 "GND" H 3650 2780 30  0001 C CNN
F 2 "" H 3650 2850 60  0000 C CNN
F 3 "" H 3650 2850 60  0000 C CNN
	1    3650 2850
	1    0    0    -1  
$EndComp
$Comp
<<<<<<< HEAD
L GND #PWR7
U 1 1 58910152
P 3650 3250
F 0 "#PWR7" H 3650 3250 30  0001 C CNN
=======
L GND #PWR07
U 1 1 58910152
P 3650 3250
F 0 "#PWR07" H 3650 3250 30  0001 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
F 1 "GND" H 3650 3180 30  0001 C CNN
F 2 "" H 3650 3250 60  0000 C CNN
F 3 "" H 3650 3250 60  0000 C CNN
	1    3650 3250
	1    0    0    -1  
$EndComp
$Comp
<<<<<<< HEAD
L GND #PWR8
U 1 1 58910161
P 3650 3550
F 0 "#PWR8" H 3650 3550 30  0001 C CNN
=======
L GND #PWR08
U 1 1 58910161
P 3650 3550
F 0 "#PWR08" H 3650 3550 30  0001 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
F 1 "GND" H 3650 3480 30  0001 C CNN
F 2 "" H 3650 3550 60  0000 C CNN
F 3 "" H 3650 3550 60  0000 C CNN
	1    3650 3550
	1    0    0    -1  
$EndComp
$Comp
<<<<<<< HEAD
L GND #PWR9
U 1 1 58910170
P 3650 4050
F 0 "#PWR9" H 3650 4050 30  0001 C CNN
=======
L GND #PWR09
U 1 1 58910170
P 3650 4050
F 0 "#PWR09" H 3650 4050 30  0001 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
F 1 "GND" H 3650 3980 30  0001 C CNN
F 2 "" H 3650 4050 60  0000 C CNN
F 3 "" H 3650 4050 60  0000 C CNN
	1    3650 4050
	1    0    0    -1  
$EndComp
$Comp
<<<<<<< HEAD
L GND #PWR10
U 1 1 5891017F
P 3650 4250
F 0 "#PWR10" H 3650 4250 30  0001 C CNN
=======
L GND #PWR010
U 1 1 5891017F
P 3650 4250
F 0 "#PWR010" H 3650 4250 30  0001 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
F 1 "GND" H 3650 4180 30  0001 C CNN
F 2 "" H 3650 4250 60  0000 C CNN
F 3 "" H 3650 4250 60  0000 C CNN
	1    3650 4250
	1    0    0    -1  
$EndComp
$Comp
<<<<<<< HEAD
L GND #PWR14
U 1 1 5891018E
P 5900 4100
F 0 "#PWR14" H 5900 4100 30  0001 C CNN
=======
L GND #PWR011
U 1 1 5891018E
P 5900 4100
F 0 "#PWR011" H 5900 4100 30  0001 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
F 1 "GND" H 5900 4030 30  0001 C CNN
F 2 "" H 5900 4100 60  0000 C CNN
F 3 "" H 5900 4100 60  0000 C CNN
	1    5900 4100
	1    0    0    -1  
$EndComp
$Comp
<<<<<<< HEAD
L VDD #PWR13
U 1 1 5891019D
P 5900 2150
F 0 "#PWR13" H 5900 2250 30  0001 C CNN
=======
L VDD #PWR012
U 1 1 5891019D
P 5900 2150
F 0 "#PWR012" H 5900 2250 30  0001 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
F 1 "VDD" H 5900 2260 30  0000 C CNN
F 2 "" H 5900 2150 60  0000 C CNN
F 3 "" H 5900 2150 60  0000 C CNN
	1    5900 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2150 5900 2200
Wire Wire Line
	1600 2650 1500 2650
Wire Wire Line
	1600 3450 1500 3450
Wire Wire Line
	1600 3850 1500 3850
Wire Wire Line
	3500 2850 3650 2850
Wire Wire Line
	3500 3250 3650 3250
Wire Wire Line
	3500 4050 3650 4050
Wire Wire Line
	3500 4250 3650 4250
Wire Wire Line
	1600 4550 1500 4550
Wire Wire Line
	5150 2600 5150 2100
Wire Wire Line
	5150 2100 1200 2100
Wire Wire Line
	1200 2100 1200 2850
Wire Wire Line
	1200 2850 1600 2850
Wire Wire Line
	5150 2700 5000 2700
Wire Wire Line
	5000 2700 5000 2200
Wire Wire Line
	5000 2200 1300 2200
Wire Wire Line
	1300 2200 1300 2750
Wire Wire Line
	1300 2750 1600 2750
$Comp
L CONN_3X2 J1
U 1 1 589102CA
P 4450 2950
F 0 "J1" H 4450 3200 50  0000 C CNN
F 1 "CONN_3X2" V 4450 3000 40  0001 C CNN
F 2 "pin_adday_3x2" H 4450 2950 60  0001 C CNN
F 3 "~" H 4450 2950 60  0000 C CNN
F 4 "517-929836-02-03" H 4450 2950 60  0001 C CNN "Mouser Part Number"
	1    4450 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2800 5150 2800
Wire Wire Line
	4850 2900 5150 2900
Wire Wire Line
	4850 3000 5150 3000
$Comp
<<<<<<< HEAD
L GND #PWR11
U 1 1 5891042E
P 4000 3100
F 0 "#PWR11" H 4000 3100 30  0001 C CNN
=======
L GND #PWR013
U 1 1 5891042E
P 4000 3100
F 0 "#PWR013" H 4000 3100 30  0001 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
F 1 "GND" H 4000 3030 30  0001 C CNN
F 2 "" H 4000 3100 60  0000 C CNN
F 3 "" H 4000 3100 60  0000 C CNN
	1    4000 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2800 4000 2800
Wire Wire Line
	4000 2800 4000 3100
Wire Wire Line
	4050 2900 4000 2900
Connection ~ 4000 2900
Wire Wire Line
	4050 3000 4000 3000
Connection ~ 4000 3000
$Comp
L RR5 RR1
U 1 1 589105E8
P 4350 3900
F 0 "RR1" H 4400 4450 70  0000 C CNN
F 1 "10K Ohms" V 4400 4150 70  0000 C CNN
F 2 "SIP-5" H 4350 3900 60  0001 C CNN
F 3 "~" H 4350 3900 60  0000 C CNN
F 4 "652-4605X-1LF-10K" H 4350 3900 60  0001 C CNN "Mouser Part Number"
	1    4350 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3850 5100 3850
Wire Wire Line
	5100 3850 5100 3100
Wire Wire Line
	5100 3100 5150 3100
Wire Wire Line
	4750 3750 5050 3750
Wire Wire Line
	5050 3750 5050 3000
Wire Wire Line
	4750 3650 5000 3650
Wire Wire Line
	5000 3650 5000 2900
Connection ~ 5000 2900
Connection ~ 5050 3000
Wire Wire Line
	4750 3550 4950 3550
Wire Wire Line
	4950 3550 4950 2800
Connection ~ 4950 2800
$Comp
<<<<<<< HEAD
L VDD #PWR12
U 1 1 58910844
P 4750 3350
F 0 "#PWR12" H 4750 3450 30  0001 C CNN
=======
L VDD #PWR014
U 1 1 58910844
P 4750 3350
F 0 "#PWR014" H 4750 3450 30  0001 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
F 1 "VDD" H 4750 3460 30  0000 C CNN
F 2 "" H 4750 3350 60  0000 C CNN
F 3 "" H 4750 3350 60  0000 C CNN
	1    4750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3350 4750 3450
$Comp
L ASSR-4128 IC1
U 1 1 58913B07
P 7650 1950
F 0 "IC1" H 7460 2140 40  0000 C CNN
F 1 "ASSR-4128" H 7740 1760 40  0000 C CNN
<<<<<<< HEAD
F 2 "DIP-8__300" H 7450 1770 30  0001 C CIN
F 3 "~" H 7650 1950 60  0000 C CNN
F 4 "630-ASSR-4128-002E " H 7650 1950 60  0001 C CNN "Mouser Part Number"
=======
F 2 "DIP8" H 7450 1770 30  0001 C CIN
F 3 "~" H 7650 1950 60  0000 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
	1    7650 1950
	1    0    0    -1  
$EndComp
$Comp
L ASSR-4128 IC1
U 2 1 58913B16
P 7650 2350
F 0 "IC1" H 7460 2540 40  0000 C CNN
F 1 "ASSR-4128" H 7740 2160 40  0000 C CNN
F 2 "DIP8" H 7450 2170 30  0001 C CIN
F 3 "~" H 7650 2350 60  0000 C CNN
	2    7650 2350
	1    0    0    -1  
$EndComp
$Comp
L ASSR-4128 IC2
U 1 1 58913B3E
P 7650 2750
F 0 "IC2" H 7460 2940 40  0000 C CNN
F 1 "ASSR-4128" H 7740 2560 40  0000 C CNN
<<<<<<< HEAD
F 2 "DIP-8__300" H 7450 2570 30  0001 C CIN
F 3 "~" H 7650 2750 60  0000 C CNN
F 4 "630-ASSR-4128-002E " H 7650 2750 60  0001 C CNN "Mouser Part Number"
=======
F 2 "DIP8" H 7450 2570 30  0001 C CIN
F 3 "~" H 7650 2750 60  0000 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
	1    7650 2750
	1    0    0    -1  
$EndComp
$Comp
L ASSR-4128 IC2
U 2 1 58913B4D
P 7650 3150
F 0 "IC2" H 7460 3340 40  0000 C CNN
F 1 "ASSR-4128" H 7740 2960 40  0000 C CNN
F 2 "DIP8" H 7450 2970 30  0001 C CIN
F 3 "~" H 7650 3150 60  0000 C CNN
	2    7650 3150
	1    0    0    -1  
$EndComp
<<<<<<< HEAD
=======
$Comp
L R_PACK4 RP1
U 1 1 58913B67
P 6800 2950
F 0 "RP1" H 6800 3400 40  0000 C CNN
F 1 "R_PACK4" H 6800 2900 40  0000 C CNN
F 2 "~" H 6800 2950 60  0000 C CNN
F 3 "~" H 6800 2950 60  0000 C CNN
	1    6800 2950
	1    0    0    -1  
$EndComp
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
Wire Wire Line
	7000 2600 7000 1850
Wire Wire Line
	7000 1850 7300 1850
Wire Wire Line
	7000 2700 7050 2700
Wire Wire Line
	7050 2700 7050 2250
Wire Wire Line
	7050 2250 7300 2250
Wire Wire Line
	7000 2800 7100 2800
Wire Wire Line
	7100 2800 7100 2650
Wire Wire Line
	7100 2650 7300 2650
Wire Wire Line
	7000 2900 7050 2900
Wire Wire Line
	7050 2900 7050 3050
Wire Wire Line
	7050 3050 7300 3050
$Comp
<<<<<<< HEAD
L GND #PWR15
U 1 1 58913C48
P 7300 2100
F 0 "#PWR15" H 7300 2100 30  0001 C CNN
=======
L GND #PWR015
U 1 1 58913C48
P 7300 2100
F 0 "#PWR015" H 7300 2100 30  0001 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
F 1 "GND" H 7300 2030 30  0001 C CNN
F 2 "" H 7300 2100 60  0000 C CNN
F 3 "" H 7300 2100 60  0000 C CNN
	1    7300 2100
	1    0    0    -1  
$EndComp
$Comp
<<<<<<< HEAD
L GND #PWR16
U 1 1 58913C57
P 7300 2500
F 0 "#PWR16" H 7300 2500 30  0001 C CNN
=======
L GND #PWR016
U 1 1 58913C57
P 7300 2500
F 0 "#PWR016" H 7300 2500 30  0001 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
F 1 "GND" H 7300 2430 30  0001 C CNN
F 2 "" H 7300 2500 60  0000 C CNN
F 3 "" H 7300 2500 60  0000 C CNN
	1    7300 2500
	1    0    0    -1  
$EndComp
$Comp
<<<<<<< HEAD
L GND #PWR17
U 1 1 58913C66
P 7300 2900
F 0 "#PWR17" H 7300 2900 30  0001 C CNN
=======
L GND #PWR017
U 1 1 58913C66
P 7300 2900
F 0 "#PWR017" H 7300 2900 30  0001 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
F 1 "GND" H 7300 2830 30  0001 C CNN
F 2 "" H 7300 2900 60  0000 C CNN
F 3 "" H 7300 2900 60  0000 C CNN
	1    7300 2900
	1    0    0    -1  
$EndComp
$Comp
<<<<<<< HEAD
L GND #PWR18
U 1 1 58913C75
P 7300 3300
F 0 "#PWR18" H 7300 3300 30  0001 C CNN
=======
L GND #PWR018
U 1 1 58913C75
P 7300 3300
F 0 "#PWR018" H 7300 3300 30  0001 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
F 1 "GND" H 7300 3230 30  0001 C CNN
F 2 "" H 7300 3300 60  0000 C CNN
F 3 "" H 7300 3300 60  0000 C CNN
	1    7300 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2450 7300 2500
Wire Wire Line
	7300 3250 7300 3300
$Comp
L 74AHC132 U2
U 1 1 589147C8
P 7650 3900
F 0 "U2" H 7650 4000 60  0000 C CNN
F 1 "74AHC132" H 7650 3800 60  0000 C CNN
<<<<<<< HEAD
F 2 "DIP-14__300" H 7650 3900 60  0000 C CNN
F 3 "~" H 7650 3900 60  0000 C CNN
F 4 "595-SN74AHC132N" H 7650 3900 60  0001 C CNN "Mouser Part Number"
=======
F 2 "~" H 7650 3900 60  0000 C CNN
F 3 "~" H 7650 3900 60  0000 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
	1    7650 3900
	-1   0    0    -1  
$EndComp
$Comp
L 74AHC132 U2
U 2 1 589147D7
P 7700 4500
F 0 "U2" H 7700 4600 60  0000 C CNN
F 1 "74AHC132" H 7700 4400 60  0000 C CNN
F 2 "~" H 7700 4500 60  0000 C CNN
F 3 "~" H 7700 4500 60  0000 C CNN
	2    7700 4500
	-1   0    0    -1  
$EndComp
$Comp
L 74AHC132 U2
U 3 1 589147EB
P 7750 5150
F 0 "U2" H 7750 5250 60  0000 C CNN
F 1 "74AHC132" H 7750 5050 60  0000 C CNN
F 2 "~" H 7750 5150 60  0000 C CNN
F 3 "~" H 7750 5150 60  0000 C CNN
	3    7750 5150
	-1   0    0    -1  
$EndComp
$Comp
L 74AHC132 U2
U 4 1 589147FF
P 7750 5750
F 0 "U2" H 7750 5850 60  0000 C CNN
F 1 "74AHC132" H 7750 5650 60  0000 C CNN
F 2 "~" H 7750 5750 60  0000 C CNN
F 3 "~" H 7750 5750 60  0000 C CNN
	4    7750 5750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7050 3900 6900 3900
Wire Wire Line
	6900 3900 6900 3000
Wire Wire Line
	6900 3000 6600 3000
Wire Wire Line
	6800 4500 6800 3100
Wire Wire Line
	6800 3100 6600 3100
Wire Wire Line
	7150 5150 6700 5150
Wire Wire Line
	6700 5150 6700 3200
Wire Wire Line
	6700 3200 6600 3200
Wire Wire Line
	7150 5750 6600 5750
Wire Wire Line
	6600 5750 6600 3300
$Comp
L RR8 RR2
U 1 1 58914989
P 10150 4800
F 0 "RR2" H 10200 5350 70  0000 C CNN
<<<<<<< HEAD
F 1 "10K Ohms" V 10180 4800 70  0000 C CNN
F 2 "SIP-9" H 10150 4800 60  0001 C CNN
F 3 "~" H 10150 4800 60  0000 C CNN
F 4 "652-4609X-1LF-10K" H 10150 4800 60  0001 C CNN "Mouser Part Number"
=======
F 1 "RR8" V 10180 4800 70  0000 C CNN
F 2 "~" H 10150 4800 60  0000 C CNN
F 3 "~" H 10150 4800 60  0000 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
	1    10150 4800
	1    0    0    -1  
$EndComp
$Comp
<<<<<<< HEAD
L VDD #PWR19
U 1 1 58914998
P 7850 3550
F 0 "#PWR19" H 7850 3650 30  0001 C CNN
=======
L VDD #PWR019
U 1 1 58914998
P 7850 3550
F 0 "#PWR019" H 7850 3650 30  0001 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
F 1 "VDD" H 7850 3660 30  0000 C CNN
F 2 "" H 7850 3550 60  0000 C CNN
F 3 "" H 7850 3550 60  0000 C CNN
	1    7850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3550 7850 3700
$Comp
<<<<<<< HEAD
L GND #PWR20
U 1 1 589149FA
P 7950 6050
F 0 "#PWR20" H 7950 6050 30  0001 C CNN
=======
L GND #PWR020
U 1 1 589149FA
P 7950 6050
F 0 "#PWR020" H 7950 6050 30  0001 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
F 1 "GND" H 7950 5980 30  0001 C CNN
F 2 "" H 7950 6050 60  0000 C CNN
F 3 "" H 7950 6050 60  0000 C CNN
	1    7950 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 5950 7950 6050
$Comp
<<<<<<< HEAD
L VDD #PWR22
U 1 1 58914A53
P 9800 4200
F 0 "#PWR22" H 9800 4300 30  0001 C CNN
=======
L VDD #PWR021
U 1 1 58914A53
P 9800 4200
F 0 "#PWR021" H 9800 4300 30  0001 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
F 1 "VDD" H 9800 4310 30  0000 C CNN
F 2 "" H 9800 4200 60  0000 C CNN
F 3 "" H 9800 4200 60  0000 C CNN
	1    9800 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4450 9600 4450
Wire Wire Line
	9600 3800 9600 4450
Wire Wire Line
	8250 3800 9600 3800
Wire Wire Line
	9800 4550 9500 4550
Wire Wire Line
	9500 4550 9500 4000
Wire Wire Line
	9500 4000 8250 4000
Wire Wire Line
	9800 4650 9400 4650
Wire Wire Line
	9400 4400 9400 4650
Wire Wire Line
	8300 4400 9400 4400
Wire Wire Line
	9800 4750 9350 4750
Wire Wire Line
	9350 4750 9350 4600
Wire Wire Line
	9350 4600 8300 4600
Wire Wire Line
	9150 4850 9800 4850
Wire Wire Line
	9150 4850 9150 5050
Wire Wire Line
	9150 5050 8350 5050
Wire Wire Line
	9800 4950 9250 4950
Wire Wire Line
	9250 4950 9250 5250
Wire Wire Line
	9250 5250 8350 5250
Wire Wire Line
	9350 5050 9800 5050
Wire Wire Line
	9350 5050 9350 5650
Wire Wire Line
	9350 5650 8350 5650
Wire Wire Line
	9800 5150 9800 5850
Wire Wire Line
	9800 5850 8350 5850
$Comp
L CONN_8 T1
U 1 1 58914DBB
P 9750 2550
F 0 "T1" V 9700 2550 60  0000 C CNN
F 1 "CONN_8" V 9800 2550 60  0000 C CNN
<<<<<<< HEAD
F 2 "SIL-8" H 9750 2550 60  0001 C CNN
F 3 "~" H 9750 2550 60  0000 C CNN
F 4 "651-1725711" V 9750 2550 60  0001 C CNN "Mouser Part Number"
=======
F 2 "~" H 9750 2550 60  0000 C CNN
F 3 "~" H 9750 2550 60  0000 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
	1    9750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2200 9300 2200
Wire Wire Line
	9300 2200 9300 1850
Wire Wire Line
	9300 1850 8000 1850
Wire Wire Line
	9400 2300 9200 2300
Wire Wire Line
	9200 2300 9200 2050
Wire Wire Line
	9200 2050 8000 2050
Wire Wire Line
	9400 2400 9050 2400
Wire Wire Line
	9050 2400 9050 2250
Wire Wire Line
	9050 2250 8000 2250
Wire Wire Line
	9400 2500 8900 2500
Wire Wire Line
	8900 2500 8900 2450
Wire Wire Line
	8900 2450 8000 2450
Wire Wire Line
	8850 2600 9400 2600
Wire Wire Line
	8850 2600 8850 2650
Wire Wire Line
	8850 2650 8000 2650
Wire Wire Line
	8850 2700 9400 2700
Wire Wire Line
	8850 2700 8850 2850
Wire Wire Line
	8850 2850 8000 2850
Wire Wire Line
	9400 2800 8950 2800
Wire Wire Line
	8950 2800 8950 3050
Wire Wire Line
	8950 3050 8000 3050
Wire Wire Line
	9400 2900 9100 2900
Wire Wire Line
	9100 2900 9100 3250
Wire Wire Line
	9100 3250 8000 3250
$Comp
L CONN_5 T2
U 1 1 58915323
P 10150 3450
F 0 "T2" V 10100 3450 50  0000 C CNN
F 1 "CONN_5" V 10200 3450 50  0000 C CNN
<<<<<<< HEAD
F 2 "SIL-5" H 10150 3450 60  0001 C CNN
F 3 "~" H 10150 3450 60  0000 C CNN
F 4 "651-1725685" V 10150 3450 60  0001 C CNN "Mouser Part Number"
=======
F 2 "~" H 10150 3450 60  0000 C CNN
F 3 "~" H 10150 3450 60  0000 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
	1    10150 3450
	1    0    0    -1  
$EndComp
$Comp
<<<<<<< HEAD
L GND #PWR21
U 1 1 58915337
P 9800 3800
F 0 "#PWR21" H 9800 3800 30  0001 C CNN
=======
L GND #PWR022
U 1 1 58915337
P 9800 3800
F 0 "#PWR022" H 9800 3800 30  0001 C CNN
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
F 1 "GND" H 9800 3730 30  0001 C CNN
F 2 "" H 9800 3800 60  0000 C CNN
F 3 "" H 9800 3800 60  0000 C CNN
	1    9800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3250 9200 3250
Wire Wire Line
	9200 3250 9200 3800
Connection ~ 9200 3800
Wire Wire Line
	9750 3350 9300 3350
Wire Wire Line
	9300 3350 9300 4400
Connection ~ 9300 4400
Wire Wire Line
	9750 3450 9450 3450
Wire Wire Line
	9450 3450 9450 4850
Connection ~ 9450 4850
Wire Wire Line
	9750 3550 9700 3550
Wire Wire Line
	9700 3550 9700 5050
Connection ~ 9700 5050
Wire Wire Line
	6800 4500 7100 4500
Wire Wire Line
	7300 2050 7300 2100
Wire Wire Line
	3650 3550 3500 3550
Wire Wire Line
	9800 4200 9800 4350
Wire Wire Line
	1600 3050 1500 3050
Wire Wire Line
	7300 2850 7300 2900
Wire Wire Line
	9750 3650 9750 3750
Wire Wire Line
	9750 3750 9800 3750
Wire Wire Line
	9800 3750 9800 3800
Wire Wire Line
	5900 3950 5900 4100
<<<<<<< HEAD
$Comp
L SIP-R_PACK4 RP1
U 1 1 5891FBF0
P 6800 2950
F 0 "RP1" H 6800 3400 40  0000 C CNN
F 1 "330 Ohms" H 6800 2900 40  0000 C CNN
F 2 "SIP-8" H 6800 2950 60  0001 C CNN
F 3 "~" H 6800 2950 60  0000 C CNN
F 4 "652-4608X-AP2-331LF" H 6800 2950 60  0001 C CNN "Mouser Part Number"
	1    6800 2950
	1    0    0    -1  
$EndComp
=======
>>>>>>> 4926812019e60053d2df9b87476d5d9b18144939
$EndSCHEMATC
