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
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 6
Title "ESP32-C3 Booster"
Date ""
Rev "1.0"
Comp "Deepwoods Software"
Comment1 "Main Sheet"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5100 1300 2150 2000
U 630A2B31
F0 "ESP32-C3 MCU" 60
F1 "ESP32-C3-MCU.sch" 60
F2 "GPIO0/A1/CurrentSense" I L 5100 3150 60 
F3 "GPIO1/A2/TermpSense" I R 7250 2250 60 
F4 "GPIO2/Fan" O R 7250 2000 60 
F5 "CAN_TX" O L 5100 1700 60 
F6 "CAN_RX" I L 5100 1900 60 
F7 "GPIO5/Brake" O L 5100 2550 60 
$EndSheet
$Sheet
S 1800 1400 1700 1700
U 630A2B38
F0 "CAN Transeiver" 60
F1 "CAN_Transceiver.sch" 60
F2 "CAN_TX" I R 3500 1700 60 
F3 "CAN_RX" O R 3500 1900 60 
F4 "ALT_L" B R 3500 2650 60 
F5 "ALT_H" B R 3500 2400 60 
$EndSheet
$Sheet
S 1700 4000 1800 1600
U 630A2B3D
F0 "Power Supply" 60
F1 "PowerSupply.sch" 60
F2 "3.3V Out" O R 3500 4150 60 
F3 "Power Input" I R 3500 4350 60 
F4 "12V" O R 3500 4600 60 
$EndSheet
$Sheet
S 5000 3900 2150 1750
U 630A2B40
F0 "OPS Driver" 60
F1 "OpsDriver.sch" 60
F2 "IN_B" I L 5000 4100 60 
F3 "IN_A" I L 5000 4000 60 
F4 "BRAKE" I L 5000 4350 60 
F5 "PowerIn" I L 5000 4500 60 
F6 "A" O R 7150 4150 60 
F7 "B" O R 7150 4800 60 
F8 "Sense_Pos" O L 5000 5050 60 
F9 "Sense_Neg" O L 5000 5250 60 
$EndSheet
$Sheet
S 7950 1550 2250 2000
U 630A2B43
F0 "Fan Controls" 60
F1 "FanControls.sch" 60
F2 "FAN_POWER" I L 7950 1800 60 
F3 "FAN_CONTROL" I L 7950 2000 60 
F4 "TEMP_SENSE" O L 7950 2250 60 
$EndSheet
$Comp
L +3.3V #PWR01
U 1 1 630B61AD
P 3750 4100
F 0 "#PWR01" H 3750 3950 50  0001 C CNN
F 1 "+3.3V" H 3750 4240 50  0000 C CNN
F 2 "" H 3750 4100 50  0001 C CNN
F 3 "" H 3750 4100 50  0001 C CNN
	1    3750 4100
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR02
U 1 1 630B6295
P 3800 4600
F 0 "#PWR02" H 3800 4450 50  0001 C CNN
F 1 "+12V" H 3800 4740 50  0000 C CNN
F 2 "" H 3800 4600 50  0001 C CNN
F 3 "" H 3800 4600 50  0001 C CNN
	1    3800 4600
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR03
U 1 1 630B6906
P 7700 1800
F 0 "#PWR03" H 7700 1650 50  0001 C CNN
F 1 "+12V" H 7700 1940 50  0000 C CNN
F 2 "" H 7700 1800 50  0001 C CNN
F 3 "" H 7700 1800 50  0001 C CNN
	1    7700 1800
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_01x03 J101
U 1 1 630B79E1
P 4100 5850
F 0 "J101" H 4100 6050 50  0000 C CNN
F 1 "- Power + In -" H 4100 5650 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_3pol" H 4100 5850 50  0001 C CNN
F 3 "" H 4100 5850 50  0001 C CNN
F 4 "651-544225" H 4100 5850 60  0001 C CNN "Mouser Part Number"
	1    4100 5850
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D101
U 1 1 630B7F8A
P 4100 4800
F 0 "D101" H 4100 4900 50  0000 C CNN
F 1 "RB080LAM-30TR" H 4100 4700 50  0000 C CNN
F 2 "RB080LAM-30TR:PMDTM" H 4100 4800 50  0001 C CNN
F 3 "" H 4100 4800 50  0001 C CNN
F 4 "755-RB080LAM-30TR" H 4100 4800 60  0001 C CNN "Mouser Part Number"
	1    4100 4800
	0    1    1    0   
$EndComp
$Comp
L C_Small C101
U 1 1 630B9DEA
P 7450 4300
F 0 "C101" H 7460 4370 50  0000 L CNN
F 1 "10 nf" H 7460 4220 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 7450 4300 50  0001 C CNN
F 3 "" H 7450 4300 50  0001 C CNN
F 4 "791-1206B103K500CT" H 7450 4300 60  0001 C CNN "Mouser Part Number"
	1    7450 4300
	1    0    0    -1  
$EndComp
$Comp
L R R102
U 1 1 630B9E99
P 7450 4600
F 0 "R102" V 7530 4600 50  0000 C CNN
F 1 "2.4" V 7450 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 7380 4600 50  0001 C CNN
F 3 "" H 7450 4600 50  0001 C CNN
F 4 "71-CRCW12062R40FKEA" V 7450 4600 60  0001 C CNN "Mouser Part Number"
	1    7450 4600
	1    0    0    -1  
$EndComp
$Comp
L Fuse_Small F101
U 1 1 630BA0F7
P 7850 4150
F 0 "F101" H 7850 4090 50  0000 C CNN
F 1 "5A" H 7850 4210 50  0000 C CNN
F 2 "MF-R500:MFR500" H 7850 4150 50  0001 C CNN
F 3 "" H 7850 4150 50  0001 C CNN
F 4 "652-MFR500" H 7850 4150 60  0001 C CNN "Mouser Part Number"
	1    7850 4150
	1    0    0    -1  
$EndComp
$Comp
L Fuse_Small F102
U 1 1 630BB23F
P 7850 4800
F 0 "F102" H 7850 4740 50  0000 C CNN
F 1 "5A" H 7850 4860 50  0000 C CNN
F 2 "MF-R500:MFR500" H 7850 4800 50  0001 C CNN
F 3 "" H 7850 4800 50  0001 C CNN
F 4 "652-MFR500" H 7850 4800 60  0001 C CNN "Mouser Part Number"
	1    7850 4800
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_01x02 J102
U 1 1 630BB985
P 8350 4400
F 0 "J102" H 8350 4500 50  0000 C CNN
F 1 "Output to tracks" H 8350 4200 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_2pol" H 8350 4400 50  0001 C CNN
F 3 "" H 8350 4400 50  0001 C CNN
F 4 "651-5442248" H 8350 4400 60  0001 C CNN "Mouser Part Number"
	1    8350 4400
	1    0    0    -1  
$EndComp
$Comp
L R R101
U 1 1 630BC1C3
P 7300 5050
F 0 "R101" V 7380 5050 50  0000 C CNN
F 1 "3K" V 7300 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7230 5050 50  0001 C CNN
F 3 "" H 7300 5050 50  0001 C CNN
F 4 "660-RN73H1JT3001F100" V 7300 5050 60  0001 C CNN "Mouser Part Number"
	1    7300 5050
	1    0    0    -1  
$EndComp
$Comp
L LED D102
U 1 1 630BC272
P 7300 5450
F 0 "D102" H 7300 5550 50  0000 C CNN
F 1 "OPS ActB" H 7300 5350 50  0000 C CNN
F 2 "LEDs:LED_0603" H 7300 5450 50  0001 C CNN
F 3 "" H 7300 5450 50  0001 C CNN
F 4 "710-150060RS75000" H 7300 5450 60  0001 C CNN "Mouser Part Number"
	1    7300 5450
	0    -1   -1   0   
$EndComp
$Comp
L R R103
U 1 1 630BC56B
P 7600 5050
F 0 "R103" V 7680 5050 50  0000 C CNN
F 1 "3K" V 7600 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7530 5050 50  0001 C CNN
F 3 "" H 7600 5050 50  0001 C CNN
F 4 "660-RN73H1JT3001F100" V 7600 5050 60  0001 C CNN "Mouser Part Number"
	1    7600 5050
	1    0    0    -1  
$EndComp
$Comp
L LED D103
U 1 1 630BE8A1
P 7600 5450
F 0 "D103" H 7600 5550 50  0000 C CNN
F 1 "OPS ActA" H 7600 5350 50  0000 C CNN
F 2 "LEDs:LED_0603" H 7600 5450 50  0001 C CNN
F 3 "" H 7600 5450 50  0001 C CNN
F 4 "710-150060GS75000" H 7600 5450 60  0001 C CNN "Mouser Part Number"
	1    7600 5450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 630BEBB5
P 7450 5800
F 0 "#PWR04" H 7450 5550 50  0001 C CNN
F 1 "GND" H 7450 5650 50  0000 C CNN
F 2 "" H 7450 5800 50  0001 C CNN
F 3 "" H 7450 5800 50  0001 C CNN
	1    7450 5800
	1    0    0    -1  
$EndComp
$Comp
L INA180B U101
U 1 1 630C5813
P 4550 5150
F 0 "U101" H 4550 5150 60  0000 C CNN
F 1 "INA180B" H 4575 5050 39  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 4550 5150 60  0001 C CNN
F 3 "" H 4550 5150 60  0001 C CNN
F 4 "595-INA180B3IDBVR" H 4550 5150 60  0001 C CNN "Mouser Part Number"
	1    4550 5150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3500 1700 5100 1700
Wire Wire Line
	3500 1900 5100 1900
Wire Wire Line
	3750 4100 3750 4150
Wire Wire Line
	3750 4150 3500 4150
Wire Wire Line
	3800 4600 3500 4600
Wire Wire Line
	7950 1800 7700 1800
Wire Wire Line
	7950 2000 7250 2000
Wire Wire Line
	7950 2250 7250 2250
Wire Wire Line
	4100 5650 4100 4950
Wire Wire Line
	4100 4350 4100 4650
Wire Wire Line
	4100 4500 5000 4500
Wire Wire Line
	3500 4350 4100 4350
Connection ~ 4100 4500
Wire Wire Line
	7150 4150 7750 4150
Wire Wire Line
	7450 4150 7450 4200
Wire Wire Line
	7450 4400 7450 4450
Wire Wire Line
	7450 4800 7450 4750
Wire Wire Line
	7150 4800 7750 4800
Connection ~ 7450 4150
Connection ~ 7450 4800
Wire Wire Line
	7950 4150 8100 4150
Wire Wire Line
	8100 4150 8100 4400
Wire Wire Line
	8100 4400 8150 4400
Wire Wire Line
	7950 4800 8100 4800
Wire Wire Line
	8100 4800 8100 4500
Wire Wire Line
	8100 4500 8150 4500
Wire Wire Line
	7300 4900 7300 4800
Connection ~ 7300 4800
Wire Wire Line
	7600 4900 7600 4150
Connection ~ 7600 4150
Wire Wire Line
	7300 5200 7300 5300
Wire Wire Line
	7600 5200 7600 5300
Wire Wire Line
	7300 5600 7600 5600
Wire Wire Line
	7450 5800 7450 5600
Connection ~ 7450 5600
Wire Wire Line
	3500 2400 4450 2400
Wire Wire Line
	4450 2400 4450 4000
Wire Wire Line
	4450 4000 5000 4000
Wire Wire Line
	3500 2650 4250 2650
Wire Wire Line
	4250 2650 4250 4100
Wire Wire Line
	4250 4100 5000 4100
Wire Wire Line
	5100 2550 4800 2550
Wire Wire Line
	4800 2550 4800 4350
Wire Wire Line
	4800 4350 5000 4350
$Comp
L +3.3V #PWR05
U 1 1 630C6008
P 4250 4950
F 0 "#PWR05" H 4250 4800 50  0001 C CNN
F 1 "+3.3V" H 4250 5090 50  0000 C CNN
F 2 "" H 4250 4950 50  0001 C CNN
F 3 "" H 4250 4950 50  0001 C CNN
	1    4250 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4950 4250 5050
Wire Wire Line
	4825 5050 5000 5050
Wire Wire Line
	5000 5250 4825 5250
$Comp
L GND #PWR06
U 1 1 630C6BC3
P 4875 5400
F 0 "#PWR06" H 4875 5150 50  0001 C CNN
F 1 "GND" H 4875 5250 50  0000 C CNN
F 2 "" H 4875 5400 50  0001 C CNN
F 3 "" H 4875 5400 50  0001 C CNN
	1    4875 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 5150 4875 5150
Wire Wire Line
	4875 5150 4875 5400
Wire Wire Line
	4175 5250 4250 5250
Wire Wire Line
	4175 3175 4175 5250
Wire Wire Line
	4175 3175 5100 3175
Wire Wire Line
	5100 3175 5100 3150
$Comp
L GND #PWR07
U 1 1 630D47AD
P 4550 5675
F 0 "#PWR07" H 4550 5425 50  0001 C CNN
F 1 "GND" H 4550 5525 50  0000 C CNN
F 2 "" H 4550 5675 50  0001 C CNN
F 3 "" H 4550 5675 50  0001 C CNN
	1    4550 5675
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5475 4550 5675
Wire Wire Line
	4000 5650 4000 5475
Wire Wire Line
	4000 5475 4550 5475
Wire Wire Line
	4200 5650 4200 5475
Connection ~ 4200 5475
$Comp
L Mounting_Hole MK101
U 1 1 630CC312
P 1575 6650
F 0 "MK101" H 1575 6850 50  0000 C CNN
F 1 "Mounting_Hole" H 1575 6775 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.5mm" H 1575 6650 50  0001 C CNN
F 3 "" H 1575 6650 50  0001 C CNN
	1    1575 6650
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole MK102
U 1 1 630CC3D3
P 2000 6625
F 0 "MK102" H 2000 6825 50  0000 C CNN
F 1 "Mounting_Hole" H 2000 6750 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.5mm" H 2000 6625 50  0001 C CNN
F 3 "" H 2000 6625 50  0001 C CNN
	1    2000 6625
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole_PAD MK104
U 1 1 630CC557
P 2925 6625
F 0 "MK104" H 2925 6875 50  0000 C CNN
F 1 "Mounting_Hole_PAD" H 2925 6800 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.5mm_Pad" H 2925 6625 50  0001 C CNN
F 3 "" H 2925 6625 50  0001 C CNN
	1    2925 6625
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole FD101
U 1 1 630CC61E
P 3525 6500
F 0 "FD101" H 3525 6700 50  0000 C CNN
F 1 "Fiducial" H 3525 6625 50  0000 C CNN
F 2 "Fiducials:Fiducial_classic_Small_SilkscreenTop_Type1" H 3525 6500 50  0001 C CNN
F 3 "" H 3525 6500 50  0001 C CNN
	1    3525 6500
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole FD102
U 1 1 630CD5D2
P 3825 6450
F 0 "FD102" H 3825 6650 50  0000 C CNN
F 1 "Fiducial" H 3825 6575 50  0000 C CNN
F 2 "Fiducials:Fiducial_classic_Small_SilkscreenTop_Type1" H 3825 6450 50  0001 C CNN
F 3 "" H 3825 6450 50  0001 C CNN
	1    3825 6450
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole FD103
U 1 1 630CD6BE
P 4100 6450
F 0 "FD103" H 4100 6650 50  0000 C CNN
F 1 "Fiducial" H 4100 6575 50  0000 C CNN
F 2 "Fiducials:Fiducial_classic_Small_SilkscreenTop_Type1" H 4100 6450 50  0001 C CNN
F 3 "" H 4100 6450 50  0001 C CNN
	1    4100 6450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
