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
LIBS:tbd62x83a
LIBS:tc442x
LIBS:mct6h
LIBS:bridge
LIBS:ESP32-HalfSiding-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title ""
Date "9 apr 2019"
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
	1    3100 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1750 3850 2600
Wire Wire Line
	3850 2600 2650 2600
Wire Wire Line
	2650 2600 2650 2450
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
Wire Wire Line
	2650 2200 2500 2200
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
Wire Wire Line
	3700 1550 3550 1550
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
Wire Wire Line
	2650 1450 2650 1550
NoConn ~ 3550 2450
Text Label 3550 2150 0    25   ~ 0
CAN_RX
Text Label 3550 2000 0    25   ~ 0
CAN_TX
Text Label 3550 1650 0    25   ~ 0
SCL
Text Label 3550 1800 0    25   ~ 0
SDA
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
F2 "CAN_TX" I L 4300 2000 60 
F3 "CAN_RX" I L 4300 2150 60 
$EndSheet
$Sheet
S 2700 2800 1250 1050
U 5C828B13
F0 "Power Supply" 50
F1 "PowerSupply.sch" 50
$EndSheet
Wire Wire Line
	4300 2000 3550 2000
Wire Wire Line
	4300 2150 3550 2150
$Sheet
S 7000 2850 1950 2150
U 5C73EAFA
F0 "Drivers" 50
F1 "drivers.sch" 50
F2 "SDA" B L 7000 3200 60 
F3 "SCL" I L 7000 3400 60 
$EndSheet
Text Label 7000 3200 2    100  ~ 0
SDA
Text Label 7000 3400 2    100  ~ 0
SCL
Text Label 3550 2200 0    25   ~ 0
Motor 1
Text Label 2650 2150 2    25   ~ 0
Motor 2
Text Label 2650 1750 2    25   ~ 0
Sense 1
Text Label 2650 1800 2    25   ~ 0
Sense 2
$Comp
L TC4428 U7
U 1 1 5CA233CA
P 6650 1100
F 0 "U7" H 6650 800 60  0000 C CNN
F 1 "TC4428" H 6650 1400 60  0000 C CNN
F 2 "~" H 6650 1100 60  0000 C CNN
F 3 "~" H 6650 1100 60  0000 C CNN
	1    6650 1100
	1    0    0    -1  
$EndComp
$Comp
L TC4428 U7
U 2 1 5CA233E5
P 6650 1850
F 0 "U7" H 6650 1550 60  0000 C CNN
F 1 "TC4428" H 6650 2150 60  0000 C CNN
F 2 "~" H 6650 1850 60  0000 C CNN
F 3 "~" H 6650 1850 60  0000 C CNN
	2    6650 1850
	1    0    0    -1  
$EndComp
$Comp
L TC4428 U8
U 1 1 5CA23692
P 8650 1100
F 0 "U8" H 8650 800 60  0000 C CNN
F 1 "TC4428" H 8650 1400 60  0000 C CNN
F 2 "~" H 8650 1100 60  0000 C CNN
F 3 "~" H 8650 1100 60  0000 C CNN
	1    8650 1100
	1    0    0    -1  
$EndComp
$Comp
L TC4428 U8
U 2 1 5CA23698
P 8650 1850
F 0 "U8" H 8650 1550 60  0000 C CNN
F 1 "TC4428" H 8650 2150 60  0000 C CNN
F 2 "~" H 8650 1850 60  0000 C CNN
F 3 "~" H 8650 1850 60  0000 C CNN
	2    8650 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1100 6400 1850
Wire Wire Line
	8400 1100 8400 1850
Text Label 6400 1100 2    25   ~ 0
Motor 1
Text Label 8400 1100 2    25   ~ 0
Motor 2
$Comp
L +12V #PWR05
U 1 1 5CA24547
P 7050 850
F 0 "#PWR05" H 7050 800 20  0001 C CNN
F 1 "+12V" H 7050 950 30  0000 C CNN
F 2 "" H 7050 850 60  0000 C CNN
F 3 "" H 7050 850 60  0000 C CNN
	1    7050 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 900  7050 900 
Wire Wire Line
	6600 900  6600 950 
Wire Wire Line
	7050 900  7050 850 
Wire Wire Line
	7050 850  8600 850 
Wire Wire Line
	8600 850  8600 950 
$Comp
L GND #PWR06
U 1 1 5CA24864
P 7400 2200
F 0 "#PWR06" H 7400 2200 30  0001 C CNN
F 1 "GND" H 7400 2130 30  0001 C CNN
F 2 "" H 7400 2200 60  0000 C CNN
F 3 "" H 7400 2200 60  0000 C CNN
	1    7400 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2150 8600 2050
Wire Wire Line
	6900 2150 8600 2150
Wire Wire Line
	7400 2150 7400 2200
Wire Wire Line
	6900 2150 6900 2050
Wire Wire Line
	6900 2050 6600 2050
Connection ~ 7400 2150
Text Label 7050 1100 0    25   ~ 0
Motor1A
Text Label 7050 1850 0    25   ~ 0
Motor1B
Text Label 9050 1100 0    25   ~ 0
Motor2A
Text Label 9050 1850 0    25   ~ 0
Motor2B
$Comp
L 74HCT00 U9
U 1 1 5CA24A00
P 2400 4800
F 0 "U9" H 2400 4850 60  0000 C CNN
F 1 "74HCT00" H 2400 4700 60  0000 C CNN
F 2 "~" H 2400 4800 60  0000 C CNN
F 3 "~" H 2400 4800 60  0000 C CNN
	1    2400 4800
	1    0    0    -1  
$EndComp
$Comp
L 74HCT00 U9
U 2 1 5CA24A1B
P 2400 5700
F 0 "U9" H 2400 5750 60  0000 C CNN
F 1 "74HCT00" H 2400 5600 60  0000 C CNN
F 2 "~" H 2400 5700 60  0000 C CNN
F 3 "~" H 2400 5700 60  0000 C CNN
	2    2400 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4900 1800 5250
Wire Wire Line
	1800 5250 3000 5250
Wire Wire Line
	3000 5250 3000 5700
Wire Wire Line
	3000 4800 3000 5150
Wire Wire Line
	3000 5150 1650 5150
Wire Wire Line
	1650 5150 1650 5600
Wire Wire Line
	1650 5600 1800 5600
$Comp
L RR4 RR2
U 1 1 5CA24B64
P 2000 3600
F 0 "RR2" H 2050 3900 70  0000 C CNN
F 1 "10K Ohms" V 2050 3600 70  0000 C CNN
F 2 "~" H 2000 3350 60  0000 C CNN
F 3 "~" H 2000 3350 60  0000 C CNN
	1    2000 3600
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR07
U 1 1 5CA24B9C
P 1650 3200
F 0 "#PWR07" H 1650 3160 30  0001 C CNN
F 1 "3V3" H 1650 3310 30  0000 C CNN
F 2 "" H 1650 3200 60  0000 C CNN
F 3 "" H 1650 3200 60  0000 C CNN
	1    1650 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3200 1650 3400
$Comp
L 3V3 #PWR08
U 1 1 5CA24E3E
P 2200 4300
F 0 "#PWR08" H 2200 4400 40  0001 C CNN
F 1 "3V3" H 2200 4425 40  0000 C CNN
F 2 "" H 2200 4300 60  0000 C CNN
F 3 "" H 2200 4300 60  0000 C CNN
	1    2200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4300 2200 4600
Wire Wire Line
	1800 4700 1250 4700
Wire Wire Line
	1250 4700 1250 3500
Wire Wire Line
	1250 3500 1650 3500
Wire Wire Line
	1800 5800 1300 5800
Wire Wire Line
	1300 5800 1300 3600
Wire Wire Line
	1300 3600 1650 3600
Text Label 1250 3500 2    25   ~ 0
Sense1A
Text Label 1300 3600 2    25   ~ 0
Sense1B
Text Label 3000 4800 0    25   ~ 0
Sense 1
$Comp
L 74HCT00 U9
U 3 1 5CA253B0
P 4900 4800
F 0 "U9" H 4900 4850 60  0000 C CNN
F 1 "74HCT00" H 4900 4700 60  0000 C CNN
F 2 "~" H 4900 4800 60  0000 C CNN
F 3 "~" H 4900 4800 60  0000 C CNN
	3    4900 4800
	1    0    0    -1  
$EndComp
$Comp
L 74HCT00 U9
U 4 1 5CA253B6
P 4900 5700
F 0 "U9" H 4900 5750 60  0000 C CNN
F 1 "74HCT00" H 4900 5600 60  0000 C CNN
F 2 "~" H 4900 5700 60  0000 C CNN
F 3 "~" H 4900 5700 60  0000 C CNN
	4    4900 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4900 4300 5250
Wire Wire Line
	4300 5250 5500 5250
Wire Wire Line
	5500 5250 5500 5700
Wire Wire Line
	5500 4800 5500 5150
Wire Wire Line
	5500 5150 4150 5150
Wire Wire Line
	4150 5150 4150 5600
Wire Wire Line
	4150 5600 4300 5600
Wire Wire Line
	4300 4700 3750 4700
Wire Wire Line
	4300 5800 3800 5800
Text Label 5500 4800 0    25   ~ 0
Sense 2
$Comp
L GND #PWR09
U 1 1 5CA2542A
P 4700 6100
F 0 "#PWR09" H 4700 6100 30  0001 C CNN
F 1 "GND" H 4700 6030 30  0001 C CNN
F 2 "" H 4700 6100 60  0000 C CNN
F 3 "" H 4700 6100 60  0000 C CNN
	1    4700 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5900 4700 6100
Wire Wire Line
	1650 3700 1350 3700
Wire Wire Line
	1350 3700 1350 4100
Wire Wire Line
	1350 4100 3750 4100
Wire Wire Line
	3750 4100 3750 4700
Wire Wire Line
	1650 3800 1400 3800
Wire Wire Line
	1400 3800 1400 6200
Wire Wire Line
	1400 6200 3800 6200
Wire Wire Line
	3800 6200 3800 5800
Text Label 1350 3700 2    25   ~ 0
Sense2A
Text Label 1400 3800 2    25   ~ 0
Sense2B
$Comp
L C C7
U 1 1 5CA25DF1
P 3650 5100
F 0 "C7" H 3650 5200 40  0000 L CNN
F 1 ".1 uf" H 3656 5015 40  0000 L CNN
F 2 "~" H 3688 4950 30  0000 C CNN
F 3 "~" H 3650 5100 60  0000 C CNN
	1    3650 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4900 3650 4450
Wire Wire Line
	3650 4450 2200 4450
Connection ~ 2200 4450
Wire Wire Line
	3650 5300 3650 6000
Wire Wire Line
	3650 6000 4700 6000
Connection ~ 4700 6000
Text Label 2650 2000 2    25   ~ 0
OD1
$Sheet
S 6950 5750 1700 1100
U 5CA26382
F0 "Occupency Detector 1" 50
F1 "OD1.sch" 50
F2 "OD1" I L 6950 6100 60 
$EndSheet
Text Label 6950 6100 2    25   ~ 0
OD1
$Comp
L CONN_5 T4
U 1 1 5CA23486
P 10950 1050
F 0 "T4" V 10900 1050 50  0000 C CNN
F 1 "Motor 1" V 11000 1050 50  0000 C CNN
F 2 "" H 10950 1050 60  0000 C CNN
F 3 "" H 10950 1050 60  0000 C CNN
	1    10950 1050
	1    0    0    -1  
$EndComp
$Comp
L CONN_5 T5
U 1 1 5CA234A4
P 10950 2050
F 0 "T5" V 10900 2050 50  0000 C CNN
F 1 "Motor 2" V 11000 2050 50  0000 C CNN
F 2 "" H 10950 2050 60  0000 C CNN
F 3 "" H 10950 2050 60  0000 C CNN
	1    10950 2050
	1    0    0    -1  
$EndComp
Text Label 10550 850  2    25   ~ 0
Motor1A
Text Label 10550 950  2    25   ~ 0
Motor1B
Text Label 10550 1050 2    25   ~ 0
Sense1A
Text Label 10550 1250 2    25   ~ 0
Sense1B
Text Label 10550 1850 2    25   ~ 0
Motor2A
Text Label 10550 1950 2    25   ~ 0
Motor2B
Text Label 10550 2050 2    25   ~ 0
Sense2A
Text Label 10550 2250 2    25   ~ 0
Sense2B
Wire Wire Line
	10550 1150 10150 1150
Wire Wire Line
	10150 1150 10150 2400
Wire Wire Line
	10150 2150 10550 2150
$Comp
L GND #PWR010
U 1 1 5CA23630
P 10150 2400
F 0 "#PWR010" H 10150 2400 30  0001 C CNN
F 1 "GND" H 10150 2330 30  0001 C CNN
F 2 "" H 10150 2400 60  0000 C CNN
F 3 "" H 10150 2400 60  0000 C CNN
	1    10150 2400
	1    0    0    -1  
$EndComp
Connection ~ 10150 2150
$Sheet
S 9150 5800 1700 1100
U 5CA368DE
F0 "Occupency Detector 2" 50
F1 "OD2.sch" 50
F2 "OD2" I L 9150 6150 60 
$EndSheet
Text Label 9150 6150 2    25   ~ 0
OD2
Text Label 2650 2050 2    25   ~ 0
OD2
$EndSCHEMATC
