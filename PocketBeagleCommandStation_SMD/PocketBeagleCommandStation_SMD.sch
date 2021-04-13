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
LIBS:DRV8873HPWPR
LIBS:DRV8801PWP
LIBS:74ahc1g08
LIBS:mcp9701at
LIBS:INA2180A1IDGKR
LIBS:lm2574n-5
LIBS:mechanical
LIBS:references
LIBS:motors
LIBS:graphic_symbols
LIBS:motor_drivers
LIBS:irf7351pbf
LIBS:PocketBeagleCommandStation_SMD-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 7
Title "Pocket Beagle DCC Command Station (SMD version)"
Date "2021-04-09"
Rev "A"
Comp "Deepwoods Software"
Comment1 "Main Page, with Pocket Beagle Connections"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L POCKETBEAGLE-P1 P1
U 1 1 5C7C1FE0
P 2850 2550
F 0 "P1" H 2850 2550 60  0000 C CNN
F 1 "POCKETBEAGLE-P1" H 2850 3650 60  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x18_Pitch2.54mm" H 2850 2550 60  0001 C CNN
F 3 "" H 2850 2550 60  0000 C CNN
	1    2850 2550
	1    0    0    -1  
$EndComp
$Comp
L POCKETBEAGLE-P2 P2
U 1 1 5C7C1FEF
P 5150 2550
F 0 "P2" H 5150 2550 60  0000 C CNN
F 1 "POCKETBEAGLE-P2" H 5150 3650 60  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x18_Pitch2.54mm" H 5150 2550 60  0001 C CNN
F 3 "" H 5150 2550 60  0000 C CNN
	1    5150 2550
	1    0    0    -1  
$EndComp
$Sheet
S 7550 1200 1600 1400
U 6070B3D0
F0 "Power Supplies" 60
F1 "PowerSupply.sch" 60
F2 "5V Out" O L 7550 1500 60 
F3 "Power Input" I L 7550 1750 60 
F4 "Prog-DCC-VS" O R 9150 1950 60 
F5 "Railcom-VREF" O R 9150 2350 60 
F6 "Railcom-OLBC-VREF" O R 9150 1450 60 
F7 "12V" O R 9150 1650 60 
$EndSheet
$Sheet
S 7600 3150 1500 1600
U 6070B3D1
F0 "CAN Transceiver" 60
F1 "CANTransceiver.sch" 60
F2 "CAN_TX" I L 7600 3400 60 
F3 "CAN_RX" O L 7600 3600 60 
F4 "ALT_L" B L 7600 4000 60 
F5 "ALT_H" B L 7600 4200 60 
$EndSheet
$Sheet
S 1700 4050 1650 1350
U 6070B3D2
F0 "Operations Driver" 60
F1 "OpsDriver.sch" 60
F2 "PowerIn" I R 3350 4150 60 
F3 "A" O R 3350 4450 60 
F4 "B" O R 3350 4300 60 
F5 "SIGNAL" I L 1700 4200 60 
F6 "BRAKE" I L 1700 4400 60 
F7 "ENABLE" I L 1700 4800 60 
F8 "Sense_Pos" O R 3350 4650 60 
F9 "Sense_Neg" O R 3350 4850 60 
$EndSheet
$Sheet
S 4950 3850 1800 1500
U 6070B3D3
F0 "Prog and LCC Alt H/L Driver" 60
F1 "ProgAltDriver.sch" 60
F2 "Signal1" I R 6750 4300 60 
F3 "Signal2" I R 6750 4800 60 
F4 "Enable1" I R 6750 4500 60 
F5 "Enable2" I R 6750 4950 60 
F6 "1A" O L 4950 4500 60 
F7 "1B" O L 4950 4300 60 
F8 "2A" O R 6750 5200 60 
F9 "2B" O R 6750 5100 60 
F10 "Power1" I R 6750 3950 60 
F11 "Sense1_Pos" O R 6750 4050 60 
F12 "Sense1_Neg" O R 6750 4200 60 
F13 "Power2" I R 6750 4650 60 
$EndSheet
$Sheet
S 1650 6000 2200 1400
U 6070B3D4
F0 "Railcomm Interface" 60
F1 "RailCom.sch" 60
F2 "Power" I L 1650 6200 60 
F3 "SHORT" O L 1650 6400 60 
F4 "ENABLE" I L 1650 6600 60 
F5 "OPS-A" I L 1650 6800 60 
F6 "OPS-B" I L 1650 6950 60 
F7 "VREF" I R 3850 6250 60 
F8 "DATA" O R 3850 6500 60 
F9 "DIR" O R 3850 6750 60 
F10 "OLBC-A" I L 1650 7150 60 
F11 "OLBC-B" I L 1650 7300 60 
F12 "VREF-OLBC" I R 3850 7150 60 
$EndSheet
$Comp
L +5V #PWR01
U 1 1 6070B3D5
P 7350 1300
F 0 "#PWR01" H 7350 1150 50  0001 C CNN
F 1 "+5V" H 7350 1440 50  0000 C CNN
F 2 "" H 7350 1300 50  0001 C CNN
F 3 "" H 7350 1300 50  0001 C CNN
	1    7350 1300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 6070B3D6
P 2400 1500
F 0 "#PWR02" H 2400 1350 50  0001 C CNN
F 1 "+5V" H 2400 1640 50  0000 C CNN
F 2 "" H 2400 1500 50  0001 C CNN
F 3 "" H 2400 1500 50  0001 C CNN
	1    2400 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 6070B3D7
P 2300 2350
F 0 "#PWR03" H 2300 2100 50  0001 C CNN
F 1 "GND" H 2300 2200 50  0000 C CNN
F 2 "" H 2300 2350 50  0001 C CNN
F 3 "" H 2300 2350 50  0001 C CNN
	1    2300 2350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 6070B3D8
P 3400 2350
F 0 "#PWR04" H 3400 2100 50  0001 C CNN
F 1 "GND" H 3400 2200 50  0000 C CNN
F 2 "" H 3400 2350 50  0001 C CNN
F 3 "" H 3400 2350 50  0001 C CNN
	1    3400 2350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR05
U 1 1 6070B3D9
P 3400 2650
F 0 "#PWR05" H 3400 2400 50  0001 C CNN
F 1 "GND" H 3400 2500 50  0000 C CNN
F 2 "" H 3400 2650 50  0001 C CNN
F 3 "" H 3400 2650 50  0001 C CNN
	1    3400 2650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR06
U 1 1 6070B3DA
P 4600 2350
F 0 "#PWR06" H 4600 2100 50  0001 C CNN
F 1 "GND" H 4600 2200 50  0000 C CNN
F 2 "" H 4600 2350 50  0001 C CNN
F 3 "" H 4600 2350 50  0001 C CNN
	1    4600 2350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 6070B3DB
P 4600 2650
F 0 "#PWR07" H 4600 2400 50  0001 C CNN
F 1 "GND" H 4600 2500 50  0000 C CNN
F 2 "" H 4600 2650 50  0001 C CNN
F 3 "" H 4600 2650 50  0001 C CNN
	1    4600 2650
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR08
U 1 1 6070B3DC
P 3550 2250
F 0 "#PWR08" H 3550 2100 50  0001 C CNN
F 1 "+3.3V" H 3550 2390 50  0000 C CNN
F 2 "" H 3550 2250 50  0001 C CNN
F 3 "" H 3550 2250 50  0001 C CNN
	1    3550 2250
	0    1    1    0   
$EndComp
Text Label 4700 2850 2    60   ~ 0
CAN1_RX
Text Label 4700 2950 2    60   ~ 0
CAN1_TX
Text Label 7600 3400 2    60   ~ 0
CAN1_TX
Text Label 7600 3600 2    60   ~ 0
CAN1_RX
$Comp
L Screw_Terminal_01x03 T1
U 1 1 6070B3DD
P 6950 1750
F 0 "T1" H 6950 1950 50  0000 C CNN
F 1 "DCC Power In" H 6950 1550 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_3pol" H 6950 1750 50  0001 C CNN
F 3 "" H 6950 1750 50  0001 C CNN
F 4 "651-5442251" H 6950 1750 60  0001 C CNN "Part Number"
	1    6950 1750
	-1   0    0    -1  
$EndComp
$Comp
L D_Shockley D1
U 1 1 6070B3DE
P 7350 1750
F 0 "D1" H 7350 1850 50  0000 C CNN
F 1 "RB080LAM-30TR" H 7350 1650 50  0000 C CNN
F 2 "RB080LAM-30TR:PMDTM" H 7350 1750 50  0001 C CNN
F 3 "" H 7350 1750 50  0001 C CNN
F 4 "755-RB080LAM-30TR" H 7350 1750 60  0001 C CNN "Mouser Part Number"
	1    7350 1750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 6070B3DF
P 7200 2000
F 0 "#PWR09" H 7200 1750 50  0001 C CNN
F 1 "GND" H 7200 1850 50  0000 C CNN
F 2 "" H 7200 2000 50  0001 C CNN
F 3 "" H 7200 2000 50  0001 C CNN
	1    7200 2000
	1    0    0    -1  
$EndComp
Text Label 7250 2350 2    60   ~ 0
DCC_VS
Text Label 5600 2750 0    60   ~ 0
OPS-SIG
Text Label 4700 3350 2    60   ~ 0
OPS-ENABLE
Text Label 2400 2550 2    60   ~ 0
OPS-SENSE
Text Label 3300 1750 0    60   ~ 0
PROG-SIG
Text Label 3300 1650 0    60   ~ 0
PROG-ENABLE
Text Label 2400 2650 2    60   ~ 0
PROG-SENSE
Text Label 2400 2750 2    60   ~ 0
TEMP-SENSE
Text Label 3450 3650 0    60   ~ 0
FAN-CONTROL
Text Label 4700 1850 2    60   ~ 0
RAILCOM-DATA
Text Label 5600 2450 0    60   ~ 0
RAILCOM-ENABLE
Text Label 5600 2650 0    60   ~ 0
RAILCOM-SHORT
Text Label 4700 1750 2    60   ~ 0
RAILCOM-DIR
Text Label 5600 1950 0    60   ~ 0
OPS-BRAKE
Text Label 1700 4200 2    60   ~ 0
OPS-SIG
Text Label 1700 4400 2    60   ~ 0
OPS-BRAKE
Text Label 1700 4800 2    60   ~ 0
OPS-ENABLE
Text Label 3500 3750 0    60   ~ 0
DCC_VS
$Comp
L Screw_Terminal_01x04 J2
U 1 1 6070B3E0
P 4200 3700
F 0 "J2" H 4200 3900 50  0000 C CNN
F 1 "DCC Output to Tracks" V 4350 3400 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_4pol" H 4200 3700 50  0001 C CNN
F 3 "" H 4200 3700 50  0001 C CNN
F 4 "651-5442264" H 4200 3700 60  0001 C CNN "Part Number"
	1    4200 3700
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 6070B3E1
P 3950 4100
F 0 "R1" V 4030 4100 50  0000 C CNN
F 1 "2.4" V 3950 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3880 4100 50  0001 C CNN
F 3 "" H 3950 4100 50  0001 C CNN
F 4 "71-CRCW12062R40FKEA" V 3950 4100 60  0001 C CNN "Part Number"
	1    3950 4100
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 6070B3E2
P 3700 4100
F 0 "C1" H 3725 4200 50  0000 L CNN
F 1 "10 nf" H 3725 4000 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3738 3950 50  0001 C CNN
F 3 "" H 3700 4100 50  0001 C CNN
F 4 "791-1206B103K500CT" H 3700 4100 60  0001 C CNN "Part Number"
	1    3700 4100
	1    0    0    -1  
$EndComp
$Sheet
S 7550 5200 1750 1100
U 6070B3E3
F0 "Fan Control" 60
F1 "FANControl.sch" 60
F2 "FAN_POWER" I L 7550 5450 60 
F3 "FAN_CONTROL" I L 7550 5650 60 
F4 "TEMP_SENSE" O L 7550 5900 60 
$EndSheet
$Comp
L R R2
U 1 1 6070B3E4
P 4600 4100
F 0 "R2" V 4680 4100 50  0000 C CNN
F 1 "2.4" V 4600 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4530 4100 50  0001 C CNN
F 3 "" H 4600 4100 50  0001 C CNN
F 4 "71-CRCW12062R40FKEA" V 4600 4100 60  0001 C CNN "Part Number"
	1    4600 4100
	-1   0    0    1   
$EndComp
$Comp
L C C2
U 1 1 6070B3E5
P 4800 4150
F 0 "C2" H 4825 4250 50  0000 L CNN
F 1 "10 nf" H 4825 4050 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4838 4000 50  0001 C CNN
F 3 "" H 4800 4150 50  0001 C CNN
F 4 "791-1206B103K500CT" H 4800 4150 60  0001 C CNN "Part Number"
	1    4800 4150
	1    0    0    -1  
$EndComp
Text Label 9150 1950 0    60   ~ 0
PROG_DCC_VS
Text Label 6750 3950 0    30   ~ 0
PROG_DCC_VS
Text Label 6750 4300 0    30   ~ 0
PROG-SIG
Text Label 6750 4500 0    30   ~ 0
PROG-ENABLE
Text Label 6750 4800 0    30   ~ 0
OPS-SIG
Text Label 6750 4950 0    30   ~ 0
OPS-ENABLE
Text Label 7550 5650 2    60   ~ 0
FAN-CONTROL
Text Label 7550 5900 2    60   ~ 0
TEMP-SENSE
Text Label 9150 2350 0    60   ~ 0
RAILCOM_VREF
Text Label 3850 6250 0    60   ~ 0
RAILCOM_VREF
Text Label 3550 4300 0    60   ~ 0
OPS_B
Text Label 3850 4450 0    60   ~ 0
OPS_A
Text Label 1650 6800 2    60   ~ 0
OPS_A
Text Label 1650 6950 2    60   ~ 0
OPS_B
Text Label 1650 6200 2    60   ~ 0
DCC_VS
Text Label 1650 6400 2    60   ~ 0
RAILCOM-SHORT
Text Label 1650 6600 2    60   ~ 0
RAILCOM-ENABLE
Text Label 3850 6500 0    60   ~ 0
RAILCOM-DATA
Text Label 3850 6750 0    60   ~ 0
RAILCOM-DIR
NoConn ~ 3300 1850
NoConn ~ 3300 1950
NoConn ~ 3300 2050
NoConn ~ 3300 2150
NoConn ~ 2400 2450
NoConn ~ 3300 2450
NoConn ~ 3300 2550
NoConn ~ 3300 2750
NoConn ~ 3300 2850
NoConn ~ 3300 2950
NoConn ~ 2400 2850
NoConn ~ 2400 2950
NoConn ~ 2400 3050
NoConn ~ 2400 3150
NoConn ~ 2400 3250
NoConn ~ 3300 3350
NoConn ~ 2400 3350
NoConn ~ 4700 3150
NoConn ~ 4700 3050
NoConn ~ 5600 3350
NoConn ~ 5600 3250
NoConn ~ 5600 3150
NoConn ~ 5600 3050
NoConn ~ 5600 2950
NoConn ~ 5600 2850
NoConn ~ 4700 2550
NoConn ~ 4700 2450
NoConn ~ 5600 2550
NoConn ~ 5600 2350
NoConn ~ 5600 2250
NoConn ~ 5600 2150
NoConn ~ 5600 2050
NoConn ~ 4700 2050
NoConn ~ 4700 2150
NoConn ~ 4700 2250
NoConn ~ 4700 1950
NoConn ~ 5600 1850
NoConn ~ 4700 1650
NoConn ~ 5600 1650
NoConn ~ 5600 1750
Text Label 1650 7150 2    60   ~ 0
OLBC_A
Text Label 1650 7300 2    60   ~ 0
OLBC_B
Text Label 3850 7150 0    60   ~ 0
RAILCOM_OLBC_VREF
Text Label 6900 5200 0    30   ~ 0
OLBC_A
Text Label 6850 5100 0    30   ~ 0
OLBC_B
Text Label 9150 1450 0    60   ~ 0
RAILCOM_OLBC_VREF
$Comp
L Conn_01x06_Male J1
U 1 1 6070B3E6
P 3900 3100
F 0 "J1" H 3900 3400 50  0000 C CNN
F 1 "Console" H 3900 2700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 3900 3100 50  0001 C CNN
F 3 "" H 3900 3100 50  0001 C CNN
	1    3900 3100
	-1   0    0    -1  
$EndComp
NoConn ~ 3700 3000
NoConn ~ 3700 3100
NoConn ~ 3700 3400
$Comp
L +12V #PWR010
U 1 1 6070CDA8
P 6950 4650
F 0 "#PWR010" H 6950 4500 50  0001 C CNN
F 1 "+12V" H 6950 4790 50  0000 C CNN
F 2 "" H 6950 4650 50  0001 C CNN
F 3 "" H 6950 4650 50  0001 C CNN
	1    6950 4650
	1    0    0    -1  
$EndComp
$Comp
L Fuse_Small F1
U 1 1 6071FB1D
P 4100 4100
F 0 "F1" H 4100 4040 50  0000 C CNN
F 1 "5A" H 4100 4160 50  0000 C CNN
F 2 "MF-R500:MFR500" H 4100 4100 50  0001 C CNN
F 3 "" H 4100 4100 50  0001 C CNN
F 4 "652-MFR500 " H 4100 4100 60  0001 C CNN "Mouser Part Number"
	1    4100 4100
	0    1    1    0   
$EndComp
$Comp
L Fuse_Small F2
U 1 1 6071FC50
P 4200 4100
F 0 "F2" H 4200 4040 50  0000 C CNN
F 1 "5A" H 4200 4160 50  0000 C CNN
F 2 "MF-R500:MFR500" H 4200 4100 50  0001 C CNN
F 3 "" H 4200 4100 50  0001 C CNN
F 4 "652-MFR500 " H 4200 4100 60  0001 C CNN "Mouser Part Number"
	1    4200 4100
	0    1    1    0   
$EndComp
$Comp
L Fuse_Small F3
U 1 1 6071FD85
P 4300 4100
F 0 "F3" H 4300 4040 50  0000 C CNN
F 1 "350ma" H 4300 4160 50  0000 C CNN
F 2 "0ZCG0035AF2C:FUSC4632X70N" H 4300 4100 50  0001 C CNN
F 3 "" H 4300 4100 50  0001 C CNN
F 4 "530-0ZCG0035AF2C " H 4300 4100 60  0001 C CNN "Mouser Part Number"
	1    4300 4100
	0    1    1    0   
$EndComp
$Comp
L Fuse_Small F4
U 1 1 6071FEBC
P 4400 4100
F 0 "F4" H 4400 4040 50  0000 C CNN
F 1 "350ma" H 4400 4160 50  0000 C CNN
F 2 "0ZCG0035AF2C:FUSC4632X70N" H 4400 4100 50  0001 C CNN
F 3 "" H 4400 4100 50  0001 C CNN
F 4 "530-0ZCG0035AF2C " H 4400 4100 60  0001 C CNN "Mouser Part Number"
	1    4400 4100
	0    1    1    0   
$EndComp
$Comp
L Fuse_Small F5
U 1 1 60722943
P 7450 4000
F 0 "F5" H 7450 3940 50  0000 C CNN
F 1 "350ma" H 7450 4060 50  0000 C CNN
F 2 "0ZCG0035AF2C:FUSC4632X70N" H 7450 4000 50  0001 C CNN
F 3 "" H 7450 4000 50  0001 C CNN
F 4 "530-0ZCG0035AF2C" H 7450 4000 60  0001 C CNN "Mouser Part Number"
	1    7450 4000
	1    0    0    -1  
$EndComp
$Comp
L Fuse_Small F6
U 1 1 60722A7C
P 7450 4200
F 0 "F6" H 7450 4140 50  0000 C CNN
F 1 "350ma" H 7450 4260 50  0000 C CNN
F 2 "0ZCG0035AF2C:FUSC4632X70N" H 7450 4200 50  0001 C CNN
F 3 "530-0ZCG0035AF2C" H 7450 4200 50  0001 C CNN
F 4 "530-0ZCG0035AF2C" H 7450 4200 60  0001 C CNN "Mouser Part Number"
	1    7450 4200
	1    0    0    -1  
$EndComp
$Comp
L INA2180A1IDGKR U11
U 1 1 6072FB78
P 5250 1000
F 0 "U11" H 5800 850 50  0000 L CNN
F 1 "INA2180A1IDGKR" H 5550 1200 50  0000 L CNN
F 2 "INA2180A1IDGKR:SOP65P490X110-8N" H 6200 1100 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/ina2180" H 6200 1000 50  0001 L CNN
F 4 "Dual 26V, Low- or High-Side Voltage Output Current Sense Amplifier" H 6200 900 50  0001 L CNN "Description"
F 5 "1.1" H 6200 800 50  0001 L CNN "Height"
F 6 "595-INA2180A1IDGKR" H 6200 700 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/INA2180A1IDGKR?qs=j%252B1pi9TdxUZfv9X7r5aZLA%3D%3D" H 6200 600 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 6200 500 50  0001 L CNN "Manufacturer_Name"
F 9 "INA2180A1IDGKR" H 6200 400 50  0001 L CNN "Manufacturer_Part_Number"
	1    5250 1000
	-1   0    0    1   
$EndComp
$Comp
L R R51
U 1 1 607369A3
P 5600 1000
F 0 "R51" V 5680 1000 50  0000 C CNN
F 1 "13.7K" V 5600 1000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5530 1000 50  0001 C CNN
F 3 "" H 5600 1000 50  0001 C CNN
F 4 "652-CR0603FX-1372ELF" V 5600 1000 60  0001 C CNN "Mouser Part Number"
	1    5600 1000
	0    1    1    0   
$EndComp
$Comp
L R R52
U 1 1 60736B8A
P 5800 1200
F 0 "R52" V 5880 1200 50  0000 C CNN
F 1 "10.2K" V 5800 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5730 1200 50  0001 C CNN
F 3 "" H 5800 1200 50  0001 C CNN
F 4 "667-ERJ-3EKF1022V" V 5800 1200 60  0001 C CNN "Mouser Part  Number"
	1    5800 1200
	1    0    0    -1  
$EndComp
$Comp
L R R53
U 1 1 60736CCF
P 6200 1000
F 0 "R53" V 6280 1000 50  0000 C CNN
F 1 "2.4K" V 6200 1000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6130 1000 50  0001 C CNN
F 3 "" H 6200 1000 50  0001 C CNN
F 4 "667-ERJ-3EKF2401V" V 6200 1000 60  0001 C CNN "Mouser Part Number"
	1    6200 1000
	0    1    1    0   
$EndComp
$Comp
L C_Small C30
U 1 1 60736F5E
P 6000 1200
F 0 "C30" H 6010 1270 50  0000 L CNN
F 1 "8.2 nf" H 6010 1120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6000 1200 50  0001 C CNN
F 3 "" H 6000 1200 50  0001 C CNN
F 4 "791-0603B822K250CT" H 6000 1200 60  0001 C CNN "Mouser Part Number"
	1    6000 1200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C31
U 1 1 607370A7
P 6450 1200
F 0 "C31" H 6460 1270 50  0000 L CNN
F 1 "8.2 nf" H 6460 1120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6450 1200 50  0001 C CNN
F 3 "" H 6450 1200 50  0001 C CNN
F 4 "791-0603B822K250CT" H 6450 1200 60  0001 C CNN "Mouser Part Number"
	1    6450 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 60737741
P 6150 1500
F 0 "#PWR011" H 6150 1250 50  0001 C CNN
F 1 "GND" H 6150 1350 50  0000 C CNN
F 2 "" H 6150 1500 50  0001 C CNN
F 3 "" H 6150 1500 50  0001 C CNN
	1    6150 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 60738EE7
P 5400 700
F 0 "#PWR012" H 5400 450 50  0001 C CNN
F 1 "GND" H 5400 550 50  0000 C CNN
F 2 "" H 5400 700 50  0001 C CNN
F 3 "" H 5400 700 50  0001 C CNN
	1    5400 700 
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR013
U 1 1 60739732
P 4000 1000
F 0 "#PWR013" H 4000 850 50  0001 C CNN
F 1 "+3.3V" H 4000 1140 50  0000 C CNN
F 2 "" H 4000 1000 50  0001 C CNN
F 3 "" H 4000 1000 50  0001 C CNN
	1    4000 1000
	0    -1   -1   0   
$EndComp
$Comp
L R R50
U 1 1 6073A0C8
P 3650 900
F 0 "R50" V 3730 900 50  0000 C CNN
F 1 "13.7K" V 3650 900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3580 900 50  0001 C CNN
F 3 "" H 3650 900 50  0001 C CNN
F 4 "652-CR0603FX-1372ELF" V 3650 900 60  0001 C CNN "Mouser Part Number"
	1    3650 900 
	0    1    1    0   
$EndComp
$Comp
L R R48
U 1 1 6073A20F
P 3100 900
F 0 "R48" V 3180 900 50  0000 C CNN
F 1 "2.4K" V 3100 900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3030 900 50  0001 C CNN
F 3 "" H 3100 900 50  0001 C CNN
F 4 "667-ERJ-3EKF2401V" V 3100 900 60  0001 C CNN "Mouser Part Number"
	1    3100 900 
	0    1    1    0   
$EndComp
$Comp
L C_Small C28
U 1 1 6073A358
P 3250 1100
F 0 "C28" H 3260 1170 50  0000 L CNN
F 1 "8.2 nf" H 3260 1020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3250 1100 50  0001 C CNN
F 3 "" H 3250 1100 50  0001 C CNN
F 4 "791-0603B822K250CT" H 3250 1100 60  0001 C CNN "Mouser Part Number"
	1    3250 1100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C27
U 1 1 6073A4A3
P 2850 1100
F 0 "C27" H 2860 1170 50  0000 L CNN
F 1 "8.2 nf" H 2860 1020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2850 1100 50  0001 C CNN
F 3 "" H 2850 1100 50  0001 C CNN
F 4 "791-0603B822K250CT" H 2850 1100 60  0001 C CNN "Mouser Part Number"
	1    2850 1100
	1    0    0    -1  
$EndComp
$Comp
L R R49
U 1 1 6073AA16
P 3450 1100
F 0 "R49" V 3530 1100 50  0000 C CNN
F 1 "10.2K" V 3450 1100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3380 1100 50  0001 C CNN
F 3 "" H 3450 1100 50  0001 C CNN
F 4 "667-ERJ-3EKF1022V" V 3450 1100 60  0001 C CNN "Mouser Part Number"
	1    3450 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 6073AB63
P 3450 1350
F 0 "#PWR014" H 3450 1100 50  0001 C CNN
F 1 "GND" H 3450 1200 50  0000 C CNN
F 2 "" H 3450 1350 50  0001 C CNN
F 3 "" H 3450 1350 50  0001 C CNN
	1    3450 1350
	1    0    0    -1  
$EndComp
Text Label 2850 900  2    60   ~ 0
OPS-SENSE
Text Label 4150 700  2    60   ~ 0
OPS-SENSE-POS
Text Label 4150 800  2    60   ~ 0
OPS-SENSE-NEG
Text Label 3350 4650 0    60   ~ 0
OPS-SENSE-POS
Text Label 3350 4850 0    60   ~ 0
OPS-SENSE-NEG
Text Label 6750 4050 0    30   ~ 0
PROG-SENSE-POS
Text Label 6750 4200 0    30   ~ 0
PROG-SENSE-NEG
Text Label 5250 800  0    60   ~ 0
PROG-SENSE-POS
Text Label 5250 900  0    60   ~ 0
PROG-SENSE-NEG
Text Label 6450 1000 0    60   ~ 0
PROG-SENSE
$Comp
L C_Small C29
U 1 1 60741955
P 4100 1150
F 0 "C29" H 4110 1220 50  0000 L CNN
F 1 "100 nf" H 4110 1070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4100 1150 50  0001 C CNN
F 3 "" H 4100 1150 50  0001 C CNN
F 4 "603-CC603KPX7R9BB104" H 4100 1150 60  0001 C CNN "Mouser Part Number"
	1    4100 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 607421B8
P 4100 1350
F 0 "#PWR015" H 4100 1100 50  0001 C CNN
F 1 "GND" H 4100 1200 50  0000 C CNN
F 2 "" H 4100 1350 50  0001 C CNN
F 3 "" H 4100 1350 50  0001 C CNN
	1    4100 1350
	1    0    0    -1  
$EndComp
NoConn ~ 4700 3250
$Comp
L USB_A J7
U 1 1 6073A5A8
P 1700 1950
F 0 "J7" H 1500 2400 50  0000 L CNN
F 1 "USB_A" H 1500 2300 50  0000 L CNN
F 2 "Connectors:USB_A" H 1850 1900 50  0001 C CNN
F 3 "" H 1850 1900 50  0001 C CNN
	1    1700 1950
	1    0    0    -1  
$EndComp
NoConn ~ 2400 1750
$Comp
L R R54
U 1 1 60736A87
P 3700 4950
F 0 "R54" V 3780 4950 50  0000 C CNN
F 1 "3K" V 3700 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3630 4950 50  0001 C CNN
F 3 "" H 3700 4950 50  0001 C CNN
F 4 "660-RN73H1JT3001F100" V 3700 4950 60  0001 C CNN "Mouser Part Number"
	1    3700 4950
	1    0    0    -1  
$EndComp
$Comp
L R R55
U 1 1 60736BE0
P 3950 4950
F 0 "R55" V 4030 4950 50  0000 C CNN
F 1 "3K" V 3950 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3880 4950 50  0001 C CNN
F 3 "" H 3950 4950 50  0001 C CNN
F 4 "660-RN73H1JT3001F100" V 3950 4950 60  0001 C CNN "Mouser Part Number"
	1    3950 4950
	1    0    0    -1  
$EndComp
$Comp
L R R56
U 1 1 60736D35
P 4450 4950
F 0 "R56" V 4530 4950 50  0000 C CNN
F 1 "3K" V 4450 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4380 4950 50  0001 C CNN
F 3 "" H 4450 4950 50  0001 C CNN
F 4 "660-RN73H1JT3001F100" V 4450 4950 60  0001 C CNN "Mouser Part Number"
	1    4450 4950
	1    0    0    -1  
$EndComp
$Comp
L R R57
U 1 1 60736E8C
P 4700 4950
F 0 "R57" V 4780 4950 50  0000 C CNN
F 1 "3K" V 4700 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4630 4950 50  0001 C CNN
F 3 "" H 4700 4950 50  0001 C CNN
F 4 "660-RN73H1JT3001F100" V 4700 4950 60  0001 C CNN "Mouser Part Number"
	1    4700 4950
	1    0    0    -1  
$EndComp
$Comp
L LED_ALT D11
U 1 1 60737129
P 3700 5400
F 0 "D11" H 3700 5500 50  0000 C CNN
F 1 "OPS ActA" H 3700 5300 50  0000 C CNN
F 2 "LEDs:LED_0603" H 3700 5400 50  0001 C CNN
F 3 "" H 3700 5400 50  0001 C CNN
F 4 "710-150060GS75000" H 3700 5400 60  0001 C CNN "Mouser Part Number"
	1    3700 5400
	0    -1   -1   0   
$EndComp
$Comp
L LED_ALT D12
U 1 1 607374FE
P 3950 5400
F 0 "D12" H 3950 5500 50  0000 C CNN
F 1 "OPS ActB" H 3950 5300 50  0000 C CNN
F 2 "LEDs:LED_0603" H 3950 5400 50  0001 C CNN
F 3 "" H 3950 5400 50  0001 C CNN
F 4 "710-150060RS75000 " H 3950 5400 60  0001 C CNN "Mouser Part Number"
	1    3950 5400
	0    -1   -1   0   
$EndComp
$Comp
L LED_ALT D13
U 1 1 607378D3
P 4450 5400
F 0 "D13" H 4450 5500 50  0000 C CNN
F 1 "PROG ActA" H 4450 5300 50  0000 C CNN
F 2 "LEDs:LED_0603" H 4450 5400 50  0001 C CNN
F 3 "" H 4450 5400 50  0001 C CNN
F 4 "710-150060GS75000" H 4450 5400 60  0001 C CNN "Mouser Part Number"
	1    4450 5400
	0    -1   -1   0   
$EndComp
$Comp
L LED_ALT D14
U 1 1 60737FC0
P 4700 5400
F 0 "D14" H 4700 5500 50  0000 C CNN
F 1 "PROG ActB" H 4700 5300 50  0000 C CNN
F 2 "LEDs:LED_0603" H 4700 5400 50  0001 C CNN
F 3 "" H 4700 5400 50  0001 C CNN
F 4 "710-150060RS75000 " H 4700 5400 60  0001 C CNN "Mouser Part Number"
	1    4700 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 1500 7350 1500
Wire Wire Line
	7350 1500 7350 1300
Wire Wire Line
	2400 1650 2400 1500
Wire Wire Line
	3300 2250 3600 2250
Wire Wire Line
	3400 2350 3300 2350
Wire Wire Line
	3300 2650 3400 2650
Wire Wire Line
	2300 2350 2400 2350
Wire Wire Line
	4700 2350 4600 2350
Wire Wire Line
	4700 2650 4600 2650
Wire Wire Line
	7150 1750 7200 1750
Wire Wire Line
	7500 1750 7550 1750
Wire Wire Line
	7150 1850 7200 1850
Wire Wire Line
	7200 1650 7200 2000
Wire Wire Line
	7150 1650 7200 1650
Connection ~ 7200 1850
Wire Wire Line
	7250 2350 7500 2350
Wire Wire Line
	7500 2350 7500 1750
Wire Wire Line
	4700 2750 3750 2750
Wire Wire Line
	3750 2750 3750 2400
Wire Wire Line
	3750 2400 3600 2400
Wire Wire Line
	3600 2400 3600 2250
Connection ~ 3550 2250
Wire Wire Line
	3350 4300 4100 4300
Wire Wire Line
	3350 4450 4200 4450
Wire Wire Line
	3500 3750 3500 4150
Wire Wire Line
	3500 4150 3350 4150
Wire Wire Line
	3700 3950 3950 3950
Wire Wire Line
	3700 4250 3700 4800
Connection ~ 3700 4450
Wire Wire Line
	4300 4500 4950 4500
Wire Wire Line
	4400 4300 4950 4300
Connection ~ 4800 4300
Wire Wire Line
	4800 3950 4800 4000
Wire Wire Line
	4600 3950 4800 3950
Wire Wire Line
	6750 5200 7300 5200
Wire Wire Line
	7300 5200 7300 4200
Wire Wire Line
	7250 4000 7250 5100
Wire Wire Line
	7250 5100 6750 5100
Wire Wire Line
	3700 2900 3350 2900
Wire Wire Line
	3350 2900 3350 2650
Connection ~ 3350 2650
Wire Wire Line
	3700 3200 3300 3200
Wire Wire Line
	3300 3200 3300 3150
Wire Wire Line
	3700 3300 3450 3300
Wire Wire Line
	3450 3300 3450 3050
Wire Wire Line
	3450 3050 3300 3050
Wire Wire Line
	3300 3250 3400 3250
Wire Wire Line
	3400 3250 3400 3650
Wire Wire Line
	3400 3650 3450 3650
Wire Wire Line
	6750 4650 6950 4650
Wire Wire Line
	6900 4650 6900 5450
Wire Wire Line
	6900 5450 7550 5450
Connection ~ 6900 4650
Wire Wire Line
	3950 4250 3950 4800
Connection ~ 3950 4300
Wire Wire Line
	4600 4250 4600 4500
Connection ~ 4600 4500
Wire Wire Line
	4100 3900 4100 4000
Wire Wire Line
	4100 4300 4100 4200
Wire Wire Line
	4200 4450 4200 4200
Wire Wire Line
	4300 4500 4300 4200
Wire Wire Line
	4400 4300 4400 4200
Wire Wire Line
	4200 4000 4200 3900
Wire Wire Line
	4300 4000 4300 3900
Wire Wire Line
	4400 4000 4400 3900
Wire Wire Line
	7600 4000 7550 4000
Wire Wire Line
	7350 4000 7250 4000
Wire Wire Line
	7300 4200 7350 4200
Wire Wire Line
	7550 4200 7600 4200
Wire Wire Line
	5250 1000 5450 1000
Wire Wire Line
	5750 1000 6050 1000
Wire Wire Line
	5800 1050 5800 1000
Connection ~ 5800 1000
Wire Wire Line
	6000 1100 6000 1000
Connection ~ 6000 1000
Wire Wire Line
	6350 1000 6450 1000
Wire Wire Line
	6450 1000 6450 1100
Wire Wire Line
	5800 1350 6000 1350
Wire Wire Line
	6000 1350 6000 1300
Wire Wire Line
	6000 1300 6450 1300
Wire Wire Line
	6150 1500 6150 1300
Connection ~ 6150 1300
Wire Wire Line
	5400 700  5250 700 
Wire Wire Line
	4000 1000 4150 1000
Wire Wire Line
	4150 900  3800 900 
Wire Wire Line
	3250 900  3500 900 
Wire Wire Line
	2850 1000 2850 900 
Wire Wire Line
	2850 900  2950 900 
Wire Wire Line
	2850 1200 3250 1200
Wire Wire Line
	3450 950  3450 900 
Connection ~ 3450 900 
Wire Wire Line
	3250 1000 3250 900 
Wire Wire Line
	3450 1250 3250 1250
Wire Wire Line
	3250 1250 3250 1200
Wire Wire Line
	3450 1350 3450 1250
Wire Wire Line
	4100 1050 4100 1000
Connection ~ 4100 1000
Wire Wire Line
	4100 1250 4100 1350
Wire Wire Line
	2400 2050 2000 2050
Wire Wire Line
	2000 1750 2100 1750
Wire Wire Line
	2100 1750 2100 1850
Wire Wire Line
	2100 1850 2400 1850
Wire Wire Line
	2400 1950 2300 1950
Wire Wire Line
	2300 1950 2300 1850
Connection ~ 2300 1850
Wire Wire Line
	2000 1950 2150 1950
Wire Wire Line
	2150 1950 2150 2150
Wire Wire Line
	2150 2150 2400 2150
Wire Wire Line
	1600 2350 2000 2350
Wire Wire Line
	2000 2350 2000 2250
Wire Wire Line
	2000 2250 2400 2250
Connection ~ 1700 2350
Wire Wire Line
	2350 2350 2350 2250
Connection ~ 2350 2250
Connection ~ 2350 2350
Wire Wire Line
	4450 4800 4450 4500
Connection ~ 4450 4500
Wire Wire Line
	4700 4800 4700 4300
Connection ~ 4700 4300
Wire Wire Line
	3700 5250 3700 5100
Wire Wire Line
	3950 5250 3950 5100
Wire Wire Line
	4450 5250 4450 5100
Wire Wire Line
	4700 5250 4700 5100
$Comp
L GND #PWR016
U 1 1 60739A5F
P 4250 5750
F 0 "#PWR016" H 4250 5500 50  0001 C CNN
F 1 "GND" H 4250 5600 50  0000 C CNN
F 2 "" H 4250 5750 50  0001 C CNN
F 3 "" H 4250 5750 50  0001 C CNN
	1    4250 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 5550 3700 5650
Wire Wire Line
	3700 5650 4700 5650
Wire Wire Line
	4700 5650 4700 5550
Wire Wire Line
	4250 5750 4250 5650
Connection ~ 4250 5650
Wire Wire Line
	3950 5550 3950 5650
Connection ~ 3950 5650
Wire Wire Line
	4450 5550 4450 5650
Connection ~ 4450 5650
$Comp
L +12V #PWR017
U 1 1 60748911
P 10250 1250
F 0 "#PWR017" H 10250 1100 50  0001 C CNN
F 1 "+12V" H 10250 1390 50  0000 C CNN
F 2 "" H 10250 1250 50  0001 C CNN
F 3 "" H 10250 1250 50  0001 C CNN
	1    10250 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1650 10250 1650
Wire Wire Line
	10250 1650 10250 1250
$Comp
L Mounting_Hole MK3
U 1 1 607774AA
P 5300 7850
F 0 "MK3" H 5300 8050 50  0000 C CNN
F 1 "Mounting_Hole" H 5300 7975 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 5300 7850 50  0001 C CNN
F 3 "" H 5300 7850 50  0001 C CNN
	1    5300 7850
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole MK1
U 1 1 6077776D
P 5950 7150
F 0 "MK1" H 5950 7350 50  0000 C CNN
F 1 "Mounting_Hole" H 5950 7275 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 5950 7150 50  0001 C CNN
F 3 "" H 5950 7150 50  0001 C CNN
	1    5950 7150
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole MK4
U 1 1 60777A2E
P 5950 7850
F 0 "MK4" H 5950 8050 50  0000 C CNN
F 1 "Mounting_Hole" H 5950 7975 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 5950 7850 50  0001 C CNN
F 3 "" H 5950 7850 50  0001 C CNN
	1    5950 7850
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole_PAD MK2
U 1 1 60777C47
P 5300 7200
F 0 "MK2" H 5300 7450 50  0000 C CNN
F 1 "Mounting_Hole_PAD" H 5300 7375 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 5300 7200 50  0001 C CNN
F 3 "" H 5300 7200 50  0001 C CNN
	1    5300 7200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 607784BF
P 5300 7350
F 0 "#PWR018" H 5300 7100 50  0001 C CNN
F 1 "GND" H 5300 7200 50  0000 C CNN
F 2 "" H 5300 7350 50  0001 C CNN
F 3 "" H 5300 7350 50  0001 C CNN
	1    5300 7350
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole FID1
U 1 1 60778AC3
P 4000 7850
F 0 "FID1" H 4000 8050 50  0000 C CNN
F 1 "Fiducial" H 4000 7975 50  0000 C CNN
F 2 "Fiducials:Fiducial_Modern_CopperTop" H 4000 7850 50  0001 C CNN
F 3 "" H 4000 7850 50  0001 C CNN
	1    4000 7850
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole FID2
U 1 1 60778C48
P 4400 7850
F 0 "FID2" H 4400 8050 50  0000 C CNN
F 1 "Fiducial" H 4400 7975 50  0000 C CNN
F 2 "Fiducials:Fiducial_Modern_CopperTop" H 4400 7850 50  0001 C CNN
F 3 "" H 4400 7850 50  0001 C CNN
	1    4400 7850
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole FID3
U 1 1 60778DBB
P 4800 7850
F 0 "FID3" H 4800 8050 50  0000 C CNN
F 1 "Fiducial" H 4800 7975 50  0000 C CNN
F 2 "Fiducials:Fiducial_Modern_CopperTop" H 4800 7850 50  0001 C CNN
F 3 "" H 4800 7850 50  0001 C CNN
	1    4800 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 7300 5300 7350
$EndSCHEMATC