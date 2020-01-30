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
LIBS:esp32_devboards
LIBS:smalljumper
LIBS:sn65hvd233-ht
LIBS:lm2574n-5
LIBS:MCP23xxx
LIBS:ESP32-16xDCCOD-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date "14 nov 2019"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ESP32_DEVKIT_C U0
U 1 1 5C81CCAA
P 3100 2000
F 0 "U0" H 3100 2000 60  0000 C CNN
F 1 "ESP32_DEVKIT_C or TTGO-T1" H 3100 2550 60  0000 C CNN
F 2 "~" H 3100 2000 60  0000 C CNN
F 3 "~" H 3100 2000 60  0000 C CNN
F 4 "dummy" H 3100 2000 60  0001 C CNN "Mouser Part Number"
	1    3100 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5C81D000
P 2500 2200
F 0 "#PWR01" H 2500 2200 30  0001 C CNN
F 1 "GND" H 2500 2130 30  0001 C CNN
F 2 "" H 2500 2200 60  0000 C CNN
F 3 "" H 2500 2200 60  0000 C CNN
	1    2500 2200
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR02
U 1 1 5C81D01A
P 3850 1750
F 0 "#PWR02" H 3850 1840 20  0001 C CNN
F 1 "+5V" H 3850 1840 30  0000 C CNN
F 2 "" H 3850 1750 60  0000 C CNN
F 3 "" H 3850 1750 60  0000 C CNN
	1    3850 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5C81D02F
P 3700 1550
F 0 "#PWR03" H 3700 1550 30  0001 C CNN
F 1 "GND" H 3700 1480 30  0001 C CNN
F 2 "" H 3700 1550 60  0000 C CNN
F 3 "" H 3700 1550 60  0000 C CNN
	1    3700 1550
	0    -1   -1   0   
$EndComp
$Comp
L 3V3 #PWR04
U 1 1 5C81D08D
P 2650 1450
F 0 "#PWR04" H 2650 1550 40  0001 C CNN
F 1 "3V3" H 2650 1575 40  0000 C CNN
F 2 "" H 2650 1450 60  0000 C CNN
F 3 "" H 2650 1450 60  0000 C CNN
	1    2650 1450
	1    0    0    -1  
$EndComp
NoConn ~ 3550 2450
Text Label 3550 2150 0    25   ~ 0
CAN_RX
Text Label 3550 2000 0    25   ~ 0
CAN_TX
Text Label 3550 1600 0    25   ~ 0
SDA
Text Label 3550 1800 0    25   ~ 0
SCL
Text Label 3550 2300 0    25   ~ 0
MOSI
Text Label 3550 2250 0    25   ~ 0
MISO
Text Label 2650 2100 2    25   ~ 0
CLK
$Sheet
S 4300 1650 950  850 
U 5C828AE5
F0 "CAN Transceiver" 50
F1 "CAN_Transeiver.sch" 50
F2 "CAN_TX" I L 4300 1850 60 
F3 "CAN_RX" I L 4300 2050 60 
$EndSheet
$Sheet
S 2700 2800 1250 1050
U 5C828B13
F0 "Power Supply" 50
F1 "PowerSupply.sch" 50
$EndSheet
$Comp
L MCP23017 U101
U 1 1 5DCD62E1
P 6150 3950
F 0 "U101" H 6000 4100 60  0000 C CNN
F 1 "MCP23017" H 6150 3950 60  0000 C CNN
F 2 "~" H 6150 3950 60  0000 C CNN
F 3 "~" H 6150 3950 60  0000 C CNN
	1    6150 3950
	0    1    1    0   
$EndComp
$Comp
L 3V3 #PWR05
U 1 1 5DCD73C5
P 4900 3700
F 0 "#PWR05" H 4900 3800 40  0001 C CNN
F 1 "3V3" H 4900 3825 40  0000 C CNN
F 2 "" H 4900 3700 60  0000 C CNN
F 3 "" H 4900 3700 60  0000 C CNN
	1    4900 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5DCD750E
P 7350 4100
F 0 "#PWR06" H 7350 4100 30  0001 C CNN
F 1 "GND" H 7350 4030 30  0001 C CNN
F 2 "" H 7350 4100 60  0000 C CNN
F 3 "" H 7350 4100 60  0000 C CNN
	1    7350 4100
	1    0    0    -1  
$EndComp
$Comp
L R R101
U 1 1 5DCD76F9
P 5300 3250
F 0 "R101" V 5380 3250 40  0000 C CNN
F 1 "10K Ohms" V 5307 3251 40  0000 C CNN
F 2 "~" V 5230 3250 30  0000 C CNN
F 3 "~" H 5300 3250 30  0000 C CNN
	1    5300 3250
	0    -1   -1   0   
$EndComp
Text Label 6850 3250 1    100  ~ 0
SDA
Text Label 6950 3250 1    100  ~ 0
SCL
$Comp
L CONN_4 P102
U 1 1 5DCD839D
P 2200 6400
F 0 "P102" V 2150 6400 50  0000 C CNN
F 1 "CONN_4" V 2250 6400 50  0000 C CNN
F 2 "~" H 2200 6400 60  0000 C CNN
F 3 "~" H 2200 6400 60  0000 C CNN
	1    2200 6400
	0    1    1    0   
$EndComp
$Comp
L CONN_4 P104
U 1 1 5DCD83B2
P 2900 6400
F 0 "P104" V 2850 6400 50  0000 C CNN
F 1 "CONN_4" V 2950 6400 50  0000 C CNN
F 2 "~" H 2900 6400 60  0000 C CNN
F 3 "~" H 2900 6400 60  0000 C CNN
	1    2900 6400
	0    1    1    0   
$EndComp
$Comp
L CONN_4 P106
U 1 1 5DCD846B
P 3600 6400
F 0 "P106" V 3550 6400 50  0000 C CNN
F 1 "CONN_4" V 3650 6400 50  0000 C CNN
F 2 "~" H 3600 6400 60  0000 C CNN
F 3 "~" H 3600 6400 60  0000 C CNN
	1    3600 6400
	0    1    1    0   
$EndComp
$Comp
L CONN_4 P108
U 1 1 5DCD8471
P 4300 6400
F 0 "P108" V 4250 6400 50  0000 C CNN
F 1 "CONN_4" V 4350 6400 50  0000 C CNN
F 2 "~" H 4300 6400 60  0000 C CNN
F 3 "~" H 4300 6400 60  0000 C CNN
	1    4300 6400
	0    1    1    0   
$EndComp
$Comp
L CONN_4 P110
U 1 1 5DCD8489
P 4950 6400
F 0 "P110" V 4900 6400 50  0000 C CNN
F 1 "CONN_4" V 5000 6400 50  0000 C CNN
F 2 "~" H 4950 6400 60  0000 C CNN
F 3 "~" H 4950 6400 60  0000 C CNN
	1    4950 6400
	0    1    1    0   
$EndComp
$Comp
L CONN_4 P112
U 1 1 5DCD848F
P 5650 6400
F 0 "P112" V 5600 6400 50  0000 C CNN
F 1 "CONN_4" V 5700 6400 50  0000 C CNN
F 2 "~" H 5650 6400 60  0000 C CNN
F 3 "~" H 5650 6400 60  0000 C CNN
	1    5650 6400
	0    1    1    0   
$EndComp
$Comp
L CONN_4 P114
U 1 1 5DCD8495
P 6350 6400
F 0 "P114" V 6300 6400 50  0000 C CNN
F 1 "CONN_4" V 6400 6400 50  0000 C CNN
F 2 "~" H 6350 6400 60  0000 C CNN
F 3 "~" H 6350 6400 60  0000 C CNN
	1    6350 6400
	0    1    1    0   
$EndComp
$Comp
L CONN_4 P116
U 1 1 5DCD849B
P 7050 6400
F 0 "P116" V 7000 6400 50  0000 C CNN
F 1 "CONN_4" V 7100 6400 50  0000 C CNN
F 2 "~" H 7050 6400 60  0000 C CNN
F 3 "~" H 7050 6400 60  0000 C CNN
	1    7050 6400
	0    1    1    0   
$EndComp
$Comp
L CONN_4 P101
U 1 1 5DCD8633
P 2200 5050
F 0 "P101" V 2150 5050 50  0000 C CNN
F 1 "CONN_4" V 2250 5050 50  0000 C CNN
F 2 "~" H 2200 5050 60  0000 C CNN
F 3 "~" H 2200 5050 60  0000 C CNN
	1    2200 5050
	0    1    -1   0   
$EndComp
$Comp
L CONN_4 P103
U 1 1 5DCD8639
P 2900 5050
F 0 "P103" V 2850 5050 50  0000 C CNN
F 1 "CONN_4" V 2950 5050 50  0000 C CNN
F 2 "~" H 2900 5050 60  0000 C CNN
F 3 "~" H 2900 5050 60  0000 C CNN
	1    2900 5050
	0    1    -1   0   
$EndComp
$Comp
L CONN_4 P105
U 1 1 5DCD863F
P 3600 5050
F 0 "P105" V 3550 5050 50  0000 C CNN
F 1 "CONN_4" V 3650 5050 50  0000 C CNN
F 2 "~" H 3600 5050 60  0000 C CNN
F 3 "~" H 3600 5050 60  0000 C CNN
	1    3600 5050
	0    1    -1   0   
$EndComp
$Comp
L CONN_4 P107
U 1 1 5DCD8645
P 4300 5050
F 0 "P107" V 4250 5050 50  0000 C CNN
F 1 "CONN_4" V 4350 5050 50  0000 C CNN
F 2 "~" H 4300 5050 60  0000 C CNN
F 3 "~" H 4300 5050 60  0000 C CNN
	1    4300 5050
	0    1    -1   0   
$EndComp
$Comp
L CONN_4 P109
U 1 1 5DCD864B
P 4950 5050
F 0 "P109" V 4900 5050 50  0000 C CNN
F 1 "CONN_4" V 5000 5050 50  0000 C CNN
F 2 "~" H 4950 5050 60  0000 C CNN
F 3 "~" H 4950 5050 60  0000 C CNN
	1    4950 5050
	0    1    -1   0   
$EndComp
$Comp
L CONN_4 P111
U 1 1 5DCD8651
P 5650 5050
F 0 "P111" V 5600 5050 50  0000 C CNN
F 1 "CONN_4" V 5700 5050 50  0000 C CNN
F 2 "~" H 5650 5050 60  0000 C CNN
F 3 "~" H 5650 5050 60  0000 C CNN
	1    5650 5050
	0    1    -1   0   
$EndComp
$Comp
L CONN_4 P113
U 1 1 5DCD8657
P 6350 5050
F 0 "P113" V 6300 5050 50  0000 C CNN
F 1 "CONN_4" V 6400 5050 50  0000 C CNN
F 2 "~" H 6350 5050 60  0000 C CNN
F 3 "~" H 6350 5050 60  0000 C CNN
	1    6350 5050
	0    1    -1   0   
$EndComp
$Comp
L CONN_4 P115
U 1 1 5DCD865D
P 7050 5050
F 0 "P115" V 7000 5050 50  0000 C CNN
F 1 "CONN_4" V 7100 5050 50  0000 C CNN
F 2 "~" H 7050 5050 60  0000 C CNN
F 3 "~" H 7050 5050 60  0000 C CNN
	1    7050 5050
	0    1    -1   0   
$EndComp
$Comp
L +5V #PWR07
U 1 1 5DCD97C0
P 1800 5550
F 0 "#PWR07" H 1800 5640 20  0001 C CNN
F 1 "+5V" H 1800 5640 30  0000 C CNN
F 2 "" H 1800 5550 60  0000 C CNN
F 3 "" H 1800 5550 60  0000 C CNN
	1    1800 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1750 3850 2600
Wire Wire Line
	3850 2600 2650 2600
Wire Wire Line
	2650 2600 2650 2450
Wire Wire Line
	2650 2200 2500 2200
Wire Wire Line
	3700 1550 3550 1550
Wire Wire Line
	2650 1450 2650 1550
Wire Wire Line
	4300 1850 4100 1850
Wire Wire Line
	4100 1850 4100 2000
Wire Wire Line
	4100 2000 3550 2000
Wire Wire Line
	3550 2150 4200 2150
Wire Wire Line
	4200 2150 4200 2050
Wire Wire Line
	4200 2050 4300 2050
Wire Wire Line
	4900 3700 4900 3950
Wire Wire Line
	7350 2900 7350 4100
Wire Wire Line
	6500 3250 6500 2900
Wire Wire Line
	6500 2900 7350 2900
Connection ~ 7350 3950
Wire Wire Line
	6600 3250 6600 2900
Connection ~ 6600 2900
Wire Wire Line
	6700 3250 6700 2900
Connection ~ 6700 2900
Wire Wire Line
	5700 3250 5550 3250
Wire Wire Line
	5050 3250 5050 3750
Wire Wire Line
	5050 3750 4900 3750
Connection ~ 4900 3750
Wire Wire Line
	2050 5400 2050 6050
Wire Wire Line
	2750 5400 2750 6050
Wire Wire Line
	3450 5400 3450 6050
Wire Wire Line
	4150 5400 4150 6050
Wire Wire Line
	4800 5400 4800 6050
Wire Wire Line
	5500 5400 5500 6050
Wire Wire Line
	6200 5400 6200 6050
Wire Wire Line
	6900 5400 6900 6050
Wire Wire Line
	1800 5550 6900 5550
Connection ~ 6200 5550
Connection ~ 6900 5550
Connection ~ 5500 5550
Connection ~ 4800 5550
Connection ~ 4150 5550
Connection ~ 3450 5550
Connection ~ 2750 5550
Connection ~ 2050 5550
Wire Wire Line
	3650 5400 3650 6050
Wire Wire Line
	4350 5400 4350 6050
Wire Wire Line
	5000 5400 5000 6050
Wire Wire Line
	5700 5400 5700 6050
Wire Wire Line
	6400 6050 6400 5400
Wire Wire Line
	2250 5900 7550 5900
Connection ~ 4350 5900
Connection ~ 3650 5900
Connection ~ 5000 5900
Connection ~ 5700 5900
Wire Wire Line
	7100 5400 7100 6050
Connection ~ 6400 5900
Connection ~ 7100 5900
$Comp
L GND #PWR08
U 1 1 5DCDA08A
P 7550 5900
F 0 "#PWR08" H 7550 5900 30  0001 C CNN
F 1 "GND" H 7550 5830 30  0001 C CNN
F 2 "" H 7550 5900 60  0000 C CNN
F 3 "" H 7550 5900 60  0000 C CNN
	1    7550 5900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7200 5400 7200 6050
Wire Wire Line
	6500 5400 6500 6050
Wire Wire Line
	5800 5400 5800 6050
Wire Wire Line
	2350 5700 7550 5700
Connection ~ 6500 5700
Connection ~ 7200 5700
Connection ~ 5800 5700
$Comp
L 3V3 #PWR09
U 1 1 5DCDA22A
P 7550 5700
F 0 "#PWR09" H 7550 5800 40  0001 C CNN
F 1 "3V3" H 7550 5825 40  0000 C CNN
F 2 "" H 7550 5700 60  0000 C CNN
F 3 "" H 7550 5700 60  0000 C CNN
	1    7550 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5400 5100 6050
Wire Wire Line
	4450 5400 4450 6050
Wire Wire Line
	3750 5400 3750 6050
Connection ~ 5100 5700
Connection ~ 4450 5700
Connection ~ 3750 5700
Wire Wire Line
	3050 5400 3050 6050
Wire Wire Line
	2350 5400 2350 6050
Wire Wire Line
	2250 5400 2250 6050
Wire Wire Line
	2950 5400 2950 6050
Connection ~ 2950 5900
Connection ~ 2250 5900
Connection ~ 3050 5700
Connection ~ 2350 5700
Text Label 6300 4600 3    50   ~ 0
OD1
Text Label 6400 4600 3    50   ~ 0
OD2
Text Label 6500 4600 3    50   ~ 0
OD3
Text Label 6600 4600 3    50   ~ 0
OD4
Text Label 6700 4600 3    50   ~ 0
OD5
Text Label 6800 4600 3    50   ~ 0
OD6
Text Label 6900 4600 3    50   ~ 0
OD7
Text Label 7000 4600 3    50   ~ 0
OD8
Text Label 5250 4600 3    50   ~ 0
OD9
Text Label 5350 4600 3    50   ~ 0
OD10
Text Label 5450 4600 3    50   ~ 0
OD11
Text Label 5550 4600 3    50   ~ 0
OD12
Text Label 5650 4600 3    50   ~ 0
OD13
Text Label 5750 4600 3    50   ~ 0
OD14
Text Label 5850 4600 3    50   ~ 0
OD15
Text Label 5950 4600 3    50   ~ 0
OD16
Text Label 2150 5400 3    50   ~ 0
OD1
Text Label 2850 5400 3    50   ~ 0
OD3
Text Label 3550 5400 3    50   ~ 0
OD5
Text Label 4250 5400 3    50   ~ 0
OD7
Text Label 4900 5400 3    50   ~ 0
OD9
Text Label 5600 5400 3    50   ~ 0
OD11
Text Label 6300 5400 3    50   ~ 0
OD13
Text Label 7000 5400 3    50   ~ 0
OD15
Text Label 7000 6050 1    50   ~ 0
OD16
Text Label 6300 6050 1    50   ~ 0
OD14
Text Label 5600 6050 1    50   ~ 0
OD12
Text Label 4900 6050 1    50   ~ 0
OD10
Text Label 4250 6050 1    50   ~ 0
OD8
Text Label 3550 6050 1    50   ~ 0
OD6
Text Label 2850 6050 1    50   ~ 0
OD4
Text Label 2150 6050 1    50   ~ 0
OD2
$Comp
L C C101
U 1 1 5DCDBFFB
P 4900 4150
F 0 "C101" H 4900 4250 40  0000 L CNN
F 1 ".1 uf" H 4906 4065 40  0000 L CNN
F 2 "~" H 4938 4000 30  0000 C CNN
F 3 "~" H 4900 4150 60  0000 C CNN
	1    4900 4150
	1    0    0    -1  
$EndComp
Connection ~ 4900 3850
Wire Wire Line
	4900 4350 4900 4900
Wire Wire Line
	4900 4900 7550 4900
Wire Wire Line
	7550 4900 7550 3950
Wire Wire Line
	7550 3950 7350 3950
$EndSCHEMATC