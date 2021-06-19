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
LIBS:esp32_devboards
LIBS:sn65hvd233-ht
LIBS:lm2574n-5
LIBS:MCP23xxx
LIBS:tbd62x83a
LIBS:tc442x
LIBS:mct6h
LIBS:bridge
LIBS:pca9685
LIBS:4814p-2
LIBS:mechanical
LIBS:graphic_symbols
LIBS:references
LIBS:ESP32-MultiFunction-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
Title "ESP32 Multifunction board"
Date ""
Rev ""
Comp "Deepwoods Software"
Comment1 "Occupancy Detectors"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Screw_Terminal_01x08 Term?
U 1 1 60CE0540
P 800 3450
F 0 "Term?" H 800 3850 50  0000 C CNN
F 1 "1A 1B 2A 2B 3A 3B 4A 4B" H 800 2950 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_8pol" H 800 3450 50  0001 C CNN
F 3 "" H 800 3450 50  0001 C CNN
F 4 " 651-1725711" H 800 3450 60  0001 C CNN "Mouser Part Number"
	1    800  3450
	-1   0    0    -1  
$EndComp
$Comp
L LM339 U?
U 1 1 60CE0AD4
P 3300 1600
F 0 "U?" H 3300 1800 50  0000 L CNN
F 1 "LM339" H 3300 1400 50  0000 L CNN
F 2 "" H 3250 1700 50  0001 C CNN
F 3 "" H 3350 1800 50  0001 C CNN
	1    3300 1600
	1    0    0    -1  
$EndComp
$Comp
L LM339 U?
U 2 1 60CE0B71
P 4450 1700
F 0 "U?" H 4450 1900 50  0000 L CNN
F 1 "LM339" H 4450 1500 50  0000 L CNN
F 2 "" H 4400 1800 50  0001 C CNN
F 3 "" H 4500 1900 50  0001 C CNN
	2    4450 1700
	1    0    0    -1  
$EndComp
$Comp
L LM339 U?
U 3 1 60CE0B8C
P 3300 2900
F 0 "U?" H 3300 3100 50  0000 L CNN
F 1 "LM339" H 3300 2700 50  0000 L CNN
F 2 "" H 3250 3000 50  0001 C CNN
F 3 "" H 3350 3100 50  0001 C CNN
	3    3300 2900
	1    0    0    -1  
$EndComp
$Comp
L LM339 U?
U 4 1 60CE0BA9
P 4500 3000
F 0 "U?" H 4500 3200 50  0000 L CNN
F 1 "LM339" H 4500 2800 50  0000 L CNN
F 2 "" H 4450 3100 50  0001 C CNN
F 3 "" H 4550 3200 50  0001 C CNN
	4    4500 3000
	1    0    0    -1  
$EndComp
$Comp
L LM339 U?
U 1 1 60CE0BC8
P 3300 4100
F 0 "U?" H 3300 4300 50  0000 L CNN
F 1 "LM339" H 3300 3900 50  0000 L CNN
F 2 "" H 3250 4200 50  0001 C CNN
F 3 "" H 3350 4300 50  0001 C CNN
	1    3300 4100
	1    0    0    -1  
$EndComp
$Comp
L LM339 U?
U 2 1 60CE0BE9
P 4500 4200
F 0 "U?" H 4500 4400 50  0000 L CNN
F 1 "LM339" H 4500 4000 50  0000 L CNN
F 2 "" H 4450 4300 50  0001 C CNN
F 3 "" H 4550 4400 50  0001 C CNN
	2    4500 4200
	1    0    0    -1  
$EndComp
$Comp
L LM339 U?
U 3 1 60CE0C0C
P 3300 5500
F 0 "U?" H 3300 5700 50  0000 L CNN
F 1 "LM339" H 3300 5300 50  0000 L CNN
F 2 "" H 3250 5600 50  0001 C CNN
F 3 "" H 3350 5700 50  0001 C CNN
	3    3300 5500
	1    0    0    -1  
$EndComp
$Comp
L LM339 U?
U 4 1 60CE0C31
P 4500 5600
F 0 "U?" H 4500 5800 50  0000 L CNN
F 1 "LM339" H 4500 5400 50  0000 L CNN
F 2 "" H 4450 5700 50  0001 C CNN
F 3 "" H 4550 5800 50  0001 C CNN
	4    4500 5600
	1    0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 60CE1CF0
P 2300 1850
F 0 "D?" H 2200 1950 50  0000 C CNN
F 1 "1N4148" H 2300 1750 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 2300 1850 50  0001 C CNN
F 3 "" H 2300 1850 50  0001 C CNN
F 4 "750-1N4148WS-HF" H 2300 1850 60  0001 C CNN "Mouser Part Number"
	1    2300 1850
	0    1    1    0   
$EndComp
$Comp
L D D?
U 1 1 60CE1D48
P 2500 1850
F 0 "D?" H 2400 1950 50  0000 C CNN
F 1 "1N4148" H 2500 1750 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 2500 1850 50  0001 C CNN
F 3 "" H 2500 1850 50  0001 C CNN
F 4 "750-1N4148WS-HF" H 2500 1850 60  0001 C CNN "Mouser Part Number"
	1    2500 1850
	0    -1   -1   0   
$EndComp
$Comp
L D D?
U 1 1 60CE2157
P 2300 3150
F 0 "D?" H 2200 3250 50  0000 C CNN
F 1 "1N4148" H 2300 3050 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 2300 3150 50  0001 C CNN
F 3 "" H 2300 3150 50  0001 C CNN
F 4 "750-1N4148WS-HF" H 2300 3150 60  0001 C CNN "Mouser Part Number"
	1    2300 3150
	0    1    1    0   
$EndComp
$Comp
L D D?
U 1 1 60CE215E
P 2500 3150
F 0 "D?" H 2400 3250 50  0000 C CNN
F 1 "1N4148" H 2500 3050 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 2500 3150 50  0001 C CNN
F 3 "" H 2500 3150 50  0001 C CNN
F 4 "750-1N4148WS-HF" H 2500 3150 60  0001 C CNN "Mouser Part Number"
	1    2500 3150
	0    -1   -1   0   
$EndComp
$Comp
L D D?
U 1 1 60CE262A
P 2300 4350
F 0 "D?" H 2200 4450 50  0000 C CNN
F 1 "1N4148" H 2300 4250 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 2300 4350 50  0001 C CNN
F 3 "" H 2300 4350 50  0001 C CNN
F 4 "750-1N4148WS-HF" H 2300 4350 60  0001 C CNN "Mouser Part Number"
	1    2300 4350
	0    1    1    0   
$EndComp
$Comp
L D D?
U 1 1 60CE2631
P 2500 4350
F 0 "D?" H 2400 4450 50  0000 C CNN
F 1 "1N4148" H 2500 4250 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 2500 4350 50  0001 C CNN
F 3 "" H 2500 4350 50  0001 C CNN
F 4 "750-1N4148WS-HF" H 2500 4350 60  0001 C CNN "Mouser Part Number"
	1    2500 4350
	0    -1   -1   0   
$EndComp
$Comp
L D D?
U 1 1 60CE2A21
P 2300 5750
F 0 "D?" H 2200 5850 50  0000 C CNN
F 1 "1N4148" H 2300 5650 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 2300 5750 50  0001 C CNN
F 3 "" H 2300 5750 50  0001 C CNN
F 4 "750-1N4148WS-HF" H 2300 5750 60  0001 C CNN "Mouser Part Number"
	1    2300 5750
	0    1    1    0   
$EndComp
$Comp
L D D?
U 1 1 60CE2A28
P 2500 5750
F 0 "D?" H 2400 5850 50  0000 C CNN
F 1 "1N4148" H 2500 5650 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 2500 5750 50  0001 C CNN
F 3 "" H 2500 5750 50  0001 C CNN
F 4 "750-1N4148WS-HF" H 2500 5750 60  0001 C CNN "Mouser Part Number"
	1    2500 5750
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 60CE34AF
P 2800 1150
F 0 "R?" V 2880 1150 50  0000 C CNN
F 1 "22K Ohms" V 2800 1150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2730 1150 50  0001 C CNN
F 3 "" H 2800 1150 50  0001 C CNN
F 4 "71-RCG060322K0JNEA" V 2800 1150 60  0001 C CNN "Mouser Part Number"
	1    2800 1150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 60CE5BAB
P 2800 2500
F 0 "R?" V 2880 2500 50  0000 C CNN
F 1 "22K Ohms" V 2800 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2730 2500 50  0001 C CNN
F 3 "" H 2800 2500 50  0001 C CNN
F 4 "71-RCG060322K0JNEA" V 2800 2500 60  0001 C CNN "Mouser Part Number"
	1    2800 2500
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 60CE5C5E
P 2800 3700
F 0 "R?" V 2880 3700 50  0000 C CNN
F 1 "22K Ohms" V 2800 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2730 3700 50  0001 C CNN
F 3 "" H 2800 3700 50  0001 C CNN
F 4 "71-RCG060322K0JNEA" V 2800 3700 60  0001 C CNN "Mouser Part Number"
	1    2800 3700
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 60CE5F62
P 2800 5100
F 0 "R?" V 2880 5100 50  0000 C CNN
F 1 "22K Ohms" V 2800 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2730 5100 50  0001 C CNN
F 3 "" H 2800 5100 50  0001 C CNN
F 4 "71-RCG060322K0JNEA" V 2800 5100 60  0001 C CNN "Mouser Part Number"
	1    2800 5100
	1    0    0    -1  
$EndComp
$Comp
L POT_TRIM RV?
U 1 1 60CE6CA3
P 2800 2000
F 0 "RV?" V 2625 2000 50  0000 C CNN
F 1 "25K Ohms" V 2700 2000 50  0000 C CNN
F 2 "3361P-1-253GLF:3361P1253GLF" H 2800 2000 50  0001 C CNN
F 3 "" H 2800 2000 50  0001 C CNN
F 4 "652-3361P-1-253GLF" V 2800 2000 60  0001 C CNN "Mouser Part Number"
	1    2800 2000
	-1   0    0    1   
$EndComp
$Comp
L POT_TRIM RV?
U 1 1 60CE6EFB
P 2800 3300
F 0 "RV?" V 2625 3300 50  0000 C CNN
F 1 "25K Ohms" V 2700 3300 50  0000 C CNN
F 2 "3361P-1-253GLF:3361P1253GLF" H 2800 3300 50  0001 C CNN
F 3 "" H 2800 3300 50  0001 C CNN
F 4 "652-3361P-1-253GLF" V 2800 3300 60  0001 C CNN "Mouser Part Number"
	1    2800 3300
	-1   0    0    1   
$EndComp
$Comp
L POT_TRIM RV?
U 1 1 60CE703E
P 2800 4500
F 0 "RV?" V 2625 4500 50  0000 C CNN
F 1 "25K Ohms" V 2700 4500 50  0000 C CNN
F 2 "3361P-1-253GLF:3361P1253GLF" H 2800 4500 50  0001 C CNN
F 3 "" H 2800 4500 50  0001 C CNN
F 4 "652-3361P-1-253GLF" V 2800 4500 60  0001 C CNN "Mouser Part Number"
	1    2800 4500
	-1   0    0    1   
$EndComp
$Comp
L POT_TRIM RV?
U 1 1 60CE735A
P 2800 5900
F 0 "RV?" V 2625 5900 50  0000 C CNN
F 1 "25K Ohms" V 2700 5900 50  0000 C CNN
F 2 "3361P-1-253GLF:3361P1253GLF" H 2800 5900 50  0001 C CNN
F 3 "" H 2800 5900 50  0001 C CNN
F 4 "652-3361P-1-253GLF" V 2800 5900 60  0001 C CNN "Mouser Part Number"
	1    2800 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 3850 1350 5900
Wire Wire Line
	1350 3850 1000 3850
Connection ~ 2300 5900
Wire Wire Line
	1400 3750 1400 5600
Wire Wire Line
	1400 3750 1000 3750
Connection ~ 2300 5600
Wire Wire Line
	1500 3700 1500 4500
Wire Wire Line
	1500 3700 1000 3700
Wire Wire Line
	1000 3700 1000 3650
Connection ~ 2300 4500
Wire Wire Line
	1550 3550 1550 4200
Wire Wire Line
	1550 3550 1000 3550
Connection ~ 2300 4200
Wire Wire Line
	1750 3350 1000 3350
Connection ~ 2300 3000
Wire Wire Line
	1500 3250 1000 3250
Connection ~ 2300 2000
Wire Wire Line
	1300 3150 1000 3150
Connection ~ 2300 1700
Wire Wire Line
	1300 1700 3000 1700
Wire Wire Line
	1300 1700 1300 3150
Connection ~ 2500 1700
Wire Wire Line
	1500 2000 2650 2000
Wire Wire Line
	1500 2000 1500 3250
Wire Wire Line
	1750 3000 3000 3000
Connection ~ 2500 3000
Wire Wire Line
	1750 3000 1750 3350
Wire Wire Line
	2300 3300 2300 3450
Wire Wire Line
	2300 3450 1000 3450
Wire Wire Line
	2300 3300 2650 3300
Wire Wire Line
	1550 4200 3000 4200
Connection ~ 2500 4200
Wire Wire Line
	1500 4500 2650 4500
Wire Wire Line
	1400 5600 3000 5600
Connection ~ 2500 5600
Wire Wire Line
	1350 5900 2650 5900
Wire Wire Line
	2800 1300 2800 1850
Wire Wire Line
	2800 1500 3000 1500
Wire Wire Line
	2800 2650 2800 3150
Wire Wire Line
	2800 2800 3000 2800
Wire Wire Line
	2800 3850 2800 4350
Wire Wire Line
	2800 4000 3000 4000
Wire Wire Line
	2800 5250 2800 5750
Wire Wire Line
	2800 5400 3000 5400
Connection ~ 2500 2000
Connection ~ 2500 3300
Connection ~ 2500 4500
Connection ~ 2500 5900
Connection ~ 2800 5400
Connection ~ 2800 4000
Connection ~ 2800 1500
Wire Wire Line
	4150 1800 2800 1800
Connection ~ 2800 1800
Connection ~ 2800 2800
Wire Wire Line
	4200 3100 2800 3100
Connection ~ 2800 3100
Wire Wire Line
	4200 4300 2800 4300
Connection ~ 2800 4300
Wire Wire Line
	4200 5700 2800 5700
Connection ~ 2800 5700
Wire Wire Line
	3600 5500 4200 5500
Wire Wire Line
	3600 4100 4200 4100
Wire Wire Line
	4150 1600 3600 1600
Wire Wire Line
	4200 2900 3600 2900
Wire Wire Line
	2800 1000 3200 1000
Wire Wire Line
	3200 1000 3200 1300
Wire Wire Line
	2800 2350 3200 2350
Wire Wire Line
	3200 2350 3200 2600
Wire Wire Line
	2800 3550 3200 3550
Wire Wire Line
	3200 3550 3200 3800
Wire Wire Line
	2800 4950 3200 4950
Wire Wire Line
	3200 4950 3200 5200
Wire Wire Line
	2800 6050 3200 6050
Wire Wire Line
	3200 6050 3200 5800
Wire Wire Line
	2800 4650 3200 4650
Wire Wire Line
	3200 4650 3200 4400
Wire Wire Line
	2800 3450 3200 3450
Wire Wire Line
	3200 3450 3200 3200
Wire Wire Line
	2800 2150 3200 2150
Wire Wire Line
	3200 2150 3200 1900
$EndSCHEMATC
