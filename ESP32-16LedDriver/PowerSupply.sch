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
LIBS:ESP32-16LedDriver-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L LM2574N-5.0 U3
U 1 1 5C829CEE
P 5200 2800
F 0 "U3" H 5200 2850 60  0000 C CNN
F 1 "LM2574N-5.0" H 5200 2950 21  0000 C CNN
F 2 "~" H 5200 2800 60  0000 C CNN
F 3 "~" H 5200 2800 60  0000 C CNN
	1    5200 2800
	1    0    0    -1  
$EndComp
$Comp
L CP1 C5
U 1 1 5C829D01
P 5950 2900
F 0 "C5" H 6000 3000 50  0000 L CNN
F 1 "22 uf 100V" H 6000 2800 50  0000 L CNN
F 2 "~" H 5950 2900 60  0000 C CNN
F 3 "~" H 5950 2900 60  0000 C CNN
	1    5950 2900
	1    0    0    -1  
$EndComp
$Comp
L CP1 C4
U 1 1 5C829D34
P 3700 2800
F 0 "C4" H 3750 2900 50  0000 L CNN
F 1 "220 uf 25V" H 3750 2700 50  0000 L CNN
F 2 "~" H 3700 2800 60  0000 C CNN
F 3 "~" H 3700 2800 60  0000 C CNN
	1    3700 2800
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR_SMALL L1
U 1 1 5C829D66
P 4550 2900
F 0 "L1" H 4550 3000 50  0000 C CNN
F 1 "330 uh" H 4550 2850 50  0000 C CNN
F 2 "~" H 4550 2900 60  0000 C CNN
F 3 "~" H 4550 2900 60  0000 C CNN
	1    4550 2900
	1    0    0    -1  
$EndComp
$Comp
L DIODESCH D3
U 1 1 5C829D75
P 4850 3100
F 0 "D3" H 4850 3200 40  0000 C CNN
F 1 "SB160-E3/54" H 4850 3000 40  0000 C CNN
F 2 "~" H 4850 3100 60  0000 C CNN
F 3 "~" H 4850 3100 60  0000 C CNN
	1    4850 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 2700 5500 2700
Wire Wire Line
	4900 2600 3700 2600
Wire Wire Line
	4300 2900 4300 2600
Connection ~ 4300 2600
Wire Wire Line
	4800 2900 4900 2900
Connection ~ 4850 2900
Wire Wire Line
	5950 3150 5950 3100
Wire Wire Line
	5150 3150 5950 3150
Connection ~ 5350 3150
Connection ~ 5250 3150
Wire Wire Line
	5150 3300 5150 3150
Wire Wire Line
	3700 3300 5150 3300
Wire Wire Line
	3700 3300 3700 3000
Connection ~ 4850 3300
$Comp
L GND #PWR012
U 1 1 5C829DEF
P 4850 3400
F 0 "#PWR012" H 4850 3400 30  0001 C CNN
F 1 "GND" H 4850 3330 30  0001 C CNN
F 2 "" H 4850 3400 60  0000 C CNN
F 3 "" H 4850 3400 60  0000 C CNN
	1    4850 3400
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR013
U 1 1 5C829DFE
P 5950 2550
F 0 "#PWR013" H 5950 2500 20  0001 C CNN
F 1 "+12V" H 5950 2650 30  0000 C CNN
F 2 "" H 5950 2550 60  0000 C CNN
F 3 "" H 5950 2550 60  0000 C CNN
	1    5950 2550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 5C829E17
P 3700 2450
F 0 "#PWR014" H 3700 2540 20  0001 C CNN
F 1 "+5V" H 3700 2540 30  0000 C CNN
F 2 "" H 3700 2450 60  0000 C CNN
F 3 "" H 3700 2450 60  0000 C CNN
	1    3700 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2550 5950 2700
Wire Wire Line
	3700 2600 3700 2450
Wire Wire Line
	4850 3300 4850 3400
$EndSCHEMATC
