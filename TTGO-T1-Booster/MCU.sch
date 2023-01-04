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
Sheet 2 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TTGO-T1 U?
U 1 1 63B6D82E
P 5025 3125
F 0 "U?" H 5025 3125 60  0000 C CNN
F 1 "TTGO-T1" H 5025 3675 60  0000 C CNN
F 2 "" H 5025 3125 60  0000 C CNN
F 3 "" H 5025 3125 60  0000 C CNN
	1    5025 3125
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 63B6D877
P 5550 2975
F 0 "#PWR?" H 5550 2825 50  0001 C CNN
F 1 "+5V" H 5550 3115 50  0000 C CNN
F 2 "" H 5550 2975 50  0001 C CNN
F 3 "" H 5550 2975 50  0001 C CNN
	1    5550 2975
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 63B6D89D
P 4500 2675
F 0 "#PWR?" H 4500 2525 50  0001 C CNN
F 1 "+3V3" H 4500 2815 50  0000 C CNN
F 2 "" H 4500 2675 50  0001 C CNN
F 3 "" H 4500 2675 50  0001 C CNN
	1    4500 2675
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 63B6D8CB
P 5550 2675
F 0 "#PWR?" H 5550 2425 50  0001 C CNN
F 1 "GND" H 5550 2525 50  0000 C CNN
F 2 "" H 5550 2675 50  0001 C CNN
F 3 "" H 5550 2675 50  0001 C CNN
	1    5550 2675
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 63B6D8F9
P 4500 3325
F 0 "#PWR?" H 4500 3075 50  0001 C CNN
F 1 "GND" H 4500 3175 50  0000 C CNN
F 2 "" H 4500 3325 50  0001 C CNN
F 3 "" H 4500 3325 50  0001 C CNN
	1    4500 3325
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 2675 4575 2675
Wire Wire Line
	5475 2675 5550 2675
Wire Wire Line
	5475 2975 5550 2975
Wire Wire Line
	4500 3325 4575 3325
Text HLabel 5550 3125 2    60   Output ~ 0
CAN_TX
Text HLabel 5550 3275 2    60   Input ~ 0
CAN_RX
Wire Wire Line
	5550 3125 5475 3125
Wire Wire Line
	5550 3275 5475 3275
Text HLabel 4500 2875 0    60   Input ~ 0
GPIO34/ADC1_CHANNEL_6/CurrentSense
Text HLabel 4500 2925 0    60   Input ~ 0
GPIO35/ADC1_CHANNEL_7/TemperatureSense
Wire Wire Line
	4500 2875 4575 2875
Wire Wire Line
	4500 2925 4575 2925
Text HLabel 4525 3125 0    60   Output ~ 0
GPIO26/Brake
Text HLabel 4525 3175 0    60   Output ~ 0
GPIO27/Fan
Wire Wire Line
	4575 3125 4525 3125
Wire Wire Line
	4575 3175 4525 3175
$EndSCHEMATC
