// -!- C++ -!- //////////////////////////////////////////////////////////////
//
//  System        : 
//  Module        : 
//  Object Name   : $RCSfile$
//  Revision      : $Revision$
//  Date          : $Date$
//  Author        : $Author$
//  Created By    : Robert Heller
//  Created       : Mon Mar 17 13:52:59 2025
//  Last Modified : <250317.2040>
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

static const char rcsid[] = "@(#) : $Id$";

#include <unistd.h>
#include <sys/stat.h>
#include <stdio.h>

#include "openmrn_features.h"
#include "nmranet_config.h"
#include "httpd/Httpd.hxx"
#include "httpd/HttpRequest.hxx"
#include "httpd/HttpReply.hxx"
#include "httpd/Uri.hxx"
#include "httpd/mimetable.hxx"
#include "openlcb/DefaultNode.hxx"
#include "openlcb/EventHandlerTemplates.hxx"
#include "openlcb/EventService.hxx"
#include "openlcb/TractionTrain.hxx"
#include "openlcb/TrainInterface.hxx"
#include "openlcb/EventHandlerTemplates.hxx"
#include "openlcb/EventService.hxx"
#include "executor/CallableFlow.hxx"
#include "executor/PoolToQueueFlow.hxx"
#include "utils/Uninitialized.hxx"
#include "dcc/Loco.hxx"
//#include "dcc/DccOutput.hxx"
#include <AllTrainNodes.hxx>
#include "BeagleTrainDatabase.hxx"
#include "CommandStationStack.hxx"
#include "CommandStationHttpd.hxx"
#include "CommandStationDCCPRUTrack.hxx"
#include "AnalogReadSysFS.h"
#include <AllTrainNodes.hxx>
#include "BeagleTrainDatabase.hxx"
#include "CommandStationStack.hxx"
#include "HBridgeControl.hxx"
#include "FanControl.hxx"
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
#include "EStopHandler.hxx"
#include "Hardware.hxx"
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <termios.h>
#include <sys/ioctl.h>
#include "RailComHW.hxx"


static BBRailComDriver<RailComHW> opsRailComDriver(RAILCOM_FEEDBACK_QUEUE);

std::unique_ptr<HBridgeControl> CommandStationHttpd::mains;
std::unique_ptr<HBridgeControl> CommandStationHttpd::progtrack;
std::unique_ptr<FanControl> CommandStationHttpd::fan;
std::unique_ptr<openlcb::RefreshLoop> CommandStationHttpd::cs_poller;
std::unique_ptr<dcc::RailcomHubFlow> CommandStationHttpd::railcom_hub; 
std::unique_ptr<dcc::RailcomPrintfFlow> CommandStationHttpd::railcom_dumper;
std::unique_ptr<BeagleCS::BeagleTrainDatabase> CommandStationHttpd::trainDb;
std::unique_ptr<commandstation::AllTrainNodes> CommandStationHttpd::trainNodes;
std::unique_ptr<CommandStationDCCPRUTrack<0>> CommandStationHttpd::mainDCC;
std::unique_ptr<CommandStationDCCPRUTrack<1>> CommandStationHttpd::progDCC;
std::unique_ptr<BeagleCS::DuplexedTrackIf> CommandStationHttpd::track;
std::unique_ptr<dcc::SimpleUpdateLoop> CommandStationHttpd::dccUpdateLoop;
std::unique_ptr<PoolToQueueFlow<Buffer<dcc::Packet>>> CommandStationHttpd::pool_translator;
std::unique_ptr<ProgrammingTrackBackend> CommandStationHttpd::prog_track_backend;
std::unique_ptr<BeagleCS::EStopHandler> CommandStationHttpd::estop_handler;

CommandStationHttpd::CommandStationHttpd(openlcb::SimpleStackBase *stack, 
                                           openlcb::TrainService *tractionService, 
                                           ExecutorBase *executor, 
                                           const char *doc_root,
                                           uint16_t port)
      :  server_(executor,port)
, docRoot_(doc_root)
, stack_(stack)
, traction_service_(tractionService)
{
    server_.add_uri(HTTPD::UriGlob("/command/define?*"),
                    [](const HTTPD::HttpRequest *request,
                       HTTPD::HttpReply *reply,
                       void *userContext)
                {
                    ((CommandStationHttpd *)userContext)->define_UriHandler(request,reply);
                },this);
    server_.add_uri(HTTPD::UriGlob("/command/undefine?*"),
                    [](const HTTPD::HttpRequest *request,
                       HTTPD::HttpReply *reply,
                       void *userContext)
                {
                    ((CommandStationHttpd *)userContext)->undefine_UriHandler(request,reply);
                },this);
    server_.add_uri(HTTPD::Uri("/command/list"),
                    [](const HTTPD::HttpRequest *request,
                       HTTPD::HttpReply *reply,
                       void *userContext)
                {
                    ((CommandStationHttpd *)userContext)->list_UriHandler(request,reply);
                },this);
    server_.add_uri(HTTPD::UriGlob("/command/describe?*"),
                    [](const HTTPD::HttpRequest *request,
                       HTTPD::HttpReply *reply,
                       void *userContext)
                {
                    ((CommandStationHttpd *)userContext)->describe_UriHandler(request,reply);
                },this);
    server_.add_uri(HTTPD::Uri("/command/status"),
                    [](const HTTPD::HttpRequest *request,
                       HTTPD::HttpReply *reply,
                       void *userContext)
                {
                    ((CommandStationHttpd *)userContext)->status_UriHandler(request,reply);
                },this);
    server_.add_uri(HTTPD::UriGlob("/command/power?*"),
                    [](const HTTPD::HttpRequest *request,
                       HTTPD::HttpReply *reply,
                       void *userContext)
                {
                    ((CommandStationHttpd *)userContext)->power_UriHandler(request,reply);
                },this);
    server_.add_uri(HTTPD::Uri("/command/estop"),
                    [](const HTTPD::HttpRequest *request,
                       HTTPD::HttpReply *reply,
                       void *userContext)
                {
                    ((CommandStationHttpd *)userContext)->estop_UriHandler(request,reply);
                },this);
    server_.add_uri(HTTPD::Uri("/command/shutdown"),
                    [](const HTTPD::HttpRequest *request,
                       HTTPD::HttpReply *reply,
                       void *userContext)
                {
                    ((CommandStationHttpd *)userContext)->shutdown_UriHandler(request,reply);
                },this);
    server_.add_uri(HTTPD::UriGlob("/command/readcv?*"),
                    [](const HTTPD::HttpRequest *request,
                       HTTPD::HttpReply *reply,
                       void *userContext)
                {
                    ((CommandStationHttpd *)userContext)->readcv_UriHandler(request,reply);
                },this);
    server_.add_uri(HTTPD::UriGlob("/command/readcvword?*"),
                    [](const HTTPD::HttpRequest *request,
                       HTTPD::HttpReply *reply,
                       void *userContext)
                {
                    ((CommandStationHttpd *)userContext)->readcvword_UriHandler(request,reply);
                },this);
    server_.add_uri(HTTPD::UriGlob("/command/writeprogcvbyte?*"),
                    [](const HTTPD::HttpRequest *request,
                       HTTPD::HttpReply *reply,
                       void *userContext)
                {
                    ((CommandStationHttpd *)userContext)->writeprogcvbyte_UriHandler(request,reply);
                },this);
    server_.add_uri(HTTPD::UriGlob("/command/writeprogcvbit?*"),
                    [](const HTTPD::HttpRequest *request,
                       HTTPD::HttpReply *reply,
                       void *userContext)
                {
                    ((CommandStationHttpd *)userContext)->writeprogcvbit_UriHandler(request,reply);
                },this);
    server_.add_uri(HTTPD::UriGlob("/command/writeopscvbyte?*"),
                    [](const HTTPD::HttpRequest *request,
                       HTTPD::HttpReply *reply,
                       void *userContext)
                {
                    ((CommandStationHttpd *)userContext)->writeopscvbyte_UriHandler(request,reply);
                },this);
    server_.add_uri(HTTPD::UriGlob("/command/writeopscvbit?*"),
                    [](const HTTPD::HttpRequest *request,
                       HTTPD::HttpReply *reply,
                       void *userContext)
                {
                    ((CommandStationHttpd *)userContext)->writeopscvbit_UriHandler(request,reply);
                },this);
    server_.add_uri(HTTPD::UriGlob("/*"),
                    [](const HTTPD::HttpRequest *request,
                       HTTPD::HttpReply *reply,
                       void *userContext)
                {
                    ((CommandStationHttpd *)userContext)->staticFile_UriHandler(request,reply);
                },this);
}

// Initialize all unique pointers.
void CommandStationHttpd::Begin(openlcb::SimpleStackBase *stack, 
                                  openlcb::TrainService *tractionService,
                                  const HBridgeControlConfig &maincfg,
                                  const HBridgeControlConfig &progcfg,
                                  const FanControlConfig &fancfg,
                                  const char *mainPRUfirmware,
                                  const char *progPRUfirmware)
{
#ifdef NO_THERMFAULT
    mains.reset(new HBridgeControl(stack->node(), 
                                   maincfg, 
                                   CSenseMainAnalogChannel, 
                                   MAIN_MAX_MILLIAMPS, 
                                   MAIN_LIMIT_MILLIAMPS, 
                                   MainEN_Pin::instance()));
#else
    mains.reset(new HBridgeControl(stack->node(),
                                   maincfg, 
                                   CSenseMainAnalogChannel, 
                                   MAIN_MAX_MILLIAMPS, 
                                   MAIN_LIMIT_MILLIAMPS, 
                                   MainEN_Pin::instance(), 
                                   MainTF_Pin::instance()));
#endif
    LOG(INFO, "[CommandStationHttpd] Main track HBridgeControl setup...");
    progtrack.reset(new HBridgeControl(stack->node(),
                                       progcfg, 
                                       CSenseProgAnalogChannel, 
                                       PROG_MAX_MILLIAMPS, 
                                       ProgEN_Pin::instance()));
    LOG(INFO, "[CommandStationHttpd] Prog track HBridgeControl setup...");
    fan.reset(new FanControl(stack->node(),fancfg, 
                             TempsensorChannel,
                             FanControl_Pin::instance()));
    LOG(INFO, "[CommandStationHttpd] Fan control setup...");
    trainDb.reset(new BeagleCS::BeagleTrainDatabase(stack));
    LOG(INFO, "[CommandStationHttpd] train DB setup...");
    trainNodes.reset(new commandstation::AllTrainNodes(trainDb.get(),
                                                       tractionService,
                                                       stack->info_flow(),
                                                       stack->memory_config_handler(),
                                                       trainDb->get_train_cdi(),
                                                       trainDb->get_temp_train_cdi()));
    LOG(INFO, "[CommandStationHttpd] train nodes setup...");
    mainDCC.reset(new CommandStationDCCPRUTrack<0>(stack->service(),2,mainPRUfirmware));
    LOG(INFO, "[CommandStationHttpd] Ops track setup...");
    progDCC.reset(new CommandStationDCCPRUTrack<1>(stack->service(),2,progPRUfirmware));
    LOG(INFO, "[CommandStationHttpd] Prog track setup...");
    track.reset(new BeagleCS::DuplexedTrackIf(stack->service(),4,
                                              mainDCC.get(),
                                              progDCC.get()));
    LOG(INFO, "[CommandStationHttpd] DuplexedTrackIf setup...");
    dccUpdateLoop.reset(new dcc::SimpleUpdateLoop(stack->service(),
                                                  track.get()));
    LOG(INFO, "[CommandStationHttpd] DCC UpdateLoop setup...");
    pool_translator.reset(new PoolToQueueFlow<Buffer<dcc::Packet>>(stack->service(),track->pool(),dccUpdateLoop.get()));
    LOG(INFO, "[CommandStationHttpd] pool_translator setup...");
    prog_track_backend.reset(new ProgrammingTrackBackend(stack->service(),
                                                         &CommandStationHttpd::enable_prog_track_output,
                                                         &CommandStationHttpd::disable_prog_track_output));
    LOG(INFO, "[CommandStationHttpd] Programming Track Backend setup...");
    cs_poller.reset(new openlcb::RefreshLoop(stack->node(),
                                         {mains->polling(),
                                             progtrack->polling(),
                                             fan->polling()}));
    LOG(INFO, "[CommandStationHttpd] HBridge and Fan polling setup...");
    
    railcom_hub.reset(new dcc::RailcomHubFlow(stack->service()));
    LOG(INFO, "[CommandStationHttpd] RailcomHub started...");
    opsRailComDriver.hw_init(railcom_hub.get());
    LOG(INFO, "[CommandStationHttpd] RailComDriver initialized...");
    railcom_dumper.reset(new dcc::RailcomPrintfFlow(railcom_hub.get()));
    LOG(INFO, "[CommandStationHttpd] railcom_dumper started...");
    estop_handler.reset(new BeagleCS::EStopHandler(stack->node()));
    LOG(INFO, "[CommandStationHttpd] emergency stop handler started...");
}    

void CommandStationHttpd::define_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply)
{
    string Query = request->Query();
    ParseQuery formdata(Query);
    uint16_t address = formdata.IValue("address");
    int steps = formdata.IValue("steps");
    String name = formdata.Value("name");
    String description = formdata.Value("description");
    commandstation::DccMode mode;
    if (steps != 28 && steps != 128)
    {
        reply->SetContentType("text/plain");
        reply->SetStatus(200);
        reply->Puts("#define# false\r\n");
        reply->SendReply();
        return;
    }
    if (steps == 28) {
        if (address < 128) {
            mode = commandstation::DccMode::DCC_28;
        } else {
            mode = commandstation::DccMode::DCC_28_LONG_ADDRESS;
        }
    } else {
        if (address < 128) {
            mode = commandstation::DccMode::DCC_128;
        } else {
            mode = commandstation::DccMode::DCC_128_LONG_ADDRESS;
        }
    }
    openlcb::NodeID id = trainNodes->allocate_node(mode, address);
    if (id == 0) {
        // failed to allocate
        reply->SetContentType("text/plain");
        reply->SetStatus(200);
        reply->Puts("#define# false\r\n");
        reply->SendReply();
        return;
        
    } else {
        trainDb->set_train_name(address,name);
        trainDb->set_train_description(address,description);
        reply->SetStatus(200);
        reply->Puts("#define# true\r\n");
        reply->SendReply();
        return;
    }
}
void CommandStationHttpd::undefine_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply)
{
    string Query = request->Query();
    ParseQuery formdata(Query);
    uint16_t address = formdata.IValue("address");
    trainDb->delete_entry(address);
    reply->SetStatus(200);
    reply->SetContentType("text/plain");
    reply->Puts("#undefine# true\r\n");
    reply->SendReply();
    
}
void CommandStationHttpd::list_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply)
{
    reply->SetStatus(200);
    reply->SetContentType("text/plain");
    reply->Puts("#list# ");
    reply->Puts(trainDb->get_all_entries_as_list()+"\r\n");
    reply->SendReply();
}
void CommandStationHttpd::describe_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply)
{
    string Query = request->Query();
    ParseQuery formdata(Query);
    uint16_t address = formdata.IValue("address");
    commandstation::DccMode mode = trainDb->get_train_mode(address);
    openlcb::TrainImpl* impl = trainNodes->get_train_impl(mode,address);
    if (impl == nullptr) {
        reply->SetStatus(200); 
        reply->SetContentType("text/plain");
        reply->Puts("#describe# false");
        reply->SendReply();
        return;
    }
    int steps;
    if ((mode & commandstation::DccMode::DCC_28) == commandstation::DccMode::DCC_28)
    {
        steps = 28;
    }
    else
    {
        steps = 128;
    }
    reply->SetStatus(200);
    reply->SetContentType("text/plain");
    reply->Puts("#describe# ");
    reply->Puts(std::to_string(address));
    reply->Puts(" ");
    reply->Puts(std::to_string(steps));
    reply->Puts(" ");
    reply->Puts(TclBraceString(trainDb->get_train_name(address)));
    reply->Puts(" ");
    reply->Puts(TclBraceString(trainDb->get_train_description(address)));
    reply->Puts(" ");
    openlcb::SpeedType speed = impl->get_speed();
    if (speed.direction() == speed.FORWARD)
    {
        reply->Puts("F");
    }
    else
    {
        reply->Puts("R");
    }
    reply->Puts(std::to_string(speed.mph()));
    reply->Puts(" ");
    const char *sp = "{";
    for (uint32_t f=0; f <= 28; f++) {
        reply->Puts(sp);
        if (impl->get_fn(f))
        {
            reply->Puts("true");
        }
        else
        {
            reply->Puts("false");
        }
        sp = " ";
    }
    reply->Puts("} ");
#if 1
    reply->Puts(std::to_string(0ULL));
    reply->Puts(" {}");  /* fake controlled and consist */
#else
        openlcb::NodeHandle controller = n.node.get()->get_controller();
        if (controller.id == 0)
        {
            if (controller.alias != 0)
            {
                openlcb::NodeIdLookupFlow nodeIdLookup((openlcb::IfCan*)(n.node.get()->iface()));
                auto result = invoke_flow(&nodeIdLookup,n.node.get(),controller);
                if (result->data()->resultCode == 0) {
                    controller.id = result->data()->handle.id;
                }
            }
        }
        fprintf(fp,"%llu ",controller.id);
        fputc('{',fp);
        bool needsp = false;
        for (int i=0; i < n.node.get()->query_consist_length(); i++)
        {
            if (needsp) fputc(' ',fp);
            openlcb::NodeID cn = n.node.get()->query_consist(i,NULL);
            fprintf(fp,"%llu", cn);
            needsp = true;
        }
        fputc('}',fp);
#endif
    reply->Puts("\r\n");
    reply->SetStatus(200);
    reply->SetContentType("text/plain");
    reply->SendReply();
}

String CommandStationHttpd::TclBraceString(const String s) const
{
    String result = "{";
    for (auto i = s.cbegin(); i != s.cend(); i++)
    {
        if (*i == '{' || *i == '}') result += '\\';
        result += *i;
    }
    result += '}';
    return result;
}

void CommandStationHttpd::status_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply)
{
    reply->SetStatus(200);
    reply->SetContentType("text/plain");
    reply->Puts("#status# ");
    uint32_t CSenseMain = mains->getLastReading();
    uint32_t CSenseProg = progtrack->getLastReading();
    double TempCent   = fan->getLastReading()/10.0; 
    reply->Puts(std::to_string(CSenseMain));
    reply->Puts(" ");
    reply->Puts(std::to_string(CSenseProg));
    reply->Puts(" ");
    reply->Puts(std::to_string(TempCent));
    reply->Puts(" ");
    reply->Puts(std::to_string(mains->EnabledP()));
    reply->Puts(" ");
    reply->Puts(std::to_string(mains->ThermalFlagP()));
    reply->Puts(" ");
    reply->Puts(std::to_string(mains->OverCurrentP()));
    reply->Puts(" ");
    reply->Puts(std::to_string(progtrack->EnabledP()));
    reply->Puts(" ");
    reply->Puts(std::to_string(progtrack->ThermalFlagP()));
    reply->Puts(" ");
    reply->Puts(std::to_string(progtrack->OverCurrentP()));
    reply->Puts(" ");
    reply->Puts(std::to_string(fan->FanOn()));
    reply->Puts(" ");
    reply->Puts(std::to_string(fan->AlarmOn()));
    reply->Puts("\r\n");
    reply->SendReply();
}
void CommandStationHttpd::power_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply)
{
    string Query = request->Query();
    ParseQuery formdata(Query);
    if (formdata.Value("on") != "")
    {
        CommandStationHttpd::enable_ops_track_output();
    }
    else
    {
        CommandStationHttpd::disable_track_outputs();
    }
    reply->SetStatus(200);
    reply->SetContentType("text/plain");
    reply->Puts("#power# ");
    reply->Puts(std::to_string(CommandStationHttpd::is_ops_track_output_enabled()));
    reply->Puts("\r\n");
    reply->SendReply();
}
void CommandStationHttpd::estop_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply)
{
    CommandStationHttpd::initiate_estop();
    reply->SetStatus(200);
    reply->SetContentType("text/plain");
    reply->Puts("#estop#\r\n");
    reply->SendReply();
}
void CommandStationHttpd::shutdown_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply)
{
    CommandStationHttpd::initiate_estop();
    sleep(60);
    CommandStationHttpd::disable_track_outputs();
    sleep(10);
    exit(0);
}
void CommandStationHttpd::readcv_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply)
{
    string Query = request->Query();
    ParseQuery formdata(Query);
    uint16_t addrCV = formdata.IValue("addrCV");
    int16_t value = readCV(addrCV); 
    reply->SetStatus(200);
    reply->SetContentType("text/plain");
    reply->Puts("#servicemode# load ");
    reply->Puts(std::to_string(addrCV)+" "+std::to_string(value)+"\r\n");
    reply->SendReply();
}
void CommandStationHttpd::readcvword_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply)
{
    string Query = request->Query();
    ParseQuery formdata(Query);
    uint16_t addrCV = formdata.IValue("addrCV");
    int16_t value_b1 = readCV(addrCV); 
    reply->SetStatus(200);
    reply->SetContentType("text/plain");
    reply->Puts("#servicemode# load ");
    if (value_b1 < 0)
    {
        reply->Puts(std::to_string(addrCV)+" "+std::to_string(value_b1)+"\r\n");
    }
    else
    {
        int16_t value_b2 = readCV(addrCV+1);
        if (value_b2 < 0) {
            reply->Puts(std::to_string(addrCV)+" "+std::to_string(value_b2)+"\r\n");
        }
        else
        {
            uint16_t value = (((uint16_t)value_b1) << 8) & ((uint16_t)value_b2);
            reply->Puts(std::to_string(addrCV)+" "+std::to_string(value)+"\r\n");
        }
    }
    reply->SendReply();
}
void CommandStationHttpd::writeprogcvbyte_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply)
{
    
}
void CommandStationHttpd::writeprogcvbit_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply)
{
}
void CommandStationHttpd::writeopscvbyte_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply)
{
}
void CommandStationHttpd::writeopscvbit_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply)
{
}
void CommandStationHttpd::staticFile_UriHandler(const HTTPD::HttpRequest *request, HTTPD::HttpReply *reply)
{
    String path = docRoot_ + request->RequestUri();
    if (request->RequestUri() == "/") path += "static/index.html";
    if (path.back() == '/') path += "index.html";
    if (access(path.c_str(),F_OK))
    {
        reply->SetStatus(404);
        reply->SetContentType("text/html");
        CommonHeader_(request->RequestUri()+ "Not Found",reply);
        reply->Puts("<BODY><H1>");
        reply->Puts(request->RequestUri());
        reply->Puts(" Not Found</H1></BODY></HTML>");
        reply->SendReply();
        return;
    }
    else if (access(path.c_str(),R_OK))
    {
        reply->SetStatus(403);
        reply->SetContentType("text/html");
        CommonHeader_(request->RequestUri()+ "Permission Denied",reply);
        reply->Puts("<BODY><H1>");
        reply->Puts(request->RequestUri());
        reply->Puts(" Permission Denied</H1></BODY></HTML>");
        reply->SendReply();
        return;
    }
    size_t dotpos = path.rfind('.');
    String contentType = mime::mimeTable[mime::none].mimeType;
    if (dotpos != String::npos)
    {
        for (int i = 0; i < mime::maxType; i++)
        {
            if (path.substr(dotpos) == mime::mimeTable[i].endsWith)
            {
                contentType = mime::mimeTable[i].mimeType;
                break;
            }
        }
    }
    FILE *fp = fopen(path.c_str(),"rb");
    if (fp != NULL)
    {
        unsigned char buffer[4096];
        size_t count;
        while ((count=fread(buffer,sizeof(unsigned char),4096,fp)) > 0)
        {
            reply->Puts(String((char *)buffer,count));
        }
        fclose(fp);
    }
    reply->SetContentType(contentType);
    reply->SendReply();    
}

CommandStationHttpd::ParseQuery::ParseQuery(const String queryString)
{
    size_t amp = 0;
    for (size_t istart=0;
         istart < queryString.length(); 
         istart = amp+1)
    {
        LOG(VERBOSE,"*** CommandStationHttpd::ParseQuery: istart = %d",(int)istart);
        amp = queryString.find('&',istart);
        LOG(VERBOSE,"*** CommandStationHttpd::ParseQuery: amp = %d",(int)amp);
        if (amp == String::npos)
        {
            amp = queryString.length();
        }
        String q = queryString.substr(istart,amp-istart);
        LOG(VERBOSE,"*** CommandStationHttpd::ParseQuery: q = '%s'",q.c_str());
        size_t eq = q.find('=');
        String name = q.substr(0,eq);
        String value = q.substr(eq+1);
        LOG(VERBOSE,"*** CommandStationHttpd::ParseQuery: name = '%s' and value = '%s'",name.c_str(),value.c_str());
        parsedFormData_.insert(std::pair<String,String>(name,unquoteInput_(value)));
    }
}

const String CommandStationHttpd::ParseQuery::unquoteInput_(const String s) const
{
    LOG(VERBOSE,"*** CommandStationHttpd::ParseQuery::unquoteInput_(%s)",s.c_str());
    std::regex newline("%0d%0a", std::regex_constants::icase);
    String result = std::regex_replace(s,newline,"\n");
    std::regex percentEscapes("%[a-f0-9][a-f0-9]",std::regex_constants::icase);
    String temp = result;
    auto percent_begin = std::sregex_iterator(temp.begin(),temp.end(),percentEscapes);
    auto percent_end = std::sregex_iterator();
    LOG(VERBOSE,"*** CommandStationHttpd::ParseQuery::unquoteInput_: %d percent escapes",(int) std::distance(percent_begin,percent_end));
    if (std::distance(percent_begin,percent_end) > 0)
    {
        result = "";
        String lastSuffix = "";
        int index = 0;
        for (std::sregex_iterator i = percent_begin; i != percent_end; ++i)
        {
            std::smatch match = *i;
            LOG(VERBOSE,"*** CommandStationHttpd::ParseQuery::unquoteInput_: match %d: str is '%s', prefix is '%s', suffix is '%s'",
                index++,match.str().c_str(),match.prefix().str().c_str(),match.suffix().str().c_str());
            result += match.prefix().str();
            size_t unused = 0;
            result += (char)std::stoi(match.str().substr(1),&unused,16);
            lastSuffix = match.suffix().str();
        }
        result += lastSuffix;
        LOG(VERBOSE,"*** CommandStationHttpd::ParseQuery::unquoteInput_: result is '%s'",result.c_str());
    }
    return result;
}

