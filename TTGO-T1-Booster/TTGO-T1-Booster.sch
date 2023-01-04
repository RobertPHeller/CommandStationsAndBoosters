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
LIBS:sn65hvd233-ht
LIBS:lm2574n-5
LIBS:MCP9700T-E_LT
LIBS:DRV8873HPWPR
LIBS:ina180b
LIBS:esp32_devboards
LIBS:TTGO-T1-Booster-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4075 1450 2825 1950
U 632C7FD0
F0 "MCU" 60
F1 "MCU.sch" 60
F2 "CAN_TX" O L 4075 2200 60 
F3 "CAN_RX" I L 4075 2400 60 
F4 "GPIO34/ADC1_CHANNEL_6/CurrentSense" I L 4075 3250 60 
F5 "GPIO35/ADC1_CHANNEL_7/TemperatureSense" I R 6900 2525 60 
F6 "GPIO26/Brake" O L 4075 2850 60 
F7 "GPIO27/Fan" O R 6900 2225 60 
$EndSheet
$Sheet
S 600  1800 2300 1950
U 632C7FE7
F0 "CAN Transciver" 60
F1 "CanTransciver.sch" 60
F2 "CAN_TX" I R 2900 2200 60 
F3 "CAN_RX" O R 2900 2400 60 
F4 "ALT_L" B R 2900 3200 60 
F5 "ALT_H" B R 2900 3050 60 
$EndSheet
$Sheet
S 600  4200 2325 1825
U 632C8003
F0 "Power Supply" 60
F1 "PowerSupply.sch" 60
F2 "PowerInput" I R 2925 4625 60 
F3 "12V" O R 2925 4900 60 
$EndSheet
$Sheet
S 8200 1600 1950 1500
U 63B5F69E
F0 "Fan Control" 60
F1 "FANControl.sch" 60
F2 "FAN_POWER" I L 8200 1925 60 
F3 "FAN_CONTROL" I L 8200 2225 60 
F4 "TEMP_SENSE" O L 8200 2525 60 
$EndSheet
$Sheet
S 4400 4350 2225 1950
U 63B5F6B3
F0 "OPS Booster" 60
F1 "OPSBooster.sch" 60
F2 "IN_B" I L 4400 4600 60 
F3 "IN_A" I L 4400 4475 60 
F4 "BRAKE" I L 4400 4925 60 
F5 "PowerIn" I L 4400 5125 60 
F6 "A" O R 6625 5050 60 
F7 "B" O R 6625 5850 60 
F8 "Sense_Pos" O L 4400 5550 60 
F9 "Sense_Neg" O L 4400 5750 60 
$EndSheet
$Comp
L +12V #PWR?
U 1 1 63B63BF9
P 3050 4900
F 0 "#PWR?" H 3050 4750 50  0001 C CNN
F 1 "+12V" H 3050 5040 50  0000 C CNN
F 2 "" H 3050 4900 50  0001 C CNN
F 3 "" H 3050 4900 50  0001 C CNN
	1    3050 4900
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 63B63DA5
P 7950 1925
F 0 "#PWR?" H 7950 1775 50  0001 C CNN
F 1 "+12V" H 7950 2065 50  0000 C CNN
F 2 "" H 7950 1925 50  0001 C CNN
F 3 "" H 7950 1925 50  0001 C CNN
	1    7950 1925
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_01x03 J?
U 1 1 63B6441C
P 3375 6225
F 0 "J?" H 3375 6425 50  0000 C CNN
F 1 "Screw_Terminal_01x03" H 3375 6025 50  0000 C CNN
F 2 "" H 3375 6225 50  0001 C CNN
F 3 "" H 3375 6225 50  0001 C CNN
	1    3375 6225
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 63B644F9
P 3725 6225
F 0 "#PWR?" H 3725 5975 50  0001 C CNN
F 1 "GND" H 3725 6075 50  0000 C CNN
F 2 "" H 3725 6225 50  0001 C CNN
F 3 "" H 3725 6225 50  0001 C CNN
	1    3725 6225
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D?
U 1 1 63B645EF
P 3375 5575
F 0 "D?" H 3375 5675 50  0000 C CNN
F 1 "D_Schottky" H 3375 5475 50  0000 C CNN
F 2 "" H 3375 5575 50  0001 C CNN
F 3 "" H 3375 5575 50  0001 C CNN
	1    3375 5575
	0    1    1    0   
$EndComp
$Comp
L INA180B U?
U 1 1 63B65688
P 3925 5650
F 0 "U?" H 3925 5650 60  0000 C CNN
F 1 "INA180B" H 3950 5550 39  0000 C CNN
F 2 "" H 3925 5650 60  0001 C CNN
F 3 "" H 3925 5650 60  0001 C CNN
	1    3925 5650
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 63B65DD4
P 4275 5650
F 0 "#PWR?" H 4275 5400 50  0001 C CNN
F 1 "GND" H 4275 5500 50  0000 C CNN
F 2 "" H 4275 5650 50  0001 C CNN
F 3 "" H 4275 5650 50  0001 C CNN
	1    4275 5650
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 63B65F59
P 3625 5500
F 0 "#PWR?" H 3625 5350 50  0001 C CNN
F 1 "+3V3" H 3625 5640 50  0000 C CNN
F 2 "" H 3625 5500 50  0001 C CNN
F 3 "" H 3625 5500 50  0001 C CNN
	1    3625 5500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 63B6AE87
P 6850 5250
F 0 "C?" H 6875 5350 50  0000 L CNN
F 1 "C" H 6875 5150 50  0000 L CNN
F 2 "" H 6888 5100 50  0001 C CNN
F 3 "" H 6850 5250 50  0001 C CNN
	1    6850 5250
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 63B6AF1C
P 6850 5650
F 0 "R?" V 6930 5650 50  0000 C CNN
F 1 "R" V 6850 5650 50  0000 C CNN
F 2 "" V 6780 5650 50  0001 C CNN
F 3 "" H 6850 5650 50  0001 C CNN
	1    6850 5650
	1    0    0    -1  
$EndComp
$Comp
L Fuse F?
U 1 1 63B6B25D
P 7375 5050
F 0 "F?" V 7455 5050 50  0000 C CNN
F 1 "Fuse" V 7300 5050 50  0000 C CNN
F 2 "" V 7305 5050 50  0001 C CNN
F 3 "" H 7375 5050 50  0001 C CNN
	1    7375 5050
	0    1    1    0   
$EndComp
$Comp
L Fuse F?
U 1 1 63B6B3C0
P 7400 5850
F 0 "F?" V 7480 5850 50  0000 C CNN
F 1 "Fuse" V 7325 5850 50  0000 C CNN
F 2 "" V 7330 5850 50  0001 C CNN
F 3 "" H 7400 5850 50  0001 C CNN
	1    7400 5850
	0    1    1    0   
$EndComp
$Comp
L Screw_Terminal_01x02 J?
U 1 1 63B6BAB6
P 7850 5300
F 0 "J?" H 7850 5400 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 7850 5100 50  0000 C CNN
F 2 "" H 7850 5300 50  0001 C CNN
F 3 "" H 7850 5300 50  0001 C CNN
	1    7850 5300
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 63B6BC6B
P 6925 6075
F 0 "R?" V 7005 6075 50  0000 C CNN
F 1 "R" V 6925 6075 50  0000 C CNN
F 2 "" V 6855 6075 50  0001 C CNN
F 3 "" H 6925 6075 50  0001 C CNN
	1    6925 6075
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 63B6BD03
P 7100 6075
F 0 "R?" V 7180 6075 50  0000 C CNN
F 1 "R" V 7100 6075 50  0000 C CNN
F 2 "" V 7030 6075 50  0001 C CNN
F 3 "" H 7100 6075 50  0001 C CNN
	1    7100 6075
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 63B6C78E
P 7075 6425
F 0 "D?" H 7075 6525 50  0000 C CNN
F 1 "LED" H 7075 6325 50  0000 C CNN
F 2 "" H 7075 6425 50  0001 C CNN
F 3 "" H 7075 6425 50  0001 C CNN
	1    7075 6425
	-1   0    0    1   
$EndComp
$Comp
L LED D?
U 1 1 63B6CB46
P 7250 6300
F 0 "D?" H 7250 6400 50  0000 C CNN
F 1 "LED" H 7250 6200 50  0000 C CNN
F 2 "" H 7250 6300 50  0001 C CNN
F 3 "" H 7250 6300 50  0001 C CNN
	1    7250 6300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 63B6CDD4
P 7525 6300
F 0 "#PWR?" H 7525 6050 50  0001 C CNN
F 1 "GND" H 7525 6150 50  0000 C CNN
F 2 "" H 7525 6300 50  0001 C CNN
F 3 "" H 7525 6300 50  0001 C CNN
	1    7525 6300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8200 1925 7950 1925
Wire Wire Line
	2925 4900 3050 4900
Wire Wire Line
	3275 6025 3275 5850
Wire Wire Line
	3275 5850 3700 5850
Wire Wire Line
	3700 5850 3700 6200
Wire Wire Line
	3700 6200 3725 6200
Wire Wire Line
	3725 6200 3725 6225
Wire Wire Line
	3475 6025 3475 5850
Connection ~ 3475 5850
Wire Wire Line
	3375 6025 3375 5725
Wire Wire Line
	3375 4625 3375 5425
Wire Wire Line
	3375 4625 2925 4625
Wire Wire Line
	4400 5125 3375 5125
Connection ~ 3375 5125
Wire Wire Line
	4400 5750 4200 5750
Wire Wire Line
	4400 5550 4200 5550
Wire Wire Line
	4275 5650 4200 5650
Wire Wire Line
	3625 5500 3625 5550
Wire Wire Line
	2900 3200 3400 3200
Wire Wire Line
	3400 3200 3400 4600
Wire Wire Line
	3400 4600 4400 4600
Wire Wire Line
	2875 3050 3475 3050
Wire Wire Line
	3475 3050 3475 4475
Wire Wire Line
	3475 4475 4400 4475
Wire Wire Line
	6625 5050 7225 5050
Wire Wire Line
	6625 5850 7250 5850
Wire Wire Line
	6850 5100 6850 5050
Connection ~ 6850 5050
Wire Wire Line
	6850 5500 6850 5400
Wire Wire Line
	6850 5800 6850 5850
Connection ~ 6850 5850
Wire Wire Line
	7525 5050 7575 5050
Wire Wire Line
	7575 5050 7575 5300
Wire Wire Line
	7575 5300 7650 5300
Wire Wire Line
	7650 5400 7575 5400
Wire Wire Line
	7575 5400 7575 5850
Wire Wire Line
	7575 5850 7550 5850
Wire Wire Line
	6925 5925 6925 5850
Connection ~ 6925 5850
Wire Wire Line
	7100 5925 7100 5050
Connection ~ 7100 5050
Wire Wire Line
	6925 6225 6925 6425
Wire Wire Line
	7100 6225 7100 6300
Wire Wire Line
	7225 6425 7400 6425
Wire Wire Line
	7400 6425 7400 6300
Wire Wire Line
	7400 6300 7525 6300
Wire Wire Line
	2900 2200 4075 2200
Wire Wire Line
	2900 2400 4075 2400
Wire Wire Line
	4075 3250 3575 3250
Wire Wire Line
	3575 3250 3575 5750
Wire Wire Line
	3575 5750 3625 5750
Wire Wire Line
	8200 2225 6900 2225
Wire Wire Line
	8200 2525 6900 2525
Wire Wire Line
	4400 4925 3675 4925
Wire Wire Line
	3675 4925 3675 2850
Wire Wire Line
	3675 2850 4075 2850
$EndSCHEMATC
