// -!- c++ -!- //////////////////////////////////////////////////////////////
//
//  System        : 
//  Module        : 
//  Object Name   : $RCSfile$
//  Revision      : $Revision$
//  Date          : $Date$
//  Author        : $Author$
//  Created By    : Robert Heller
//  Created       : Mon Mar 17 12:47:00 2025
//  Last Modified : <250317.1716>
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

#ifndef __COMMANDSTATIONHTTPD_HXX
#define __COMMANDSTATIONHTTPD_HXX

#include <unistd.h>
#include <sys/stat.h>
#include <stdio.h>

#include "openmrn_features.h"
#include "nmranet_config.h"
#include "httpd/Httpd.hxx"
#include "httpd/HttpRequest.hxx"
#include "httpd/HttpReply.hxx"
#include "httpd/Uri.hxx"
#include "openlcb/DefaultNode.hxx"
#include "openlcb/EventHandlerTemplates.hxx"
#include "openlcb/EventService.hxx"
#include "openlcb/TractionTrain.hxx"
#include "openlcb/TrainInterface.hxx"
#include "openlcb/EventHandlerTemplates.hxx"
#include "openlcb/EventService.hxx"
#include "executor/PoolToQueueFlow.hxx"
#include "utils/Singleton.hxx"
#include <AllTrainNodes.hxx>
#include "BeagleTrainDatabase.hxx"
#include "CommandStationStack.hxx"
#include "HBridgeControl.hxx"
#include "FanControl.hxx"
#include "CommandStationDCCPRUTrack.hxx"
#include <dcc/ProgrammingTrackBackend.hxx>
#include "DuplexedTrackIf.hxx" 
#include <dcc/SimpleUpdateLoop.hxx>
#include "openlcb/SimpleStack.hxx"
#include "os/LinuxGpio.hxx"
#include "freertos_drivers/common/DummyGPIO.hxx"
#include "freertos_drivers/common/LoggingGPIO.hxx"
#include "BBRailComDriver.hxx"
#include "BeagleTrainDatabase.hxx"
#include <AllTrainNodes.hxx>
#include <dcc/RailcomHub.hxx>
#include <dcc/RailcomPortDebug.hxx>
#include "DCCProgrammer.hxx"
#include "EStopHandler.hxx"
#include "Hardware.hxx"
#include <string>
#include <map>

using String = std::string;

class CommandStationHttpd : public BeagleCS::DCCProgrammer, 
                            public Singleton<CommandStationHttpd>
{
public:
    CommandStationHttpd(openlcb::SimpleStackBase *stack, 
                        openlcb::TrainService *tractionService, 
                        ExecutorBase *executor, 
                        const char *doc_root, 
                        uint16_t port);
    static void Begin(openlcb::SimpleStackBase *stack, 
                      openlcb::TrainService *tractionService,
                      const HBridgeControlConfig &maincfg,
                      const HBridgeControlConfig &progcfg,
                      const FanControlConfig &fancfg,
                      const char *mainPRUfirmware = "MainTrackDCC.out",
                      const char *progPRUfirmware = "ProgTrackDCC.out");
    static void initiate_estop()
    {
        estop_handler->set_state(true);
    }
    typedef std::map<String,String> FormData_t;
private:
    class ParseQuery {
    public:
        ParseQuery(const String queryString);
        const String Value(const String name) const {
            auto i = parsedFormData_.find(name);
            if (i == parsedFormData_.end()) {
                return "";
            }
            else
            {
                return i->second;
            }
        }
        int IValue(const String name) const {
            const String s = Value(name);
            if (s == "")
            {
                return 0;
            }
            else
            {
                try 
                {
                    int result = std::stoi(s);
                    return result;
                }
                catch (const std::exception& e) 
                {
                    return 0;
                }
            }
        }
        const FormData_t::const_iterator begin() const {return parsedFormData_.cbegin();}
        const FormData_t::const_iterator end() const {return parsedFormData_.cend();}
    private:
        FormData_t parsedFormData_;
        const String unquoteInput_(const String s) const;
    };
    // The various (mostly Singletons) unique quasy global objects
    // that implement the Command Station
    //
    // Montitors the OPS track current
    static std::unique_ptr<HBridgeControl> mains;
    // Montitors the Prog track current
    static std::unique_ptr<HBridgeControl> progtrack;
    // Montitors the temperature and fan
    static std::unique_ptr<FanControl> fan;
    // Refresh loop for the polled producers (the three above)
    static std::unique_ptr<openlcb::RefreshLoop> cs_poller;
    // The Railcom HUB
    static std::unique_ptr<dcc::RailcomHubFlow> railcom_hub; 
    // The Railcom debug dumper
    static std::unique_ptr<dcc::RailcomPrintfFlow> railcom_dumper;
    // The lowwer level train database
    static std::unique_ptr<BeagleCS::BeagleTrainDatabase> trainDb;
    // The upper level train database
    static std::unique_ptr<commandstation::AllTrainNodes> trainNodes;
    // The DCC output interface for the OPS track
    static std::unique_ptr<CommandStationDCCPRUTrack<0>> mainDCC;
    // The DCC output interface for the Pog track
    static std::unique_ptr<CommandStationDCCPRUTrack<1>> progDCC;
    // The DCC output interface for both tracks (duplexer)
    static std::unique_ptr<BeagleCS::DuplexedTrackIf> track;
    // The DCC output update loop
    static std::unique_ptr<dcc::SimpleUpdateLoop> dccUpdateLoop;
    // The DCC pool to queue flow
    static std::unique_ptr<PoolToQueueFlow<Buffer<dcc::Packet>>> pool_translator;
    // The DCC programming track backend
    static std::unique_ptr<ProgrammingTrackBackend> prog_track_backend;
    // The emergency stop handler
    static std::unique_ptr<BeagleCS::EStopHandler> estop_handler;
    //
    // Quasy globals to access track enable pins
    static bool is_ops_track_output_enabled()
    {
        return MainEN_Pin::get();
    }
    static void enable_ops_track_output()
    {
        if (!is_ops_track_output_enabled())
        {
            MainEN_Pin::set(true);
        }
    }
    static void disable_ops_track_output()
    {
        MainEN_Pin::set(false);
    }
    static void disable_track_outputs()
    {
        disable_ops_track_output();
        disable_prog_track_output();
    }
    static void enable_prog_track_output()
    {
        //LOG(INFO,"[enable_prog_track_output] ProgEN_Pin::get() is %d",ProgEN_Pin::get());
        if (!ProgEN_Pin::get())
        {
            //LOG(INFO,"[enable_prog_track_output] Setting ProgEN_Pin.");
            ProgEN_Pin::set(true);
        }
        //LOG(INFO,"[enable_prog_track_output] ProgEN_Pin::get() is now %d",ProgEN_Pin::get());
    }
    static void disable_prog_track_output()
    {
        //LOG(INFO,"[disable_prog_track_output] ProgEN_Pin::get() is %d",ProgEN_Pin::get());
        ProgEN_Pin::set(false);
        //LOG(INFO,"[disable_prog_track_output] ProgEN_Pin::get() is now %d",ProgEN_Pin::get());
    }
    
    HTTPD::Httpd server_;
    String docRoot_;
    openlcb::SimpleStackBase *stack_;
    openlcb::TrainService *traction_service_;
    void define_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply);
    void undefine_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply);
    void list_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply);
    void describe_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply);
    void status_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply);
    void power_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply);
    void estop_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply);
    void shutdown_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply);
    void readcv_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply);
    void readcvword_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply);
    void writeprogcvbyte_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply);
    void writeprogcvbit_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply);
    void writeopscvbyte_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply);
    void writeopscvbit_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply);
    void staticFile_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply);
    void CommonHeader_(String title, HTTPD::HttpReply *reply)
    {
        reply->Puts("<HTML><HEAD><TITLE>");
        reply->Puts(title);
        reply->Puts("</TITLE>\r\n");
        reply->Puts("<link rel='stylesheet' href='/CSS/cs.css' />\r\n");
        reply->Puts("<link rel='stylesheet' href='/CSS/UI.css' />\r\n");
        reply->Puts("<script id='cs' type='text/javascript' src='/JS/cs.js'></script>\r\n");
        reply->Puts("</HEAD>\r\n");
    }
    String TclBraceString(const String s) const;
};

#endif // __COMMANDSTATIONHTTPD_HXX

