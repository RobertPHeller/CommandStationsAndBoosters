EESchema Schematic File Version 2
LIBS:ESP32-D0WD-V3-MultiFunction-rescue
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
LIBS:ESP32-D0WD-V3
LIBS:W25Q32JVSSIQ
LIBS:umh3n
LIBS:lm2574n-5
LIBS:tc442x
LIBS:4814p-2
LIBS:pca9685
LIBS:tbd62x83a
LIBS:sn65hvd233-ht
LIBS:mechanical
LIBS:graphic_symbols
LIBS:ESP32-D0WD-V3-MultiFunction-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 8
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
L Screw_Terminal_01x08 Term601
U 1 1 62AFEB0A
P 800 3450
F 0 "Term601" H 800 3850 50  0000 C CNN
F 1 "4B 4A 3B 3A 2B 2A 1B 1A" H 800 2950 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_8pol" H 800 3450 50  0001 C CNN
F 3 "" H 800 3450 50  0001 C CNN
F 4 " 651-1725711" H 800 3450 60  0001 C CNN "Mouser Part Number"
	1    800  3450
	-1   0    0    -1  
$EndComp
$Comp
L LM339 U601
U 1 1 62AFEB0B
P 3300 1600
F 0 "U601" H 3300 1800 50  0000 L CNN
F 1 "LM339" H 3300 1400 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 3250 1700 50  0001 C CNN
F 3 "" H 3350 1800 50  0001 C CNN
	1    3300 1600
	1    0    0    -1  
$EndComp
$Comp
L LM339 U602
U 1 1 62AFEB0C
P 4450 1700
F 0 "U602" H 4450 1900 50  0000 L CNN
F 1 "LM339" H 4450 1500 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 4400 1800 50  0001 C CNN
F 3 "" H 4500 1900 50  0001 C CNN
	1    4450 1700
	1    0    0    -1  
$EndComp
$Comp
L LM339 U601
U 2 1 62AFEB0D
P 3300 2900
F 0 "U601" H 3300 3100 50  0000 L CNN
F 1 "LM339" H 3300 2700 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 3250 3000 50  0001 C CNN
F 3 "" H 3350 3100 50  0001 C CNN
	2    3300 2900
	1    0    0    -1  
$EndComp
$Comp
L LM339 U602
U 2 1 62AFEB0E
P 4500 3000
F 0 "U602" H 4500 3200 50  0000 L CNN
F 1 "LM339" H 4500 2800 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 4450 3100 50  0001 C CNN
F 3 "" H 4550 3200 50  0001 C CNN
	2    4500 3000
	1    0    0    -1  
$EndComp
$Comp
L LM339 U601
U 3 1 62AFEB0F
P 3300 4100
F 0 "U601" H 3300 4300 50  0000 L CNN
F 1 "LM339" H 3300 3900 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 3250 4200 50  0001 C CNN
F 3 "" H 3350 4300 50  0001 C CNN
	3    3300 4100
	1    0    0    -1  
$EndComp
$Comp
L LM339 U602
U 3 1 62AFEB10
P 4500 4200
F 0 "U602" H 4500 4400 50  0000 L CNN
F 1 "LM339" H 4500 4000 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 4450 4300 50  0001 C CNN
F 3 "" H 4550 4400 50  0001 C CNN
	3    4500 4200
	1    0    0    -1  
$EndComp
$Comp
L LM339 U601
U 4 1 62AFEB11
P 3300 5500
F 0 "U601" H 3300 5700 50  0000 L CNN
F 1 "LM339" H 3300 5300 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 3250 5600 50  0001 C CNN
F 3 "" H 3350 5700 50  0001 C CNN
	4    3300 5500
	1    0    0    -1  
$EndComp
$Comp
L LM339 U602
U 4 1 62AFEB12
P 4500 5600
F 0 "U602" H 4500 5800 50  0000 L CNN
F 1 "LM339" H 4500 5400 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 4450 5700 50  0001 C CNN
F 3 "" H 4550 5800 50  0001 C CNN
	4    4500 5600
	1    0    0    -1  
$EndComp
$Comp
L D D601
U 1 1 62AFEB13
P 2300 1850
F 0 "D601" H 2200 1950 50  0000 C CNN
F 1 "1N4148" H 2300 1750 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 2300 1850 50  0001 C CNN
F 3 "" H 2300 1850 50  0001 C CNN
F 4 "750-1N4148WS-HF" H 2300 1850 60  0001 C CNN "Mouser Part Number"
	1    2300 1850
	0    1    1    0   
$EndComp
$Comp
L D D605
U 1 1 62AFEB14
P 2500 1850
F 0 "D605" H 2400 1950 50  0000 C CNN
F 1 "1N4148" H 2500 1750 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 2500 1850 50  0001 C CNN
F 3 "" H 2500 1850 50  0001 C CNN
F 4 "750-1N4148WS-HF" H 2500 1850 60  0001 C CNN "Mouser Part Number"
	1    2500 1850
	0    -1   -1   0   
$EndComp
$Comp
L D D602
U 1 1 62AFEB15
P 2300 3150
F 0 "D602" H 2200 3250 50  0000 C CNN
F 1 "1N4148" H 2300 3050 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 2300 3150 50  0001 C CNN
F 3 "" H 2300 3150 50  0001 C CNN
F 4 "750-1N4148WS-HF" H 2300 3150 60  0001 C CNN "Mouser Part Number"
	1    2300 3150
	0    1    1    0   
$EndComp
$Comp
L D D606
U 1 1 62AFEB16
P 2500 3150
F 0 "D606" H 2400 3250 50  0000 C CNN
F 1 "1N4148" H 2500 3050 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 2500 3150 50  0001 C CNN
F 3 "" H 2500 3150 50  0001 C CNN
F 4 "750-1N4148WS-HF" H 2500 3150 60  0001 C CNN "Mouser Part Number"
	1    2500 3150
	0    -1   -1   0   
$EndComp
$Comp
L D D603
U 1 1 62AFEB17
P 2300 4350
F 0 "D603" H 2200 4450 50  0000 C CNN
F 1 "1N4148" H 2300 4250 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 2300 4350 50  0001 C CNN
F 3 "" H 2300 4350 50  0001 C CNN
F 4 "750-1N4148WS-HF" H 2300 4350 60  0001 C CNN "Mouser Part Number"
	1    2300 4350
	0    1    1    0   
$EndComp
$Comp
L D D607
U 1 1 62AFEB18
P 2500 4350
F 0 "D607" H 2400 4450 50  0000 C CNN
F 1 "1N4148" H 2500 4250 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 2500 4350 50  0001 C CNN
F 3 "" H 2500 4350 50  0001 C CNN
F 4 "750-1N4148WS-HF" H 2500 4350 60  0001 C CNN "Mouser Part Number"
	1    2500 4350
	0    -1   -1   0   
$EndComp
$Comp
L D D604
U 1 1 62AFEB19
P 2300 5750
F 0 "D604" H 2200 5850 50  0000 C CNN
F 1 "1N4148" H 2300 5650 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 2300 5750 50  0001 C CNN
F 3 "" H 2300 5750 50  0001 C CNN
F 4 "750-1N4148WS-HF" H 2300 5750 60  0001 C CNN "Mouser Part Number"
	1    2300 5750
	0    1    1    0   
$EndComp
$Comp
L D D608
U 1 1 62AFEB1A
P 2500 5750
F 0 "D608" H 2400 5850 50  0000 C CNN
F 1 "1N4148" H 2500 5650 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 2500 5750 50  0001 C CNN
F 3 "" H 2500 5750 50  0001 C CNN
F 4 "750-1N4148WS-HF" H 2500 5750 60  0001 C CNN "Mouser Part Number"
	1    2500 5750
	0    -1   -1   0   
$EndComp
$Comp
L R R601
U 1 1 62AFEB1B
P 2800 1150
F 0 "R601" V 2880 1150 50  0000 C CNN
F 1 "22K Ohms" V 2800 1150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2730 1150 50  0001 C CNN
F 3 "" H 2800 1150 50  0001 C CNN
F 4 "71-RCG060322K0JNEA" V 2800 1150 60  0001 C CNN "Mouser Part Number"
	1    2800 1150
	1    0    0    -1  
$EndComp
$Comp
L R R602
U 1 1 62AFEB1C
P 2800 2500
F 0 "R602" V 2880 2500 50  0000 C CNN
F 1 "22K Ohms" V 2800 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2730 2500 50  0001 C CNN
F 3 "" H 2800 2500 50  0001 C CNN
F 4 "71-RCG060322K0JNEA" V 2800 2500 60  0001 C CNN "Mouser Part Number"
	1    2800 2500
	1    0    0    -1  
$EndComp
$Comp
L R R603
U 1 1 62AFEB1D
P 2800 3700
F 0 "R603" V 2880 3700 50  0000 C CNN
F 1 "22K Ohms" V 2800 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2730 3700 50  0001 C CNN
F 3 "" H 2800 3700 50  0001 C CNN
F 4 "71-RCG060322K0JNEA" V 2800 3700 60  0001 C CNN "Mouser Part Number"
	1    2800 3700
	1    0    0    -1  
$EndComp
$Comp
L R R604
U 1 1 62AFEB1E
P 2800 5100
F 0 "R604" V 2880 5100 50  0000 C CNN
F 1 "22K Ohms" V 2800 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2730 5100 50  0001 C CNN
F 3 "" H 2800 5100 50  0001 C CNN
F 4 "71-RCG060322K0JNEA" V 2800 5100 60  0001 C CNN "Mouser Part Number"
	1    2800 5100
	1    0    0    -1  
$EndComp
$Comp
L POT_TRIM RV601
U 1 1 62AFEB1F
P 2800 2000
F 0 "RV601" V 2625 2000 50  0000 C CNN
F 1 "25K Ohms" V 2700 2000 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3214J" H 2800 2000 50  0001 C CNN
F 3 "" H 2800 2000 50  0001 C CNN
F 4 "652-3314J-1-253E" V 2800 2000 60  0001 C CNN "Mouser Part Number"
	1    2800 2000
	-1   0    0    1   
$EndComp
$Comp
L POT_TRIM RV602
U 1 1 62AFEB20
P 2800 3300
F 0 "RV602" V 2625 3300 50  0000 C CNN
F 1 "25K Ohms" V 2700 3300 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3214J" H 2800 3300 50  0001 C CNN
F 3 "" H 2800 3300 50  0001 C CNN
F 4 "652-3314J-1-253E" V 2800 3300 60  0001 C CNN "Mouser Part Number"
	1    2800 3300
	-1   0    0    1   
$EndComp
$Comp
L POT_TRIM RV603
U 1 1 62AFEB21
P 2800 4500
F 0 "RV603" V 2625 4500 50  0000 C CNN
F 1 "25K Ohms" V 2700 4500 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3214J" H 2800 4500 50  0001 C CNN
F 3 "" H 2800 4500 50  0001 C CNN
F 4 "652-3314J-1-253E" V 2800 4500 60  0001 C CNN "Mouser Part Number"
	1    2800 4500
	-1   0    0    1   
$EndComp
$Comp
L POT_TRIM RV604
U 1 1 62AFEB22
P 2800 5900
F 0 "RV604" V 2625 5900 50  0000 C CNN
F 1 "25K Ohms" V 2700 5900 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3214J" H 2800 5900 50  0001 C CNN
F 3 "" H 2800 5900 50  0001 C CNN
F 4 "652-3314J-1-253E" V 2800 5900 60  0001 C CNN "Mouser Part Number"
	1    2800 5900
	-1   0    0    1   
$EndComp
$Comp
L R R605
U 1 1 62AFEB23
P 3850 1250
F 0 "R605" V 3930 1250 50  0000 C CNN
F 1 "1M Ohms" V 3850 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3780 1250 50  0001 C CNN
F 3 "" H 3850 1250 50  0001 C CNN
F 4 "71-CRCW06031M00JNEAC" V 3850 1250 60  0001 C CNN "Mouser Part Number"
	1    3850 1250
	1    0    0    -1  
$EndComp
$Comp
L R R606
U 1 1 62AFEB24
P 3850 2450
F 0 "R606" V 3930 2450 50  0000 C CNN
F 1 "1M Ohms" V 3850 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3780 2450 50  0001 C CNN
F 3 "" H 3850 2450 50  0001 C CNN
F 4 "71-CRCW06031M00JNEAC" V 3850 2450 60  0001 C CNN "Mouser Part Number"
	1    3850 2450
	1    0    0    -1  
$EndComp
$Comp
L R R607
U 1 1 62AFEB25
P 3850 3600
F 0 "R607" V 3930 3600 50  0000 C CNN
F 1 "1M Ohms" V 3850 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3780 3600 50  0001 C CNN
F 3 "" H 3850 3600 50  0001 C CNN
F 4 "71-CRCW06031M00JNEAC" V 3850 3600 60  0001 C CNN "Mouser Part Number"
	1    3850 3600
	1    0    0    -1  
$EndComp
$Comp
L R R608
U 1 1 62AFEB26
P 3850 5050
F 0 "R608" V 3930 5050 50  0000 C CNN
F 1 "1M Ohms" V 3850 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3780 5050 50  0001 C CNN
F 3 "" H 3850 5050 50  0001 C CNN
F 4 "71-CRCW06031M00JNEAC" V 3850 5050 60  0001 C CNN "Mouser Part Number"
	1    3850 5050
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C601
U 1 1 62AFEB27
P 3850 2050
F 0 "C601" H 3860 2120 50  0000 L CNN
F 1 "2.2uf 50V" H 3860 1970 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.7" H 3850 2050 50  0001 C CNN
F 3 "" H 3850 2050 50  0001 C CNN
F 4 "710-865080140002" H 3850 2050 60  0001 C CNN "Mouser Part Number"
	1    3850 2050
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C602
U 1 1 62AFEB28
P 3850 3250
F 0 "C602" H 3860 3320 50  0000 L CNN
F 1 "2.2uf 50V" H 3860 3170 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.7" H 3850 3250 50  0001 C CNN
F 3 "" H 3850 3250 50  0001 C CNN
F 4 "710-865080140002" H 3850 3250 60  0001 C CNN "Mouser Part Number"
	1    3850 3250
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C603
U 1 1 62AFEB29
P 3850 4550
F 0 "C603" H 3860 4620 50  0000 L CNN
F 1 "2.2uf 50V" H 3860 4470 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.7" H 3850 4550 50  0001 C CNN
F 3 "" H 3850 4550 50  0001 C CNN
F 4 "710-865080140002" H 3850 4550 60  0001 C CNN "Mouser Part Number"
	1    3850 4550
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C604
U 1 1 62AFEB2A
P 3850 5950
F 0 "C604" H 3860 6020 50  0000 L CNN
F 1 "2.2uf 50V" H 3860 5870 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.7" H 3850 5950 50  0001 C CNN
F 3 "" H 3850 5950 50  0001 C CNN
F 4 "710-865080140002" H 3850 5950 60  0001 C CNN "Mouser Part Number"
	1    3850 5950
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR055
U 1 1 62AFEB2B
P 3850 850
F 0 "#PWR055" H 3850 700 50  0001 C CNN
F 1 "+3V3" H 3850 990 50  0000 C CNN
F 2 "" H 3850 850 50  0001 C CNN
F 3 "" H 3850 850 50  0001 C CNN
	1    3850 850 
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR056
U 1 1 62AFEB2C
P 4100 2250
F 0 "#PWR056" H 4100 2100 50  0001 C CNN
F 1 "+3V3" H 4100 2390 50  0000 C CNN
F 2 "" H 4100 2250 50  0001 C CNN
F 3 "" H 4100 2250 50  0001 C CNN
	1    4100 2250
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR057
U 1 1 62AFEB2D
P 4200 3400
F 0 "#PWR057" H 4200 3250 50  0001 C CNN
F 1 "+3V3" H 4200 3540 50  0000 C CNN
F 2 "" H 4200 3400 50  0001 C CNN
F 3 "" H 4200 3400 50  0001 C CNN
	1    4200 3400
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR058
U 1 1 62AFEB2E
P 4400 4800
F 0 "#PWR058" H 4400 4650 50  0001 C CNN
F 1 "+3V3" H 4400 4940 50  0000 C CNN
F 2 "" H 4400 4800 50  0001 C CNN
F 3 "" H 4400 4800 50  0001 C CNN
	1    4400 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR059
U 1 1 62AFEB2F
P 3850 6200
F 0 "#PWR059" H 3850 5950 50  0001 C CNN
F 1 "GND" H 3850 6050 50  0000 C CNN
F 2 "" H 3850 6200 50  0001 C CNN
F 3 "" H 3850 6200 50  0001 C CNN
	1    3850 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR060
U 1 1 62AFEB30
P 3600 4700
F 0 "#PWR060" H 3600 4450 50  0001 C CNN
F 1 "GND" H 3600 4550 50  0000 C CNN
F 2 "" H 3600 4700 50  0001 C CNN
F 3 "" H 3600 4700 50  0001 C CNN
	1    3600 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR061
U 1 1 62AFEB31
P 3550 3650
F 0 "#PWR061" H 3550 3400 50  0001 C CNN
F 1 "GND" H 3550 3500 50  0000 C CNN
F 2 "" H 3550 3650 50  0001 C CNN
F 3 "" H 3550 3650 50  0001 C CNN
	1    3550 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR062
U 1 1 62AFEB32
P 3550 2400
F 0 "#PWR062" H 3550 2150 50  0001 C CNN
F 1 "GND" H 3550 2250 50  0000 C CNN
F 2 "" H 3550 2400 50  0001 C CNN
F 3 "" H 3550 2400 50  0001 C CNN
	1    3550 2400
	1    0    0    -1  
$EndComp
$Comp
L R R612
U 1 1 62AFEB33
P 5000 5000
F 0 "R612" V 5080 5000 50  0000 C CNN
F 1 "2.7K Ohms" V 5000 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4930 5000 50  0001 C CNN
F 3 "" H 5000 5000 50  0001 C CNN
F 4 "71-CRCW06032K70JNEAC" V 5000 5000 60  0001 C CNN "Mouser Part Number"
	1    5000 5000
	1    0    0    -1  
$EndComp
$Comp
L LED D612
U 1 1 62AFEB34
P 5000 5450
F 0 "D612" H 5000 5550 50  0000 C CNN
F 1 "LED" H 5000 5350 50  0000 C CNN
F 2 "LEDs:LED_0603" H 5000 5450 50  0001 C CNN
F 3 "" H 5000 5450 50  0001 C CNN
F 4 "710-150060SS55040" H 5000 5450 60  0001 C CNN "Mouser Part Number"
	1    5000 5450
	0    -1   -1   0   
$EndComp
$Comp
L R R611
U 1 1 62AFEB35
P 5000 3600
F 0 "R611" V 5080 3600 50  0000 C CNN
F 1 "2.7K Ohms" V 5000 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4930 3600 50  0001 C CNN
F 3 "" H 5000 3600 50  0001 C CNN
F 4 "71-CRCW06032K70JNEAC" V 5000 3600 60  0001 C CNN "Mouser Part Number"
	1    5000 3600
	1    0    0    -1  
$EndComp
$Comp
L LED D611
U 1 1 62AFEB36
P 5000 4050
F 0 "D611" H 5000 4150 50  0000 C CNN
F 1 "LED" H 5000 3950 50  0000 C CNN
F 2 "LEDs:LED_0603" H 5000 4050 50  0001 C CNN
F 3 "" H 5000 4050 50  0001 C CNN
F 4 "710-150060SS55040" H 5000 4050 60  0001 C CNN "Mouser Part Number"
	1    5000 4050
	0    -1   -1   0   
$EndComp
$Comp
L R R610
U 1 1 62AFEB37
P 5000 2400
F 0 "R610" V 5080 2400 50  0000 C CNN
F 1 "2.7K Ohms" V 5000 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4930 2400 50  0001 C CNN
F 3 "" H 5000 2400 50  0001 C CNN
F 4 "71-CRCW06032K70JNEAC" V 5000 2400 60  0001 C CNN "Mouser Part Number"
	1    5000 2400
	1    0    0    -1  
$EndComp
$Comp
L LED D610
U 1 1 62AFEB38
P 5000 2850
F 0 "D610" H 5000 2950 50  0000 C CNN
F 1 "LED" H 5000 2750 50  0000 C CNN
F 2 "LEDs:LED_0603" H 5000 2850 50  0001 C CNN
F 3 "" H 5000 2850 50  0001 C CNN
F 4 "710-150060SS55040" H 5000 2850 60  0001 C CNN "Mouser Part Number"
	1    5000 2850
	0    -1   -1   0   
$EndComp
$Comp
L R R609
U 1 1 62AFEB39
P 5000 1100
F 0 "R609" V 5080 1100 50  0000 C CNN
F 1 "2.7K Ohms" V 5000 1100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4930 1100 50  0001 C CNN
F 3 "" H 5000 1100 50  0001 C CNN
F 4 "71-CRCW06032K70JNEAC" V 5000 1100 60  0001 C CNN "Mouser Part Number"
	1    5000 1100
	1    0    0    -1  
$EndComp
$Comp
L LED D609
U 1 1 62AFEB3A
P 5000 1550
F 0 "D609" H 5000 1650 50  0000 C CNN
F 1 "LED" H 5000 1450 50  0000 C CNN
F 2 "LEDs:LED_0603" H 5000 1550 50  0001 C CNN
F 3 "" H 5000 1550 50  0001 C CNN
F 4 "710-150060SS55040" H 5000 1550 60  0001 C CNN "Mouser Part Number"
	1    5000 1550
	0    -1   -1   0   
$EndComp
Text HLabel 5000 1700 2    60   Output ~ 0
OD1
Text HLabel 5000 3000 2    60   Output ~ 0
OD2
Text HLabel 5000 4200 2    60   Output ~ 0
OD3
Text HLabel 5000 5600 2    60   Output ~ 0
OD4
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
	3600 1600 4150 1600
Wire Wire Line
	3600 2900 4200 2900
Wire Wire Line
	2800 1000 3850 1000
Wire Wire Line
	3200 1000 3200 1300
Wire Wire Line
	2800 2350 3200 2350
Wire Wire Line
	3200 2300 3200 2600
Wire Wire Line
	2800 3550 3350 3550
Wire Wire Line
	3200 3550 3200 3800
Wire Wire Line
	2800 4950 3350 4950
Wire Wire Line
	3200 4950 3200 5200
Wire Wire Line
	2800 6050 4400 6050
Wire Wire Line
	3200 6050 3200 5800
Wire Wire Line
	2800 4650 3850 4650
Wire Wire Line
	3200 4650 3200 4400
Wire Wire Line
	3200 3450 2800 3450
Wire Wire Line
	3200 3200 3200 3450
Wire Wire Line
	2800 2150 3850 2150
Wire Wire Line
	3200 2150 3200 1900
Wire Wire Line
	3850 850  3850 1100
Connection ~ 3200 1000
Wire Wire Line
	3200 2300 4350 2300
Connection ~ 3200 2350
Connection ~ 3200 3550
Wire Wire Line
	3350 4950 3350 4900
Wire Wire Line
	3350 4900 4400 4900
Connection ~ 3200 4950
Wire Wire Line
	3850 1400 3850 1950
Connection ~ 3850 1600
Wire Wire Line
	3850 2600 3850 3150
Connection ~ 3850 2900
Wire Wire Line
	3850 3750 3850 4450
Connection ~ 3850 4100
Wire Wire Line
	3850 5200 3850 5850
Connection ~ 3850 5500
Connection ~ 3200 6050
Connection ~ 3200 4650
Wire Wire Line
	3350 3450 5000 3450
Wire Wire Line
	3350 3550 3350 3450
Wire Wire Line
	3200 3350 3850 3350
Connection ~ 3200 3350
Connection ~ 3200 2150
Wire Wire Line
	4400 4900 4400 4800
Connection ~ 3850 4900
Wire Wire Line
	4200 3450 4200 3400
Connection ~ 3850 3450
Wire Wire Line
	4100 2300 4100 2250
Connection ~ 3850 2300
Connection ~ 3850 1000
Wire Wire Line
	3550 2400 3550 2150
Connection ~ 3550 2150
Wire Wire Line
	3550 3650 3550 3350
Connection ~ 3550 3350
Wire Wire Line
	3600 4700 3600 4650
Connection ~ 3600 4650
Wire Wire Line
	3850 6050 3850 6200
Wire Wire Line
	5000 5150 5000 5300
Wire Wire Line
	5000 3750 5000 3900
Wire Wire Line
	5000 2550 5000 2700
Wire Wire Line
	5000 1250 5000 1400
Wire Wire Line
	5000 950  3850 950 
Wire Wire Line
	3850 950  3850 900 
Connection ~ 3850 900 
Wire Wire Line
	4350 2300 4350 2100
Wire Wire Line
	4350 2100 5000 2100
Wire Wire Line
	5000 2100 5000 2250
Connection ~ 4100 2300
Connection ~ 4200 3450
Wire Wire Line
	5000 4850 4400 4850
Connection ~ 4400 4850
Wire Wire Line
	4800 5600 5000 5600
Wire Wire Line
	4800 4200 5000 4200
Wire Wire Line
	5000 3000 4800 3000
Wire Wire Line
	5000 1700 4750 1700
Wire Wire Line
	4350 1400 4350 950 
Connection ~ 4350 950 
Wire Wire Line
	4400 6050 4400 5900
Connection ~ 3850 6050
$EndSCHEMATC
