// -!- c++ -!- //////////////////////////////////////////////////////////////
//
//  System        : 
//  Module        : 
//  Object Name   : $RCSfile$
//  Revision      : $Revision$
//  Date          : $Date$
//  Author        : $Author$
//  Created By    : Robert Heller
//  Created       : Tue Jan 3 16:31:22 2023
//  Last Modified : <230103.1632>
//
//  Description	
//
//  Notes
//
//  History
//	
/////////////////////////////////////////////////////////////////////////////
//
//    Copyright (C) 2023  Robert Heller D/B/A Deepwoods Software
//			51 Locke Hill Road
//			Wendell, MA 01379-9728
//
//    This program is free software; you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation; either version 2 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program; if not, write to the Free Software
//    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
//
// 
//
//////////////////////////////////////////////////////////////////////////////

#ifndef __FANCONTROLCONFIG_HXX
#define __FANCONTROLCONFIG_HXX

#include <openlcb/ConfigRepresentation.hxx>

#include "sdkconfig.h"

/// CDI Configuration for a @ref FanControl.
CDI_GROUP(FanControlConfig);
CDI_GROUP_ENTRY(alarmtemperaturethresh,
                openlcb::Uint16ConfigEntry,
                Name("Alarm Temperature threshold, in tenths of degrees Centitrade."),
                Default(350),Min(250),Max(500),
                Description("This is the temperature level to issue an event."));
CDI_GROUP_ENTRY(alarmon,
                openlcb::EventConfigEntry,
                Name("Alarm On Event"));
CDI_GROUP_ENTRY(alarmoff,
                openlcb::EventConfigEntry,
                Name("Alarm Off Event"));
CDI_GROUP_ENTRY(fantemperaturethresh,
                openlcb::Uint16ConfigEntry,
                Name("Fan Temperature threshold, in tenths of degrees Centitrade."),
                Default(250),Min(250),Max(500),
                Description("This is the temperature level to turn on the fan."));
CDI_GROUP_ENTRY(fanon,
                openlcb::EventConfigEntry,
                Name("Fan On Event"));
CDI_GROUP_ENTRY(fanoff,
                openlcb::EventConfigEntry,
                Name("Fan Off Event"));
CDI_GROUP_END();



#endif // __FANCONTROLCONFIG_HXX

