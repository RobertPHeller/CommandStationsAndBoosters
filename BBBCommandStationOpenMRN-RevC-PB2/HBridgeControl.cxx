//// -!- C++ -!- //////////////////////////////////////////////////////////////
//
//  System        : 
//  Module        : 
//  Object Name   : $RCSfile$
//  Revision      : $Revision$
//  Date          : $Date$
//  Author        : $Author$
//  Created By    : Robert Heller
//  Created       : Mon Oct 28 13:33:31 2019
//  Last Modified : <260304.1429>
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
#include "utils/Singleton.hxx"
#include <dcc/ProgrammingTrackBackend.hxx>

#include "AnalogReadSysFS.h"
#include "HBridgeControl.hxx"
#include "Hardware.hxx"

#include <vector>
#include <numeric>

#include <libconfig.h++>

HBridgeControl::HBridgeControl(openlcb::Node *node, 
                               const libconfig::Setting &cfg, 
                               const char *sysFSCurrent,
                               const char *sysFSShunt,
                               const char *sysFSShuntValue,
                               const uint32_t maxMilliAmps,
                               const Gpio *enableGpio)
      : node_(node)
, sysFSCurrent_(sysFSCurrent)
, enableGpio_(enableGpio)
, maxMilliAmps_(maxMilliAmps)
, overCurrentLimit_(250) // ~250 mA
, shutdownLimit_(500)
, progAckLimit_(0)
, shortBit_(node, cfg.lookup("EventShortOn"), cfg.lookup("EventShortOff"), &state_, STATE_OVERCURRENT)
, shutdownBit_(node, cfg.lookup("EventShutdownOn"), cfg.lookup("EventShutdownOff"), &state_, STATE_SHUTDOWN)
, shortProducer_(&shortBit_)
, shutdownProducer_(&shortBit_)
{
    char buffer[32];
    int fd = open(sysFSShunt,O_WRONLY);
    HASSERT(fd >= 0);
    write(fd,sysFSShuntValue,strlen(sysFSShuntValue));
    write(fd,"\n",1);
    close(fd);
    fd = open(sysFSCurrent_,O_RDONLY);
    HASSERT(fd >= 0);
    read(fd,buffer,sizeof(buffer));
    close(fd);
    lastReading_ = atol(buffer);
}

HBridgeControl::~HBridgeControl()
{
}

void HBridgeControl::poll_33hz(openlcb::WriteHelper *helper, Notifiable *done)
{
    char buffer[32];
    int fd = open(sysFSCurrent_,O_RDONLY);
    HASSERT(fd >= 0);
    read(fd,buffer,sizeof(buffer));
    close(fd);
    lastReading_ = atol(buffer);
    
    if (progEnable_)
    {
        auto backend = Singleton<ProgrammingTrackBackend>::instance();
        if (lastReading_ >= overCurrentLimit_)
        {
            backend->notify_service_mode_short();
        }
        else if (lastReading_ >= progAckLimit_)
        {
            backend->notify_service_mode_ack();
        }
    }
    
    uint8_t previous_state = state_;
    
    if (lastReading_ >= shutdownLimit_)
    {
        enableGpio_->clr();
        state_ = STATE_SHUTDOWN;
    }
    else if (lastReading_ >= overCurrentLimit_)
    {
        if (overCurrentCheckCount_++ >= overCurrentRetryCount_)
        {
            enableGpio_->clr();
            state_ = STATE_OVERCURRENT;
        }
    }
    else
    {
        if (enableGpio_->is_set())
        {
            overCurrentCheckCount_ = 0;
            state_ = STATE_ON;
        }
        else
        {
            state_ = STATE_OFF;
        }
    }
    bool async_event_req = false;
    if (previous_state != state_)
    {
        if (previous_state == STATE_SHUTDOWN || state_ == STATE_SHUTDOWN)
        {
            shutdownProducer_.SendEventReport(helper, done);
            async_event_req = true;
        }
        else if (previous_state == STATE_OVERCURRENT || state_ == STATE_OVERCURRENT)
        {
            shortProducer_.SendEventReport(helper, done);
            async_event_req = true;
        }
    }
    if (!async_event_req)
    {
        done->notify();
    }
}


HBridgeControlSPI::HBridgeControlSPI(openlcb::Node *node,
                                     const libconfig::Setting &cfg,
                                     const char *spidevice,
                                     const char *sysFSCurrent,
                                     const char *sysFSShunt,
                                     const char *sysFSShuntValue,
                                     const uint32_t limitMilliAmps,
                                     const uint32_t maxMilliAmps, 
                                     const Gpio *enableGpio)
      : node_(node)
, sysFSCurrent_(sysFSCurrent)
, enableGpio_(enableGpio)
, maxMilliAmps_(maxMilliAmps)     
, overCurrentLimit_((uint32_t)round(limitMilliAmps*.9)) // ~90% max value
, shutdownLimit_((uint32_t)round(limitMilliAmps*.99))
, shortBit_(node, cfg.lookup("EventShortOn"), cfg.lookup("EventShortOff"), &state_, STATE_OVERCURRENT)
, shutdownBit_(node, cfg.lookup("EventShutdownOn"), cfg.lookup("EventShutdownOff"), &state_, STATE_SHUTDOWN)
, shortProducer_(&shortBit_)
, shutdownProducer_(&shortBit_)
{
    char buffer[32];
    int fd = open(sysFSShunt,O_WRONLY);
    HASSERT(fd >= 0);
    write(fd,sysFSShuntValue,strlen(sysFSShuntValue));
    write(fd,"\n",1);
    close(fd);
    fd = open(sysFSCurrent_,O_RDONLY);
    HASSERT(fd >= 0);
    read(fd,buffer,sizeof(buffer));
    close(fd);
    lastReading_ = atol(buffer);
    spifd_ = open(spidevice,O_RDWR);
    HASSERT(spifd_ >= 0);
}
