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
LIBS:mct6h
LIBS:bridge
LIBS:QuadOCDectHat-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title ""
Date "2 jun 2019"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_2 T3
U 1 1 5C70A943
P 1350 1300
AR Path="/5C70A8FB/5C70A943" Ref="T3"  Part="1" 
AR Path="/5C70AEE5/5C70A943" Ref="T3"  Part="1" 
F 0 "T3" V 1300 1300 40  0000 C CNN
F 1 "In Track3 Out" V 1400 1300 40  0000 C CNN
F 2 "~" H 1350 1300 60  0000 C CNN
F 3 "~" H 1350 1300 60  0000 C CNN
F 4 "649-220316-H021B01LF" H 1350 1300 60  0001 C CNN "Mouser Part Number"
	1    1350 1300
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 5C70A952
P 2500 1500
AR Path="/5C70A8FB/5C70A952" Ref="R5"  Part="1" 
AR Path="/5C70AEE5/5C70A952" Ref="R5"  Part="1" 
F 0 "R5" V 2580 1500 40  0000 C CNN
F 1 "10 Ohms" V 2507 1501 40  0000 C CNN
F 2 "~" V 2430 1500 30  0000 C CNN
F 3 "~" H 2500 1500 30  0000 C CNN
F 4 "CFR-25JR-52-10R" H 2500 1500 60  0001 C CNN "Mouser Part Number"
	1    2500 1500
	0    -1   -1   0   
$EndComp
$Comp
L MCT6H IC3
U 1 1 5C70A96E
P 3700 1600
AR Path="/5C70A8FB/5C70A96E" Ref="IC3"  Part="1" 
AR Path="/5C70AEE5/5C70A96E" Ref="IC3"  Part="1" 
F 0 "IC3" H 3490 1790 40  0000 C CNN
F 1 "MCT6H" H 3810 1410 40  0000 C CNN
F 2 "DIP-8__300" H 3540 1420 30  0001 C CIN
F 3 "~" H 3700 1600 60  0000 C CNN
F 4 "782-MCT6H " H 3700 1600 60  0001 C CNN "Mouser Part Number"
	1    3700 1600
	1    0    0    -1  
$EndComp
$Comp
L MCT6H IC3
U 2 1 5C70A97D
P 3700 2150
AR Path="/5C70A8FB/5C70A97D" Ref="IC3"  Part="2" 
AR Path="/5C70AEE5/5C70A97D" Ref="IC3"  Part="2" 
F 0 "IC3" H 3490 2340 40  0000 C CNN
F 1 "MCT6H" H 3810 1960 40  0000 C CNN
F 2 "DIP-8__300" H 3540 1970 30  0001 C CIN
F 3 "~" H 3700 2150 60  0000 C CNN
F 4 "782-MCT6H " H 3700 2150 60  0001 C CNN "Mouser Part Number"
	2    3700 2150
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5C70A98C
P 4300 1100
AR Path="/5C70A8FB/5C70A98C" Ref="R6"  Part="1" 
AR Path="/5C70AEE5/5C70A98C" Ref="R6"  Part="1" 
F 0 "R6" V 4380 1100 40  0000 C CNN
F 1 "10K Ohms" V 4307 1101 40  0000 C CNN
F 2 "~" V 4230 1100 30  0000 C CNN
F 3 "~" H 4300 1100 30  0000 C CNN
F 4 "603-CFR-25JB-52-10K" H 4300 1100 60  0001 C CNN "Mouser Part Number"
	1    4300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1900 2250 1500
Wire Wire Line
	1200 1900 2250 1900
Wire Wire Line
	1250 1900 1250 1650
$Comp
L BRIDGEX D3
U 1 1 5C70AB0F
P 2050 2950
AR Path="/5C70A8FB/5C70AB0F" Ref="D3"  Part="1" 
AR Path="/5C70AEE5/5C70AB0F" Ref="D3"  Part="1" 
F 0 "D3" H 2050 3000 70  0000 C CNN
F 1 "BRIDGEX" H 2050 2900 70  0000 C CNN
F 2 "~" H 2050 2950 60  0000 C CNN
F 3 "~" H 2050 2950 60  0000 C CNN
F 4 "750-KBL401-G" H 2050 2950 60  0001 C CNN "Mouser Part Number"
	1    2050 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 2100 2050 3800
Wire Wire Line
	1200 1900 1200 2950
Connection ~ 1250 1900
Wire Wire Line
	1450 1650 2900 1650
Wire Wire Line
	2900 1650 2900 2950
Wire Wire Line
	3350 1700 3350 2050
Wire Wire Line
	2750 1500 3350 1500
Wire Wire Line
	3200 1500 3200 2250
Wire Wire Line
	3200 2250 3350 2250
Wire Wire Line
	4300 2050 4050 2050
Wire Wire Line
	4300 1350 4300 2050
Wire Wire Line
	4050 1500 4450 1500
Wire Wire Line
	4050 1700 4200 1700
Wire Wire Line
	4200 1700 4200 2450
Wire Wire Line
	4200 2250 4050 2250
Connection ~ 3200 1500
Wire Wire Line
	3350 1850 2900 1850
Connection ~ 2900 1850
Connection ~ 3350 1850
Connection ~ 4300 1500
$Comp
L +3.3V #PWR07
U 1 1 5C70AC29
P 4300 750
AR Path="/5C70A8FB/5C70AC29" Ref="#PWR07"  Part="1" 
AR Path="/5C70AEE5/5C70AC29" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 4300 710 30  0001 C CNN
F 1 "+3.3V" H 4300 860 30  0000 C CNN
F 2 "" H 4300 750 60  0000 C CNN
F 3 "" H 4300 750 60  0000 C CNN
	1    4300 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 750  4300 850 
$Comp
L GND #PWR08
U 1 1 5C70AC50
P 4200 2450
AR Path="/5C70A8FB/5C70AC50" Ref="#PWR08"  Part="1" 
AR Path="/5C70AEE5/5C70AC50" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 4200 2450 30  0001 C CNN
F 1 "GND" H 4200 2380 30  0001 C CNN
F 2 "" H 4200 2450 60  0000 C CNN
F 3 "" H 4200 2450 60  0000 C CNN
	1    4200 2450
	1    0    0    -1  
$EndComp
Connection ~ 4200 2250
Text HLabel 4450 1500 2    60   Input ~ 0
OD3
$EndSCHEMATC
