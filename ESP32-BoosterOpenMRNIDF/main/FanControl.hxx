// -!- c++ -!- //////////////////////////////////////////////////////////////
//
//  System        : 
//  Module        : 
//  Object Name   : $RCSfile$
//  Revision      : $Revision$
//  Date          : $Date$
//  Author        : $Author$
//  Created By    : Robert Heller
//  Created       : Mon Oct 28 13:33:43 2019
//  Last Modified : <230103.1631>
//
//  Description	
//
//  Notes
//
//  History
//	
/////////////////////////////////////////////////////////////////////////////
//
//    Copyright (C) 2019  Robert Heller D/B/A Deepwoods Software
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

#ifndef __FANCONTROL_HXX
#define __FANCONTROL_HXX

#include "openlcb/PolledProducer.hxx"
#include "openlcb/EventHandlerTemplates.hxx"
#include "openlcb/ConfigRepresentation.hxx"
#include "utils/ConfigUpdateListener.hxx"
#include "utils/ConfigUpdateService.hxx"
#include "openlcb/RefreshLoop.hxx"
#include <os/Gpio.hxx>
#include <os/OS.hxx>
#include <utils/ConfigUpdateListener.hxx>
#include <utils/Debouncer.hxx>
#include "ADCWrapper.hxx"
#include "FanControlConfig.hxx"

class FanControl : public ConfigUpdateListener, public openlcb::Polling {
public:
    FanControl(openlcb::Node *node,
               const FanControlConfig &cfg,
               const ADC *temperatureADC,
               const Gpio *fanGpio);
    template <class FAN>
          FanControl(openlcb::Node *node,
                     const FanControlConfig &cfg,
                     const ADC *temperatureADC,
                     const FAN&,
                     const Gpio *fanGpio = FAN::instance());
    ~FanControl();
    virtual void poll_33hz(openlcb::WriteHelper *helper, Notifiable *done);
    virtual UpdateAction apply_configuration(int fd, bool initial_load,
                                             BarrierNotifiable *done);

    virtual void factory_reset(int fd);
    bool FanOn() const {return fanon_ == 1;}
    bool AlarmOn() const {return alarmon_ == 1;}
    openlcb::Polling *polling() {return this;}
    uint32_t getLastReading() {return lastReading_;}
private:
    openlcb::Node *node_;
    const FanControlConfig cfg_;
    const ADC * temperatureADC_;
    const Gpio *fanGpio_;
    uint16_t alarmthresh_{350};
    uint16_t fanthresh_{250};
    openlcb::MemoryBit<uint8_t> alarmBit_;
    openlcb::MemoryBit<uint8_t> fanBit_;
    openlcb::BitEventProducer alarmProducer_;
    openlcb::BitEventProducer fanProducer_;
    uint8_t fanon_{0};
    uint8_t alarmon_{0};
    uint16_t lastReading_{0};
};            

#endif // __FANCONTROL_HXX

