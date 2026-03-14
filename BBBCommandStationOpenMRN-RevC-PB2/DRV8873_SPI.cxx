// -!- C++ -!- //////////////////////////////////////////////////////////////
//
//  System        : 
//  Module        : 
//  Object Name   : $RCSfile$
//  Revision      : $Revision$
//  Date          : $Date$
//  Author        : $Author$
//  Created By    : Robert Heller
//  Created       : 2026-03-05 08:01:22
//  Last Modified : <260305.1237>
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
/// @file DRV8873_SPI.cxx
/// @author Robert Heller
/// @date 2026-03-05 08:01:22
/// 
///
//////////////////////////////////////////////////////////////////////////////

static const char rcsid[] = "@(#) : $Id$";

#include <linux/types.h>
#include <sys/ioctl.h>
#include <linux/spi/spi.h>
#include <linux/spi/spidev.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>

#include "utils/macros.h"

#include "DRV8873_SPI.hxx"

const uint8_t DRV8873_SPI::mode_ = 0;
const uint8_t DRV8873_SPI::bits_ = 16;
const uint32_t DRV8873_SPI::speed_ = 1000000;

DRV8873_SPI::DRV8873_SPI(const char *spidevice)
{
    spifd_ = open(spidevice,O_RDWR);
    HASSERT(spifd_ >= 0);
    ioctl(spifd_, SPI_IOC_WR_MODE, &mode_);
    ioctl(spifd_, SPI_IOC_WR_BITS_PER_WORD, &bits_);
    ioctl(spifd_, SPI_IOC_WR_MAX_SPEED_HZ, &speed_);
}

DRV8873_SPI::~DRV8873_SPI()
{
    close(spifd_);
}

bool DRV8873_SPI::CheckFault(bool &overtemp, bool &UVLO, bool &CPUV, 
                             bool &overCurrent, bool &overTempShut, 
                             bool &openLoad)
{
    DataOut tx = {
        .data = 0,
        .addr = FAULT_addr,
        .write = 0,
    };
    DataIn rx;
    struct spi_ioc_transfer tr = {
        .tx_buf = (unsigned long)&tx,
        .rx_buf = (unsigned long)&rx,
        .len = sizeof(tx),
        .speed_hz = speed_,
        .bits_per_word = bits_,
    };
    ioctl(spifd_, SPI_IOC_MESSAGE(1), &tr);
    overtemp = rx.faultreg.OTW != 0;
    UVLO = rx.faultreg.UVLO != 0;
    CPUV = rx.faultreg.CPUV != 0;
    overCurrent = rx.faultreg.OCP != 0;
    overTempShut = rx.faultreg.TSD != 0;
    openLoad = rx.faultreg.OLD != 0;
    return rx.faultreg.FAULT != 0;
}

void DRV8873_SPI::ClearFault()
{
    DataOut tx = {
        .ic3reg = {
            .PH_IN2 = 0,
            .EN_IN1 = 0,
            .OUT2_DIS = 0,
            .OUT1_DIS = 0,
            .LOCK = 0b100,
            .CLR_FLT = 1,
        },
        .addr = IC3_addr,
        .write = 1,
    };
    DataIn rx;
    struct spi_ioc_transfer tr = {
        .tx_buf = (unsigned long)&tx,
        .rx_buf = (unsigned long)&rx,
        .len = sizeof(tx),
        .speed_hz = speed_,
        .bits_per_word = bits_, 
    };
    ioctl(spifd_, SPI_IOC_MESSAGE(1), &tr);
}

        
