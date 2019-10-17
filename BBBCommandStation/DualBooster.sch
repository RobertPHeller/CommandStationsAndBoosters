EESchema Schematic File Version 2
LIBS:valves
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
LIBS:sn65hvd233-ht
LIBS:cat24c256w
LIBS:lmd18200
LIBS:sn75als174
LIBS:BBBCommandStation-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date "17 oct 2019"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LMD18200 U401
U 1 1 5DA7AFF9
P 2800 2200
F 0 "U401" H 2800 2200 60  0000 C CNN
F 1 "LMD18200" H 2800 2300 60  0000 C CNN
F 2 "~" H 2800 2200 60  0000 C CNN
F 3 "~" H 2800 2200 60  0000 C CNN
	1    2800 2200
	1    0    0    -1  
$EndComp
$Comp
L LMD18200 U402
U 1 1 5DA7B008
P 6100 2200
F 0 "U402" H 6100 2200 60  0000 C CNN
F 1 "LMD18200" H 6100 2300 60  0000 C CNN
F 2 "~" H 6100 2200 60  0000 C CNN
F 3 "~" H 6100 2200 60  0000 C CNN
	1    6100 2200
	1    0    0    -1  
$EndComp
$Comp
L C C401
U 1 1 5DA7B1AF
P 2450 2700
F 0 "C401" H 2450 2800 40  0000 L CNN
F 1 ".01 uf" H 2456 2615 40  0000 L CNN
F 2 "~" H 2488 2550 30  0000 C CNN
F 3 "~" H 2450 2700 60  0000 C CNN
	1    2450 2700
	-1   0    0    1   
$EndComp
$Comp
L C C402
U 1 1 5DA7B1BE
P 3150 2700
F 0 "C402" H 3150 2800 40  0000 L CNN
F 1 ".01 uf" H 3156 2615 40  0000 L CNN
F 2 "~" H 3188 2550 30  0000 C CNN
F 3 "~" H 3150 2700 60  0000 C CNN
	1    3150 2700
	-1   0    0    1   
$EndComp
$Comp
L C C403
U 1 1 5DA7B1CD
P 5750 2700
F 0 "C403" H 5750 2800 40  0000 L CNN
F 1 ".01 uf" H 5756 2615 40  0000 L CNN
F 2 "~" H 5788 2550 30  0000 C CNN
F 3 "~" H 5750 2700 60  0000 C CNN
	1    5750 2700
	-1   0    0    1   
$EndComp
$Comp
L C C404
U 1 1 5DA7B1DC
P 6450 2700
F 0 "C404" H 6450 2800 40  0000 L CNN
F 1 ".01 uf" H 6456 2615 40  0000 L CNN
F 2 "~" H 6488 2550 30  0000 C CNN
F 3 "~" H 6450 2700 60  0000 C CNN
	1    6450 2700
	-1   0    0    1   
$EndComp
$Comp
L R R401
U 1 1 5DA7B1EB
P 2550 3850
F 0 "R401" V 2630 3850 40  0000 C CNN
F 1 "10K Ohms" V 2557 3851 40  0000 C CNN
F 2 "~" V 2480 3850 30  0000 C CNN
F 3 "~" H 2550 3850 30  0000 C CNN
	1    2550 3850
	1    0    0    -1  
$EndComp
$Comp
L R R402
U 1 1 5DA7B1FA
P 2900 3850
F 0 "R402" V 2980 3850 40  0000 C CNN
F 1 "1.591K Ohms" V 2907 3851 40  0000 C CNN
F 2 "~" V 2830 3850 30  0000 C CNN
F 3 "~" H 2900 3850 30  0000 C CNN
	1    2900 3850
	1    0    0    -1  
$EndComp
$Comp
L R R403
U 1 1 5DA7B209
P 6000 3850
F 0 "R403" V 6080 3850 40  0000 C CNN
F 1 "10K Ohms" V 6007 3851 40  0000 C CNN
F 2 "~" V 5930 3850 30  0000 C CNN
F 3 "~" H 6000 3850 30  0000 C CNN
	1    6000 3850
	1    0    0    -1  
$EndComp
$Comp
L R R404
U 1 1 5DA7B218
P 6200 3800
F 0 "R404" V 6280 3800 40  0000 C CNN
F 1 "1.591K Ohms" V 6207 3801 40  0000 C CNN
F 2 "~" V 6130 3800 30  0000 C CNN
F 3 "~" H 6200 3800 30  0000 C CNN
	1    6200 3800
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 T401
U 1 1 5DA7B319
P 1250 2950
F 0 "T401" V 1200 2950 40  0000 C CNN
F 1 "+ Power In -" V 1300 2950 40  0000 C CNN
F 2 "~" H 1250 2950 60  0000 C CNN
F 3 "~" H 1250 2950 60  0000 C CNN
	1    1250 2950
	-1   0    0    -1  
$EndComp
$Comp
L AGND #PWR030
U 1 1 5DA7B336
P 1600 3200
F 0 "#PWR030" H 1600 3200 30  0001 C CNN
F 1 "AGND" H 1600 3130 30  0001 C CNN
F 2 "" H 1600 3200 60  0000 C CNN
F 3 "" H 1600 3200 60  0000 C CNN
	1    1600 3200
	1    0    0    -1  
$EndComp
$Comp
L VCOM #PWR401
U 1 1 5DA7B370
P 1600 2700
F 0 "#PWR401" H 1600 2900 40  0001 C CNN
F 1 "VCOM" H 1600 2850 40  0000 C CNN
F 2 "" H 1600 2700 60  0000 C CNN
F 3 "" H 1600 2700 60  0000 C CNN
	1    1600 2700
	1    0    0    -1  
$EndComp
$Comp
L VCOM #PWR408
U 1 1 5DA7B39C
P 6100 2600
F 0 "#PWR408" H 6100 2800 40  0001 C CNN
F 1 "VCOM" H 6100 2750 40  0000 C CNN
F 2 "" H 6100 2600 60  0000 C CNN
F 3 "" H 6100 2600 60  0000 C CNN
	1    6100 2600
	-1   0    0    1   
$EndComp
$Comp
L VCOM #PWR404
U 1 1 5DA7B3AB
P 2800 2600
F 0 "#PWR404" H 2800 2800 40  0001 C CNN
F 1 "VCOM" H 2800 2750 40  0000 C CNN
F 2 "" H 2800 2600 60  0000 C CNN
F 3 "" H 2800 2600 60  0000 C CNN
	1    2800 2600
	-1   0    0    1   
$EndComp
$Comp
L AGND #PWR031
U 1 1 5DA7B3C9
P 2850 2800
F 0 "#PWR031" H 2850 2800 30  0001 C CNN
F 1 "AGND" H 2850 2730 30  0001 C CNN
F 2 "" H 2850 2800 60  0000 C CNN
F 3 "" H 2850 2800 60  0000 C CNN
	1    2850 2800
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR032
U 1 1 5DA7B3D8
P 6150 2800
F 0 "#PWR032" H 6150 2800 30  0001 C CNN
F 1 "AGND" H 6150 2730 30  0001 C CNN
F 2 "" H 6150 2800 60  0000 C CNN
F 3 "" H 6150 2800 60  0000 C CNN
	1    6150 2800
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 T403
U 1 1 5DA7B41A
P 3750 3000
F 0 "T403" V 3700 3000 40  0000 C CNN
F 1 "DCC 1" V 3800 3000 40  0000 C CNN
F 2 "~" H 3750 3000 60  0000 C CNN
F 3 "~" H 3750 3000 60  0000 C CNN
	1    3750 3000
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 T405
U 1 1 5DA7B4A9
P 7050 3000
F 0 "T405" V 7000 3000 40  0000 C CNN
F 1 "DCC 2" V 7100 3000 40  0000 C CNN
F 2 "~" H 7050 3000 60  0000 C CNN
F 3 "~" H 7050 3000 60  0000 C CNN
	1    7050 3000
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 T402
U 1 1 5DA7B502
P 1950 3300
F 0 "T402" V 1900 3300 60  0000 C CNN
F 1 "CMD 1" V 2000 3300 60  0000 C CNN
F 2 "~" H 1950 3300 60  0000 C CNN
F 3 "~" H 1950 3300 60  0000 C CNN
	1    1950 3300
	-1   0    0    -1  
$EndComp
$Comp
L CONN_6 T404
U 1 1 5DA7B524
P 5250 3300
F 0 "T404" V 5200 3300 60  0000 C CNN
F 1 "CMD 2" V 5300 3300 60  0000 C CNN
F 2 "~" H 5250 3300 60  0000 C CNN
F 3 "~" H 5250 3300 60  0000 C CNN
	1    5250 3300
	-1   0    0    -1  
$EndComp
$Comp
L AGND #PWR033
U 1 1 5DA7B5E2
P 2300 3650
F 0 "#PWR033" H 2300 3650 30  0001 C CNN
F 1 "AGND" H 2300 3580 30  0001 C CNN
F 2 "" H 2300 3650 60  0000 C CNN
F 3 "" H 2300 3650 60  0000 C CNN
	1    2300 3650
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR034
U 1 1 5DA7B5F1
P 5600 3700
F 0 "#PWR034" H 5600 3700 30  0001 C CNN
F 1 "AGND" H 5600 3630 30  0001 C CNN
F 2 "" H 5600 3700 60  0000 C CNN
F 3 "" H 5600 3700 60  0000 C CNN
	1    5600 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2500 2450 2500
Wire Wire Line
	3050 2500 3150 2500
Wire Wire Line
	2600 2500 2600 3100
Wire Wire Line
	2600 2900 2450 2900
Wire Wire Line
	3000 2500 3000 2900
Wire Wire Line
	3000 2900 3400 2900
Wire Wire Line
	5850 2500 5750 2500
Wire Wire Line
	6350 2500 6450 2500
Wire Wire Line
	6300 2500 6300 2900
Wire Wire Line
	6300 2900 6700 2900
Wire Wire Line
	5900 2500 5900 3100
Wire Wire Line
	5900 2900 5750 2900
Wire Wire Line
	1600 3050 1600 3200
Wire Wire Line
	1600 2700 1600 2850
Wire Wire Line
	2800 2500 2800 2600
Wire Wire Line
	6100 2500 6100 2600
Wire Wire Line
	6150 2500 6150 2800
Wire Wire Line
	2850 2500 2850 2800
Connection ~ 3150 2900
Wire Wire Line
	2600 3100 3400 3100
Connection ~ 2600 2900
Connection ~ 6450 2900
Wire Wire Line
	5900 3100 6700 3100
Connection ~ 5900 2900
Wire Wire Line
	5600 3550 5600 3700
Wire Wire Line
	2300 3550 2300 3650
Wire Wire Line
	2650 2500 2650 3150
Wire Wire Line
	2650 3150 2300 3150
Wire Wire Line
	2700 2500 2700 3250
Wire Wire Line
	2700 3250 2300 3250
Wire Wire Line
	2750 2500 2750 3050
Wire Wire Line
	2750 3050 2300 3050
Wire Wire Line
	2900 2500 2900 3600
Wire Wire Line
	2900 3350 2300 3350
Wire Wire Line
	2950 2500 2950 3450
Connection ~ 2900 3350
Wire Wire Line
	2950 3450 2300 3450
Wire Wire Line
	2550 3600 2550 3450
Connection ~ 2550 3450
Wire Wire Line
	2550 4100 2400 4100
Wire Wire Line
	2400 4100 2400 3050
Connection ~ 2400 3050
Wire Wire Line
	5950 2500 5950 3150
Wire Wire Line
	5950 3150 5600 3150
Wire Wire Line
	6000 2500 6000 3250
Wire Wire Line
	6000 3250 5600 3250
Wire Wire Line
	6050 2500 6050 3000
Wire Wire Line
	6050 3000 5600 3000
Wire Wire Line
	6200 2500 6200 3550
Wire Wire Line
	6200 3350 5600 3350
Wire Wire Line
	6250 2500 6250 3450
Wire Wire Line
	6250 3450 5600 3450
Connection ~ 6200 3350
$Comp
L AGND #PWR035
U 1 1 5DA7B9D0
P 2900 4200
F 0 "#PWR035" H 2900 4200 30  0001 C CNN
F 1 "AGND" H 2900 4130 30  0001 C CNN
F 2 "" H 2900 4200 60  0000 C CNN
F 3 "" H 2900 4200 60  0000 C CNN
	1    2900 4200
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR036
U 1 1 5DA7B9DF
P 6200 4150
F 0 "#PWR036" H 6200 4150 30  0001 C CNN
F 1 "AGND" H 6200 4080 30  0001 C CNN
F 2 "" H 6200 4150 60  0000 C CNN
F 3 "" H 6200 4150 60  0000 C CNN
	1    6200 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4050 6200 4150
Wire Wire Line
	6000 3600 6000 3450
Connection ~ 6000 3450
Wire Wire Line
	6000 4100 5800 4100
Wire Wire Line
	5800 4100 5800 3000
Connection ~ 5800 3000
Wire Wire Line
	5600 3000 5600 3050
Wire Wire Line
	2900 4100 2900 4200
Text Label 5650 3000 0    60   ~ 0
Vcc 2
Text Label 5650 3150 0    60   ~ 0
DCC Signal 2
Text Label 5650 3250 0    60   ~ 0
Enable 2
Text Label 5650 3350 0    60   ~ 0
Current Sense 2
Text Label 5650 3450 0    60   ~ 0
Thermal Flag 2
Text Label 5600 3650 0    60   ~ 0
GND 2
Text Label 2350 3050 0    60   ~ 0
Vcc 1
Text Label 2350 3150 0    60   ~ 0
DCC Signal 1
Text Label 2350 3250 0    60   ~ 0
Enable 1
Text Label 2350 3350 0    60   ~ 0
Current Sense 1
Text Label 2350 3450 0    60   ~ 0
Thermal Flag 1
Text Label 2300 3600 0    60   ~ 0
GND 1
$EndSCHEMATC
