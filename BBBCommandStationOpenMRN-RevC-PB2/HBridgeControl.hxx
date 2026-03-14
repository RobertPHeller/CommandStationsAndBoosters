// -!- c++ -!- //////////////////////////////////////////////////////////////
//
//  System        : 
//  Module        : 
//  Object Name   : $RCSfile$
//  Revision      : $Revision$
//  Date          : $Date$
//  Author        : $Author$
//  Created By    : Robert Heller
//  Created       : Mon Oct 28 13:33:15 2019
//  Last Modified : <260305.1244>
//
//  Description	
//
//  Notes
//
//  History
//	
/////////////////////////////////////////////////////////////////////////////
//! @copyright
//!    Copyright (C) 2019  Robert Heller D/B/A Deepwoods Software
//!			51 Locke Hill Road
//!			Wendell, MA 01379-9728
//!
//!    This program is free software; you can redistribute it and/or modify
//!    it under the terms of the GNU General Public License as published by
//!    the Free Software Foundation; either version 2 of the License, or
//!    (at your option) any later version.
//!
//!    This program is distributed in the hope that it will be useful,
//!    but WITHOUT ANY WARRANTY; without even the implied warranty of
//!    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//!    GNU General Public License for more details.
//!
//!    You should have received a copy of the GNU General Public License
//!    along with this program; if not, write to the Free Software
//!    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
//! @file HBridgeControl.hxx
//! Manage a H-Bridge.
//!
//////////////////////////////////////////////////////////////////////////////

#ifndef __HBRIDGECONTROL_HXX
#define __HBRIDGECONTROL_HXX

#include <executor/StateFlow.hxx>
#include "openlcb/PolledProducer.hxx"
#include "openlcb/EventHandlerTemplates.hxx"
#include "openlcb/ConfigRepresentation.hxx"
#include <openlcb/Node.hxx>
#include "utils/ConfigUpdateListener.hxx"
#include "utils/ConfigUpdateService.hxx"
#include "openlcb/RefreshLoop.hxx"
#include <os/Gpio.hxx>
#include <os/OS.hxx>
#include <utils/ConfigUpdateListener.hxx>
#include <utils/Debouncer.hxx>

#include <libconfig.h++>
#include "DRV8873_SPI.hxx"

#define BIT(n) (1 << n)

class HBridgeControl : public openlcb::Polling {
public:
    HBridgeControl(openlcb::Node *node, 
                   const libconfig::Setting &cfg, 
                   const char *sysFSCurrent,
                   const char *sysFSShunt,
                   const char *sysFSShuntValue,
                   const uint32_t maxMilliAmps,
                   const Gpio *enableGpio);
    enum STATE : uint8_t
    {
        STATE_OVERCURRENT = BIT(0),
        STATE_SHUTDOWN    = BIT(1),
        STATE_ON          = BIT(2),
        STATE_OFF         = BIT(3)
    };
    ~HBridgeControl();
    virtual void poll_33hz(openlcb::WriteHelper *helper, Notifiable *done);
    bool EnabledP() const {return state_ != STATE_OFF;}
    bool OverCurrentP() const {return (state_ & STATE_OVERCURRENT) != 0;}
    openlcb::Polling *polling() {return this;}
    uint32_t getMaxMilliAmps() {return maxMilliAmps_;}
    uint32_t getLastReading() {return lastReading_;}
    bool isProgrammingTrack() {return true;}
    void enable_prog_response(bool enable)
    {
        progEnable_ = enable;
    }
private:
    openlcb::Node *node_;
    const char *sysFSCurrent_;
    const Gpio *enableGpio_;
    const uint32_t maxMilliAmps_;
    const uint32_t overCurrentLimit_;
    const uint8_t overCurrentRetryCount_{3};
    const uint32_t shutdownLimit_;
    const uint32_t progAckLimit_;
    openlcb::MemoryBit<uint8_t> shortBit_;
    openlcb::MemoryBit<uint8_t> shutdownBit_;
    openlcb::BitEventProducer shortProducer_;
    openlcb::BitEventProducer shutdownProducer_;
    bool progEnable_{false};
    uint8_t state_{STATE_OFF};
    uint8_t overCurrentCheckCount_{0};
    uint32_t lastReading_{0};
};            

class HBridgeControlSPI : public openlcb::Polling, public DRV8873_SPI {
public:
    HBridgeControlSPI(openlcb::Node *node, 
                      const libconfig::Setting &cfg, 
                      const char *spidevice,
                      const char *sysFSCurrent,
                      const char *sysFSShunt,
                      const char *sysFSShuntValue,
                      const uint32_t limitMilliAmps,
                      const uint32_t maxMilliAmps,
                      const Gpio *enableGpio);
    enum STATE : uint8_t
    {
        STATE_OVERCURRENT = BIT(0),
        STATE_SHUTDOWN    = BIT(1),
        STATE_ON          = BIT(2),
        STATE_OFF         = BIT(3)
    };
    ~HBridgeControlSPI();
    virtual void poll_33hz(openlcb::WriteHelper *helper, Notifiable *done);
    bool EnabledP() const {return state_ != STATE_OFF;}
    bool OverCurrentP() const {return (state_ & STATE_OVERCURRENT) != 0;}
    openlcb::Polling *polling() {return this;}
    uint32_t getMaxMilliAmps() {return maxMilliAmps_;}
    uint32_t getLastReading() {return lastReading_;}
    bool isProgrammingTrack() {return false;}
private:
    openlcb::Node *node_;
    const char *sysFSCurrent_;
    const Gpio *enableGpio_;
    const uint32_t maxMilliAmps_;
    const uint32_t overCurrentLimit_;
    const uint8_t overCurrentRetryCount_{3};
    const uint32_t shutdownLimit_;
    openlcb::MemoryBit<uint8_t> shortBit_;
    openlcb::MemoryBit<uint8_t> shutdownBit_;
    openlcb::BitEventProducer shortProducer_;
    openlcb::BitEventProducer shutdownProducer_;
    uint8_t state_{STATE_OFF};
    uint8_t overCurrentCheckCount_{0};
    uint32_t lastReading_{0};
};            

#endif // __HBRIDGECONTROL_HXX

