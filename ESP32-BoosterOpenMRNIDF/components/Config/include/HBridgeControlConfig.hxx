// -!- c++ -!- //////////////////////////////////////////////////////////////
//
//  System        : 
//  Module        : 
//  Object Name   : $RCSfile$
//  Revision      : $Revision$
//  Date          : $Date$
//  Author        : $Author$
//  Created By    : Robert Heller
//  Created       : Tue Jan 3 16:32:20 2023
//  Last Modified : <230103.1633>
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

#ifndef __HBRIDGECONTROLCONFIG_HXX
#define __HBRIDGECONTROLCONFIG_HXX
#include <openlcb/ConfigRepresentation.hxx>

#include "sdkconfig.h"

/// CDI Configuration for a @ref HBridgeControl.
CDI_GROUP(HBridgeControlConfig);
CDI_GROUP_ENTRY(event_short,
                openlcb::EventConfigEntry,
                Name("Short Detected"),
                Description("This event will be produced when a short has "
                            "been detected on the track output."));
CDI_GROUP_ENTRY(event_short_cleared,
                openlcb::EventConfigEntry,
                Name("Short Cleared"),
                Description("This event will be produced when a short has "
                            "been cleared on the track output."));
CDI_GROUP_ENTRY(event_shutdown,
                openlcb::EventConfigEntry,
                Name("H-Bridge Shutdown"),
                Description("This event will be produced when the track "
                            "output power has exceeded the safety threshold "
                            "of the H-Bridge."));
CDI_GROUP_ENTRY(event_shutdown_cleared,
                openlcb::EventConfigEntry,
                Name("H-Bridge Shutdown Cleared"),
                Description("This event will be produced when the track "
                            "output power has returned to safe levels."));
CDI_GROUP_ENTRY(event_thermflagon,
                openlcb::EventConfigEntry,
                Name("Thermal Flag on"));
CDI_GROUP_ENTRY(event_thermflagoff,
                openlcb::EventConfigEntry,
                Name("Thermal Flag off"));
CDI_GROUP_END();


#endif // __HBRIDGECONTROLCONFIG_HXX

