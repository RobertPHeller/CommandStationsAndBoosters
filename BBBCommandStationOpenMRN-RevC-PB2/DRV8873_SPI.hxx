// -!- C++ -!- //////////////////////////////////////////////////////////////
//
//  System        : 
//  Module        : 
//  Object Name   : $RCSfile$
//  Revision      : $Revision$
//  Date          : $Date$
//  Author        : $Author$
//  Created By    : Robert Heller
//  Created       : 2026-03-05 07:50:04
//  Last Modified : <260305.1218>
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
/// @file DRV8873_SPI.hxx
/// @author Robert Heller
/// @date 2026-03-05 07:50:04
/// 
///
//////////////////////////////////////////////////////////////////////////////

#ifndef __$BUFFER_NAME$
#define __$BUFFER_NAME$

class DRV8873_SPI {
public:
    DRV8873_SPI(const char *spidevice);
    ~DRV8873_SPI();
    bool CheckFault(bool &overtemp, bool &UVLO, bool &CPUV, bool &overCurrent,
                    bool &overTempShut, bool &openLoad);
    void ClearFault();
private:
    typedef struct {
        unsigned OLD:1;
        unsigned TSD:1;
        unsigned OCP:1;
        unsigned CPUV:1;
        unsigned UVLO:1;
        unsigned OTW:1;
        unsigned FAULT:1;
        unsigned RSVD:1;
    } FAULT_Status;
    typedef struct {
        unsigned OCP_L2:1;
        unsigned OCP_H2:1;
        unsigned OCP_L1:1;
        unsigned OCP_H1:1;
        unsigned ITRIP2:1;
        unsigned ITRIP1:1;
        unsigned OL2:1;
        unsigned OL1:1;
    } DIAG_Status;
    typedef struct { 
        unsigned MODE:2;
        unsigned SR:3;
        unsigned SPI_IN:1;
        unsigned TOFF:2;
    } IC1_Control;
    typedef struct {
        unsigned OCP_MODE:2;
        unsigned OCP_TRETRY:2;
        unsigned DIS_CPUV:1;
        unsigned OTW_REP:1;
        unsigned TSD_MODE:1;
        unsigned ITRIP_REP:1;
    } IC2_Control;
    typedef struct {
        unsigned PH_IN2:1;
        unsigned EN_IN1:1;
        unsigned OUT2_DIS:1;
        unsigned OUT1_DIS:1;
        unsigned LOCK:3;
        unsigned CLR_FLT:1;
    } IC3_Control;
    typedef struct {
        unsigned DIS_ITRIP:2;
        unsigned ITRIP_LVL:2;
        unsigned EN_OLA:1;
        unsigned OLP_DLY:1;
        unsigned EN_OLP:1;
        unsigned RSVD:1;
    } IC4_Control;
    typedef struct {
        union {
            unsigned data:8;
            FAULT_Status faultreg;
            DIAG_Status diagreg;
            IC1_Control ic1reg;
            IC2_Control ic2reg;
            IC3_Control ic3reg;
            IC4_Control ic4reg;
        };
        unsigned OLD:1;
        unsigned TSD:1;
        unsigned OCP:1;
        unsigned CPUV:1;
        unsigned UVLO:1;
        unsigned OTW:1;
        unsigned :2;
    } DataIn;
    typedef struct {
        union {
            unsigned data:8;
            IC1_Control ic1reg;
            IC2_Control ic2reg;
            IC3_Control ic3reg;
            IC4_Control ic4reg;
        };
        unsigned :1;
        unsigned addr:5;
        unsigned write:1;
        unsigned :1;
    } DataOut;
    typedef enum {FAULT_addr=0x00, DIAG_addr=0x01, IC1_addr=0x02, 
        IC2_addr=0x03, IC3_addr=0x04, IC4_addr=0x05} Registers;
    static /*constexpr*/ const uint8_t mode_/* = 0*/;
    static /*constexpr*/ const uint8_t bits_/* = 16*/;
    static /*constexpr*/ const uint32_t speed_/* = 1000000*/;
    int spifd_;
};

#endif // __$BUFFER_NAME$
