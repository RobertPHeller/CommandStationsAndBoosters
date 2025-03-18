// -!- c++ -!- //////////////////////////////////////////////////////////////
//
//  System        : 
//  Module        : 
//  Object Name   : $RCSfile$
//  Revision      : $Revision$
//  Date          : $Date$
//  Author        : $Author$
//  Created By    : Robert Heller
//  Created       : Mon Mar 17 14:29:59 2025
//  Last Modified : <250317.1431>
//
//  Description	
//
//  Notes
//
//  History
//	
/////////////////////////////////////////////////////////////////////////////
//
//    Copyright (C) 2025  Robert Heller D/B/A Deepwoods Software
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

#ifndef __RAILCOMHW_HXX
#define __RAILCOMHW_HXX

#include "Hardware.hxx"
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <termios.h>
#include <sys/ioctl.h>

// Railcom driver -- uses a hardware UART

#define RAILCOM_BAUD B230400
struct RailComHW
{
    using HB_BRAKE = MainBRAKE_Pin;
    using HB_ENABLE = ProgEN_Pin;
    using RC_ENABLE = RailcomEN_Pin;
    static void hw_init()
    {
    }
    static int openport()
    {
        struct termios railcomtermios;
        int fd = open(RAILCOM_DATA_PORT,O_RDWR);
        if (fd < 0) {
            LOG(FATAL,"RailComHW: Could not open %s (%d)", RAILCOM_DATA_PORT, errno);
            exit(errno);
        }
        tcgetattr(fd,&railcomtermios);
        cfmakeraw(&railcomtermios);
        cfsetspeed(&railcomtermios,RAILCOM_BAUD);
        // 1 stop bit, 8 data bits
        railcomtermios.c_cflag &= ~CSTOPB;
        railcomtermios.c_cflag &= ~CSIZE;
        railcomtermios.c_cflag |= CS8; 
        tcsetattr(fd,TCSANOW,&railcomtermios);
        return fd;
    }
    static size_t data_avail(int fd)
    {
        int bytes = 0;
        ioctl(fd,TIOCINQ,&bytes);
        return bytes;
    }
    static uint8_t readbyte(int fd)
    {
        uint8_t buff;
        /*size_t s =*/ read(fd,&buff,1);
        return buff;
    }
    static size_t readbuff(int fd,uint8_t *buf, size_t max_len)
    {
        return read(fd,buf,max_len);
    }
    static int flush(int fd)
    {
        return tcflush(fd,TCIFLUSH);
    }
  /// Number of microseconds to wait after the final packet bit completes
  /// before disabling the ENABLE pin on the h-bridge.
  static constexpr uint32_t RAILCOM_TRIGGER_DELAY_USEC = 1;

  /// Number of microseconds to wait for railcom data on channel 1.
  static constexpr uint32_t RAILCOM_MAX_READ_DELAY_CH_1 =
    177 - RAILCOM_TRIGGER_DELAY_USEC;

  /// Number of microseconds to wait for railcom data on channel 2.
  static constexpr uint32_t RAILCOM_MAX_READ_DELAY_CH_2 =
    454 - RAILCOM_MAX_READ_DELAY_CH_1;
};

#endif // __RAILCOMHW_HXX

