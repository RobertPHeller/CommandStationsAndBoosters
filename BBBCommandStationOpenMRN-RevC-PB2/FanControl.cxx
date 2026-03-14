// -!- C++ -!- //////////////////////////////////////////////////////////////
//
//  System        : 
//  Module        : 
//  Object Name   : $RCSfile$
//  Revision      : $Revision$
//  Date          : $Date$
//  Author        : $Author$
//  Created By    : Robert Heller
//  Created       : Mon Oct 28 13:33:53 2019
//  Last Modified : <260314.0910>
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

static const char rcsid[] = "@(#) : $Id$";

#include <math.h>
#include <string.h>
#include "openlcb/PolledProducer.hxx"
#include "openlcb/EventHandlerTemplates.hxx"
#include "openlcb/ConfigRepresentation.hxx"
#include "utils/ConfigUpdateListener.hxx"
#include "utils/ConfigUpdateService.hxx"
#include "openlcb/RefreshLoop.hxx"
#include "utils/logging.h"

#include "AnalogReadSysFS.h"
#include "FanControl.hxx"
#include "Hardware.hxx"
#include <vector>
#include <numeric>

#include <libconfig.h++>

FanControl::FanControl(openlcb::Node *node,
                       const libconfig::Setting &cfg,
                       uint8_t temperatureAIN,
                       const Gpio *fanGpio)
      : node_(node)
, temperatureAIN_(temperatureAIN)
, fanGpio_(fanGpio)
, alarmBit_(node, cfg.lookup("AlarmOn"), cfg.lookup("AlarmOff"), &alarmon_, 1)
, fanBit_(node, cfg.lookup("FanOn"),  cfg.lookup("FanOff"), &fanon_, 1)
, alarmProducer_(&alarmBit_)
, fanProducer_(&fanBit_)
{
    alarmthresh_ = (int)cfg.lookup("AlarmTempThresh");
    fanthresh_ = (int)cfg.lookup("FanTempThresh");
}

template <class FAN>
FanControl::FanControl(openlcb::Node *node,
                     const libconfig::Setting &cfg,
                     uint8_t temperatureAIN,
                     const FAN&,
                     const Gpio *fanGpio)
      : node_(node)
, temperatureAIN_(temperatureAIN)
, fanGpio_(fanGpio)
, alarmBit_(node, cfg.lookup("AlarmOn"), cfg.lookup("AlarmOff"), &alarmon_, 1)
, fanBit_(node, cfg.lookup("FanOn"),  cfg.lookup("FanOff"), &fanon_, 1)
, alarmProducer_(&alarmBit_)
, fanProducer_(&fanBit_)
{
    alarmthresh_ = (int)cfg.lookup("AlarmTempThresh");
    fanthresh_ = (int)cfg.lookup("FanTempThresh");
}

FanControl::~FanControl()
{
}

void FanControl::poll_33hz(openlcb::WriteHelper *helper, Notifiable *done)
{
    vector<int> samples;
    
    while (samples.size() < 32)
    {
        if (temperatureAIN_ != 0xff)
        {
            samples.push_back(sysfs_adc_getvalue(temperatureAIN_));
            usleep(1);
        }
        else
        {
            samples.push_back(0);
        }
    }
    
    lastReading_ = (uint16_t)round(TempFromAIN(std::accumulate(samples.begin(), samples.end(), 0)/32)*10);
    //LOG(INFO,"*** FanControl::poll_33hz(): hsTempTensC = %d",hsTempTensC);
    //LOG(INFO,"*** -: alarmthresh_ = %d, alarmon_ = %d",alarmthresh_,alarmon_);
    bool async_event_req = false;
    if (lastReading_ > alarmthresh_ && alarmon_ == 0)
    {
        alarmon_ = 1;
        alarmProducer_.SendEventReport(helper, done);
        async_event_req = true;
    } else if (lastReading_ <= alarmthresh_ && alarmon_ == 1)
    {
        alarmon_ = 0;
        alarmProducer_.SendEventReport(helper, done);
        async_event_req = true;
    }
    //LOG(INFO,"*** -: fanthresh_ = %d, fanon_ = %d",fanthresh_,fanon_);
    if (lastReading_ > fanthresh_ && fanon_ == 0)
    {
        fanon_ = 1;
        fanProducer_.SendEventReport(helper, done);
        async_event_req = true;
        fanon_ = true;
        fanGpio_->set();
    } else if (lastReading_ <= fanthresh_ && fanon_ == 1)
    {
        fanon_ = 0;
        fanProducer_.SendEventReport(helper, done);
        async_event_req = true;
        fanGpio_->clr();
    }
    if (!async_event_req)
    {
        done->notify();
    }
}


