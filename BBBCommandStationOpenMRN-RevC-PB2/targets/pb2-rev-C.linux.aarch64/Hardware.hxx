// -!- C++ -!- //////////////////////////////////////////////////////////////
//
//  System        : 
//  Module        : 
//  Object Name   : $RCSfile$
//  Revision      : $Revision$
//  Date          : $Date$
//  Author        : $Author$
//  Created By    : Robert Heller
//  Created       : 2026-03-02 07:38:28
//  Last Modified : <260313.1632>
//
//  Description	
//
//  Notes
//
//  History
//	
/////////////////////////////////////////////////////////////////////////////
/// @copyright
///    Copyright (C) 2026  Robert Heller D/B/A Deepwoods Software
///			51 Locke Hill Road
///			Wendell, MA 01379-9728
///
///    This program is free software; you can redistribute it and/or modify
///    it under the terms of the GNU General Public License as published by
///    the Free Software Foundation; either version 2 of the License, or
///    (at your option) any later version.
///
///    This program is distributed in the hope that it will be useful,
///    but WITHOUT ANY WARRANTY; without even the implied warranty of
///    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
///    GNU General Public License for more details.
///
///    You should have received a copy of the GNU General Public License
///    along with this program; if not, write to the Free Software
///    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
/// @file Hardware.hxx
/// @author Robert Heller
/// @date 2026-03-02 07:38:28
/// 
///
//////////////////////////////////////////////////////////////////////////////

#ifndef __HARDWARE_HXX
#define __HARDWARE_HXX

#include <os/LinuxGpio.hxx>
#include "utils/GpioInitializer.hxx"

#define HARDWARE_IMPL "PB2 Rev C Command Station"

#define FANPin GpioOutputSafeLow                                                
#define EnablePin GpioOutputSafeHigh                                            
#define ThermFlagPin GpioInputActiveLow
#define Railcom                                                                 

// MCP9700T-E/LT: .5V == 0C, .01V/Degree C, 125C == 1.75V, 1.9V Vref,
// 12bit ADC (0 <= val <= 4095).
#define TempFromAIN(val) ((((val)*.0004639448)/.01)+(-50))

// On chip GPIO:
//
// Mains:
//
// DCC P2_24 (PRU 0, R30.14) [config-pin P2_24 pruout]
// EN  P2_33 GPIO0_52 [config-pin  P2_33 gpio_output]
// BRAKE P2_08 GPIO0_48 [config-pin P2_8 gpio_output]
// DEV8873 SPI2
// Current on ina220: /sys/class/hwmon/hwmon0/curr1_input
// Shunt resistor on on ina220: /sys/class/hwmon/hwmon0/shunt_resistor = .005 Ohms
#define MAIN_MAX_MILLIAMPS 2800
#define MAIN_LIMIT_MILLIAMPS 2800
GPIO_PIN(MainEN, EnablePin, 52);
GPIO_PIN(MainBRAKE, EnablePin, 48);
#define MAINSPI "/dev/spi2.0"
#define MAINCURRENT "/sys/class/hwmon/hwmon0/curr1_input"
#define MAINSHUNTRESISTOR  "/sys/class/hwmon/hwmon0/shunt_resistor"
#define MAINSHUNTVALUE "5000" // .005 * 1000000

//
// Prog
//
// DCC P2_34 (PRU1, R_30.11) [config-pin P2_34]
// EN  P1_04 (GPIO1_12) [config-pin P1_04]
// Current on ina220: /sys/class/hwmon/hwmon1/curr1_input
// Shunt resistor on on ina220: /sys/class/hwmon/hwmon1/shunt_resistor = .005 Ohms
#define PROG_MAX_MILLIAMPS 2800
GPIO_PIN(ProgEN, EnablePin, 44);  // 32+12
#define PROGCURRENT "/sys/class/hwmon/hwmon1/curr1_input"
#define PROGSHUNTRESISTOR  "/sys/class/hwmon/hwmon1/shunt_resistor"
#define PROGSHUNTVALUE "5000" // .005 * 1000000

// Tempsensor:
//
//  AIN2                [/sys/bus/iio/devices/iio:device0/in_voltage2_raw]
//                           Pocketbeagle: P1_23
//

#define TempsensorChannel 2

// Fan Control (out):
//
// P1_34 GPIO1_2 [config-pin P1_34 gpio]
//                           Pocketbeagle: P1_34

GPIO_PIN(FanControl, FANPin, 34);

// Railcom:
//
// RAILCOM-ENABLE P2_18 GPIO0_53  // PocketBeagle: P2_18
// RAILCOM-SHORT P2_22 GPIO0_63   // PocketBeagle: P2_22
// RAILCOM-DIR   P2_3 GPIO0_85    // PocketBeagle: P2_3
// RAILCOM-DATA  P2_20 /dev/ttyS4 // PocketBeagle: P2_5

GPIO_PIN(RailcomEN, EnablePin, 47);
GPIO_PIN(RailcomShort, ThermFlagPin, 46);
GPIO_PIN(RailcomDir, GpioInputActiveLow, 23);

typedef GpioInitializer<MainEN_Pin, ProgEN_Pin, 
                        MainBRAKE_Pin, FanControl_Pin, RailcomEN_Pin,
                        RailcomShort_Pin, RailcomDir_Pin> GpioInit;

#define RAILCOM_DATA_PORT "/dev/ttyS4"
#define RAILCOM_FEEDBACK_QUEUE 4

#define DEFAULT_TCP_GRIDCONNECT_HOST "localhost"
#define DEFAULT_TCP_GRIDCONNECT_PORT 12021
#define DEFAULT_GRIDCONNECT_HUB_PORT 12021

#define DEFAULT_CAN_SOCKET "can0"

#define WEBSERVERPORT 9090
#define WEBSERVERROOT "/home/heller/CommandStationsAndBoosters/BBBCommandStationOpenMRN-RevC-PB2/WEBFrontEnd/"




#endif // __HARDWARE_HXX
