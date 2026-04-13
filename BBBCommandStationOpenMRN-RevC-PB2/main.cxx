/** \copyright
 * Copyright (c) 2019, Robert Heller
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are  permitted provided that the following conditions are met:
 *
 *  - Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 *  - Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * \file main.cxx
 *
 * Main file for the BBBCommandStationOpenMRN program.
 *
 * @author Robert Heller
 * @date 3 Feb 2019 -- 11 May 2021
 * 
 * @mainpage Introduction
 * 
 * @image html RevCBoardCase.png
 * 
 * This is the program for the Beagle Board LCC/DCC/Railcom command 
 * station.  It uses OpenMRN to interface with the LCC/OpenLCB network
 * to implement a LCC/OpenLCB aware command station node that can 
 * operate DCC/Railcom locomotives.  It is designed to work with Rev C 
 * of the Pocket Beagle SMD board, which is intended to use a 
 * Pocket Beagle 2 processor board.  It uses the AM62x's
 * PRUs to generate the DCC signals.  It uses a web-based interface
 * for a "control panel" and an Adafruit .91" 128x32 OLED display for
 * a status display.
 * 
 * @if BUILDING_SECTION 
 * @page BUILD Building
 * 
 * This program needs the OpenMRN library installed in a "standard"
 * place: /opt/openmrn or ~/openmrn or else in the location specified
 * by the environment variable OPENMRNPATH.
 * 
 * Various build options can be controlled in the Hardware.hxx header
 * file in the target directory.  Specificly, the GPIO pin 
 * assignments, whether to build a binary OpenLCB Tcp/Ip connected 
 * node, a GridConnect connected node, or a LCC CAN connected node. 
 * 
 * These build options include:
 * 
 * @arg DEFAULT_TCP_GRIDCONNECT_HOST
 * Default GridConnect over Tcp/Ip host to connect to -- normally "localhost".
 * @arg DEFAULT_TCP_GRIDCONNECT_PORT
 * Default GridConnect over Tcp/Ip port -- normally 12021.
 * 
 * @arg DEFAULT_CAN_SOCKET
 * CAN family socket name.  Normally "can0".
 * 
 * @arg DEFAULT_GRIDCONNECT_HUB_PORT
 * Default port the Grid Connect Hub server should listen on -- normally 12021.
 * 
 * @arg WEBSERVERROOT
 * Webserver doc root
 * @arg WEBSERVERPORT
 * Webserver port to use -- normally 9090
 * @endif
 * @page ConnectInd Connections and Indicators
 * The command station has a collection of indicator lights and a small status
 * display on it top side.  It also has connectors nd terminals on three of 
 * its sides. There are also ventilation holes on two of the sides and on top.
 * You want to be careful to not block these ventilation holes to allow proper
 * cooling.
 * @section Ind Indicators and status display: 
 * @image html RevCBoardCaseTop.png
 * @image latex RevCBoardCaseTop.png width=6in
 * There are 7 indicator lights and a small status screen on the top of the
 * command station:
 * - Power indicator. This blue light is lit when power is applied. 
 * - LCC network activity indicators: red for transmit, yellow for receive.
 * - Operations (mains) track DCC activity: Green and Red
 * - Programming track DCC activity: Green and Red
 * - Status display: this small display displays current draw on the DCC 
 * outputs (mains and programming) and the board temperature.
 * @section TrackLayout Track and Layout connections:
 * @image html RevCBoardCaseFront.png
 * - LCC Power Out: this 2-position plug in screw terminal can be used to 
 * access the LCC power bus for local use.
 * - LCC Network: these two RJ45 connectors connect to the LCC network. They
 * are wired in parallel.
 * - LCC Power Power in: this 2-position plug in screw terminal can be used 
 * to inject power into the LCC Network.  The command station does not draw 
 * power from the LCC power bus.
 * - DCC track power.  This 4-position plug in screw terminal is used to
 * supply power to the track.  There are two terminals for the operations 
 * (main) track and two terminals for the programming track.
 * @image latex RevCBoardCaseFront.png width=6in 
 * @section USB USB 2.0 connection (for Ethernet or WiFi dongle):
 * @image html RevCBoardCaseLeft.png  
 * @image latex RevCBoardCaseLeft.png width=6in 
 * This is a USB A type host connector.  It can be used for an Ethernet or WiFI
 * dongle.  Or really any USB device.
 * @section PowerIn Power Input connection
 * @image html RevCBoardCaseRear.png
 * @image latex RevCBoardCaseRear.png width=6in
 * This is a DC power barrel connector for DC power for the command station.
 * This should be 15 volts DC with a 5amp capacity.  The center pin is 
 * positive.
 * @page Configuration
 * The configuration is loaded from \$(HOME)/commandstation.cfg or
 * /etc/default/commandstation.cfg if \$(HOME) /commandstation.cfg does
 * not exist.  These configuration files are plain text files and the program 
 * uses the LibConfig library (by Mark A. Lindner, https://hyperrealm.github.io/libconfig/).
 * 
 * The program's web interface can update the configuration or the 
 * configuration files can be hand edited with a text editor.
 *
 * @section GLOBAL Global Configuration Options
 * 
 * There are a set of configuration options that are global in
 * scope. The global configuration options include:
 * 
 * @arg NodeID The node ID to use as a 48-bit hexadecimal number.  The default 
 * is 0x050101012200L (05:01:01:01:22:00).
 * @arg PersistentTrainFilePath The path of the persistent train file.  This 
 * file is used to store the command station's list of operating locomotives
 * The default is /tmp/persistent_train_file_\<Node Id in Hex\>.
 * @arg UseGCHost Connect to a GC hub.  If this option is true, the command 
 * station will attempt to connect to a GC hub over Tcp/Ip. The default is 
 * false.
 * @arg GCHost The GridConnect host. The default is a build option, normally 
 * "localhost".
 * @arg GCPort The GridConnect port. The default is a build option, normally
 * 12021.
 * @arg CanSocket The CAN socket to use. The default is a build option, 
 * @arg GCHub Whether to start a GC hub.  If this option is true, the command
 * station will start a GC hub server. The default is false. 
 * @arg GCHubPort the port the GC hub should listen on.  The default is a build
 * option, normally 12021.  The hub will listen on all interfaces (0.0.0.0).
 * @arg WebServerRoot The web server document root.  This directory contains
 * the root of the "static" files used by the command station's web server.
 * It is possible to copy the stock file tree and alter it to change is look
 * or even functionality to some extent. The default is a build option.
 * @arg WebServerPort The web server port to listen on.  The default is a build
 * option, normally 9090. The Webserver will listen on all interfaces 
 * (0.0.0.0). 
 * @arg StartWiThrottle Whether or not to start the WiThrottle server. Default
 * false.
 * @arg WiThrottleName The name of the WiThrottle. The default is 
 * "PocketBeagle".
 * @arg WiThrottlePort The port number the WiThrottle server will listen on.
 * The default is 12090.  The server will listen on all interfaces (0.0.0.0).
 * @section DCCOUTPUT DCC output configurations. 
 * 
 * There are two groups for the DCC output configurations: Main and 
 * Programming.  These option groups mostly have the LCC event numbers for
 * DCC events.
 * 
 * The config options are:
 *
 * @arg PRUfirmware The path tail for the PRU firmware. The default is 
 * "MainTrackDCC.out" for the main and "ProgTrackDCC.out" for the programming 
 * track.
 * @arg EventShortOn The Event ID to send when there is a short.  The default 
 * is formed from the NodeID shifted left 16 bits with 0x0000 (Main) or
 * 0x0004 (Programming) added.
 * @arg EventShortOff The Event ID to send when the short clears.  The default
 * is formed from the NodeID shifted left 16 bits with 0x0001 (Main) or
 * 0x0005 (Programming) added.
 * @arg EventShutdownOn The Event ID to send when the track output power has 
 * exceeded the safety threshold of the H-Bridge. The default is formed from 
 * the NodeID shifted left 16 bits with 0x0002 (Main) or 0x0006 (Programming) 
 * added.
 * @arg EventShutdownOff The Event ID to send when the track output power has 
 * returned to safe levels. The default is formed from 
 * the NodeID shifted left 16 bits with 0x0003 (Main) or 0x0007 (Programming) 
 * added.
 * @arg 
 * 
 * @par
 * @section FANCONTROL Fan Control
 * 
 * The third section relates to temperature and fan control: Fan Control
 * This contains the temperature thresholds and the event numbers that will
 * produced when the temperature goes above or falls below these thresholds. 
 * 
 * @arg AlarmTempThresh Alarm Temperature threshold, in tenths of degrees 
 * Centigrade. The default is 350.
 * @arg AlarmOn The event to send when the temperature exceeds the threshold.
 * The default is formed from the NodeID shifted left 16 bits with 0x0008 
 * added.
 * @arg AlarmOff he event to send when the temperature drops below the
 * threshold. The default is formed from the NodeID shifted left 16 bits with
 * 0x0009 added.
 * @arg FanTempThresh Fan Temperature threshold, in tenths of degrees
 * Centigrade. The default is 250.
 * @arg FanOn The event to send when the fan is turned on. The default is 
 * formed from the NodeID shifted left 16 bits with 0x000A added.
 * @arg FanOff The event to send when the fan is turned off. The default is 
 * formed from the NodeID shifted left 16 bits with 0x000B added.
 * 
 * @par
 * @page BBBCommandStationOpenMRN Beagle Board Command Station Command line
 * 
 * @section SYNOPSIS SYNOPSIS
 * 
 * BBBCommandStationOpenMRN
 * 
 * @section DESCRIPTION DESCRIPTION
 * 
 * This is the program for the Beagle Board LCC/DCC/Railcom command 
 * station.  It uses OpenMRN to interface with the LCC/OpenLCB network
 * to implement a LCC/OpenLCB aware command station node that can 
 * operate DCC/Railcom locomotives.  It is designed to work with Rev C 
 * of the Pocket Beagle SMD board, which is intended to use a 
 * Pocket Beagle 2 processor board.  It uses the AM62x's
 * PRUs to generate the DCC signals.  It uses a web-based interface
 * for a "control panel" and an Adafruit .91" 128x32 OLED display for
 * a status display.
 * 
 * The program is meant to run as a daemon process, started by systemd when the
 * system starts.
 * 
 * @section OPTIONS OPTIONS
 * 
 * None.
 * 
 * @section PARAMETERS PARAMETERS
 * 
 * None.
 * 
 * @section FILES FILES
 * @arg /etc/default/commandstation.cfg
 * @arg \$(HOME)/commandstation.cfg 
 * @section AUTHOR AUTHOR
 * @author Robert Heller
 * @date 29 Apr 2021
 * 
 * 
 */

#include <ctype.h>
#include <sys/types.h>
#include <pwd.h>
#include <unistd.h>

#include "os/os.h"
#include "nmranet_config.h"

// Override local_nodes_count -- allow for many virtual train nodes.
OVERRIDE_CONST(local_nodes_count,50);
// Override num_memory_spaces -- allow for additional memory spaces 
// for train mode memory. 
OVERRIDE_CONST(num_memory_spaces, 7);

#include "openlcb/SimpleStack.hxx"
#include "openlcb/ConfiguredConsumer.hxx"
#include "openlcb/ConfiguredProducer.hxx"
#include "openlcb/SimpleNodeInfoDefs.hxx"

#include "Hardware.hxx"
#include "freertos_drivers/common/DummyGPIO.hxx"
#include "freertos_drivers/common/LoggingGPIO.hxx"
#include "os/LinuxGpio.hxx"
#include "utils/GpioInitializer.hxx"
#include "CommandStationStack.hxx"
#include "CommandStationHttpd.hxx"
#include "withrottle/Server.hxx"
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <termios.h>
#include <sys/ioctl.h>
#include <libconfig.h++>

// Changes the default behavior by adding a newline after each gridconnect
// packet. Makes it easier for debugging the raw device.
OVERRIDE_CONST(gc_generate_newlines, 1);
// Specifies how much RAM (in bytes) we allocate to the stack of the main
// thread. Useful tuning parameter in case the application runs out of memory.
OVERRIDE_CONST(main_thread_stack_size, 2500);



// Persistant train DB file.
char persistenttrainfile[256];
// Persistant train DB filename
extern const char *const BeagleCS::TRAIN_DB_JSON_FILE = persistenttrainfile;

withrottle::Server *WiThrottleServer;

libconfig::Config configuration;

extern const char SYSTEMDEFAULTCONFIG[] = "/etc/default/commandstation.cfg";
char userconfigfile[256];
extern const char *const USERCONFIG =  userconfigfile;

namespace openlcb
{

extern const char *const SNIP_DYNAMIC_FILENAME = NULL;

extern const SimpleNodeStaticValues SNIP_STATIC_DATA = {
    4, "Deepwoods Software", "PocketBeagleCommandStation", "SMD Rev C", "1.0"};

}

// Specifies the default 48-bit OpenLCB node identifier. This must be unique for every
// hardware manufactured, so in production this should be replaced by some
// easily incrementable method.
#define DefaultNODEID 0x050101012200ULL // 05 01 01 01 22 00

static bool InitializeDCCConfig(libconfig::Setting &group, const char *prufile,
                                openlcb::EventId shorton,
                                openlcb::EventId shortoff,
                                openlcb::EventId shutdownon,
                                openlcb::EventId shutdownoff,
                                bool update)
{
    if (!group.exists("PRUfirmware"))
    {
        libconfig::Setting &prufirm = group.add("PRUfirmware",
                                               libconfig::Setting::TypeString);
        prufirm = prufile;
        update = true;
    }
    if (!group.exists("EventShortOn"))
    {
        libconfig::Setting &eventshorton = group.add("EventShortOn",
                                                    libconfig::Setting::TypeInt64);
        eventshorton = (long long)shorton;
        eventshorton.setFormat(libconfig::Setting::FormatHex);
        update = true; 
    }
    if (!group.exists("EventShortOff"))
    {
        libconfig::Setting &eventshorton = group.add("EventShortOff",
                                                    libconfig::Setting::TypeInt64);
        eventshorton = (long long)shortoff;
        eventshorton.setFormat(libconfig::Setting::FormatHex);
        update = true; 
    }
    if (!group.exists("EventShutdownOn"))
    {
        libconfig::Setting &eventshutdownon = group.add("EventShutdownOn",
                                                    libconfig::Setting::TypeInt64);
        eventshutdownon = (long long)shutdownon;
        eventshutdownon.setFormat(libconfig::Setting::FormatHex);
        update = true; 
    }
    if (!group.exists("EventShutdownOff"))
    {
        libconfig::Setting &eventshutdownoff = group.add("EventShutdownOff",
                                                    libconfig::Setting::TypeInt64);
        eventshutdownoff = (long long)shutdownoff;
        eventshutdownoff.setFormat(libconfig::Setting::FormatHex);
        update = true; 
    }
    return update;
}

static bool InitializeFanControl(libconfig::Setting &group,
                                 uint16_t alarmthresh,
                                 openlcb::EventId alarmon,
                                 openlcb::EventId alarmoff,
                                 uint16_t fanthresh,
                                 openlcb::EventId fanon,
                                 openlcb::EventId fanoff,
                                 bool update)
{
    if (!group.exists("AlarmTempThresh"))
    {
        libconfig::Setting &althresh = group.add("AlarmTempThresh",
                                                libconfig::Setting::TypeInt);
        althresh = alarmthresh;
        update = true;
    }
    if (!group.exists("AlarmOn"))
    {
        libconfig::Setting &alevon = group.add("AlarmOn",
                                             libconfig::Setting::TypeInt64);
        alevon.setFormat(libconfig::Setting::FormatHex);
        alevon = (long long)alarmon;
        update = true;
    }
    if (!group.exists("AlarmOff"))
    {
        libconfig::Setting &alevoff = group.add("AlarmOff",
                                             libconfig::Setting::TypeInt64);
        alevoff.setFormat(libconfig::Setting::FormatHex);
        alevoff = (long long)alarmoff;
        update = true;
    }
    if (!group.exists("FanTempThresh"))
    {
        libconfig::Setting &althresh = group.add("FanTempThresh",
                                                libconfig::Setting::TypeInt);
        althresh = fanthresh;
        update = true;
    }
    if (!group.exists("FanOn"))
    {
        libconfig::Setting &fanevon = group.add("FanOn",
                                             libconfig::Setting::TypeInt64);
        fanevon.setFormat(libconfig::Setting::FormatHex);
        fanevon = (long long)fanon;
        update = true;
    }
    if (!group.exists("FanOff"))
    {
        libconfig::Setting &fanevoff = group.add("FanOff",
                                             libconfig::Setting::TypeInt64);
        fanevoff.setFormat(libconfig::Setting::FormatHex);
        fanevoff = (long long)fanoff;
        update = true;
    }
    return update;
}

static void ProcessConfiguration(libconfig::Config &config)
{
    uid_t myuid = getuid();
    struct passwd *pwentry = getpwuid(myuid);
    if (pwentry)
    {
        snprintf(userconfigfile,sizeof(userconfigfile),"%s/commandstation.cfg",
                 pwentry->pw_dir);
    }
    else
    {
        snprintf(userconfigfile,sizeof(userconfigfile),"%s/commandstation.cfg","/root");
    }
    LOG(INFO,"[ProcessConfiguration] userconfigfile is %s",userconfigfile);
    try {
        config.readFile(USERCONFIG);
    }
    catch(const libconfig::FileIOException &fioex)
    {
        try {
            config.readFile(SYSTEMDEFAULTCONFIG);
        }
        catch(const libconfig::FileIOException &fioex)
        {
        }
    }
    bool updated = false;
    
    libconfig::Setting &root = config.getRoot();
    if (!root.exists("NodeID"))
    {
        libconfig::Setting &nodeid = root.add("NodeID",
                                             libconfig::Setting::TypeInt64);
        nodeid.setFormat(libconfig::Setting::FormatHex);
        nodeid = (long long)DefaultNODEID;
        updated = true;
    }
    if (!root.exists("PersistentTrainFilePath"))
    {
        libconfig::Setting &persistpath = root.add("PersistentTrainFilePath",
                                                  libconfig::Setting::TypeString);
        char persistpathbuffer[256];
        snprintf(persistpathbuffer,sizeof(persistpathbuffer),
                 "/tmp/persistent_train_file_%012llX",(long long)root.lookup("NodeID"));
        persistpath = persistpathbuffer;
        updated = true;
    }
    if (!root.exists("UseGCHost"))
    {
        libconfig::Setting &usegchost = root.add("UseGCHost",
                                                libconfig::Setting::TypeBoolean);
        usegchost = false;
        updated = true;
    }
    if (!root.exists("GCHost"))
    {
        libconfig::Setting &gchost = root.add("GCHost",
                                             libconfig::Setting::TypeString);
        gchost = DEFAULT_TCP_GRIDCONNECT_HOST;
        updated = true;
    }
    if (!root.exists("GCPort"))
    {
        libconfig::Setting &gcport = root.add("GCPort",
                                             libconfig::Setting::TypeInt);
        gcport = DEFAULT_TCP_GRIDCONNECT_PORT;
        updated = true;
    }
    if (!root.exists("CanSocket"))
    {
        libconfig::Setting &cansocket = root.add("CanSocket",
                                                libconfig::Setting::TypeString);
        cansocket = DEFAULT_CAN_SOCKET;
        updated = true;
    }
    if (!root.exists("GCHub"))
    {
        libconfig::Setting &gchub = root.add("GCHub",
                                            libconfig::Setting::TypeBoolean);
        gchub = false;
        updated = true;
    }
    if (!root.exists("GCHubPort"))
    {
        libconfig::Setting &gchubport = root.add("GCHubPort",
                                                libconfig::Setting::TypeInt);
        gchubport = DEFAULT_GRIDCONNECT_HUB_PORT;
        updated = true; 
    }
    if (!root.exists("WebServerRoot"))
    {
        libconfig::Setting &webserverroot = 
              root.add("WebServerRoot",
                       libconfig::Setting::TypeString);
        webserverroot = WEBSERVERROOT;
        updated = true;
    }
    if (!root.exists("WebServerPort"))
    {
        libconfig::Setting &webserverport = root.add("WebServerPort",
                                                    libconfig::Setting::TypeInt);
        webserverport = WEBSERVERPORT;
        updated = true;
    }
    if (!root.exists("StartWiThrottle"))
    {
        libconfig::Setting &startwithrottle = root.add("StartWiThrottle",
                                                      libconfig::Setting::TypeBoolean);
        startwithrottle = false;
        updated = true;
    }
    if (!root.exists("WiThrottleName"))
    {
        libconfig::Setting &withrottlename = root.add("WiThrottleName",
                                                     libconfig::Setting::TypeString);
        withrottlename = "PocketBeagle";
        updated = true;
    }
    if (!root.exists("WiThrottlePort"))
    {
        libconfig::Setting &withrottleport = root.add("WiThrottlePort",
                                                     libconfig::Setting::TypeInt);
        withrottleport = withrottle::Defs::DEFAULT_PORT;
        updated = true;
    }
    if (!root.exists("Main"))
    {
        root.add("Main", libconfig::Setting::TypeGroup);
        updated = true;
    }
    
    uint16_t next_event = 0;
    uint64_t node_id = (long long)root.lookup("NodeID");
    openlcb::EventId shorton = node_id;
    shorton <<= 16;
    shorton |= next_event++;
    openlcb::EventId shortoff = node_id;
    shortoff <<= 16;
    shortoff |= next_event++;
    openlcb::EventId shutdownon = node_id;
    shutdownon <<= 16;
    shutdownon |= next_event++;
    openlcb::EventId shutdownoff = node_id;
    shutdownoff <<= 16;
    shutdownoff |= next_event++;
    updated = InitializeDCCConfig(root.lookup("Main"),
                                  "MainTrackDCC.out",
                                  shorton,
                                  shortoff,
                                  shutdownon,
                                  shutdownoff,
                                  updated);
    if (!root.exists("Programming"))
    {
        root.add("Programming", libconfig::Setting::TypeGroup);
        updated = true; 
    }
    shorton = node_id;
    shorton <<= 16;
    shorton |= next_event++;
    shortoff = node_id;
    shortoff <<= 16;
    shortoff |= next_event++;
    shutdownon = node_id;
    shutdownon <<= 16;
    shutdownon |= next_event++;
    shutdownoff = node_id;
    shutdownoff <<= 16;
    shutdownoff |= next_event++;
    updated = InitializeDCCConfig(root.lookup("Programming"),
                                  "ProgTrackDCC.out",
                                  shorton,
                                  shortoff,
                                  shutdownon,
                                  shutdownoff,
                                  updated);
    if (!root.exists("FanControl"))
    {
        root.add("FanControl",libconfig::Setting::TypeGroup);
        updated = true;
    }
    openlcb::EventId alarmon = node_id;
    alarmon <<= 16;
    alarmon |= next_event++;
    openlcb::EventId alarmoff = node_id;
    alarmoff <<= 16;
    alarmoff |= next_event++;
    openlcb::EventId fanon = node_id;
    fanon <<= 16;
    fanon |= next_event++;
    openlcb::EventId fanoff = node_id;
    fanoff <<= 16;
    fanoff |= next_event++;
    updated = InitializeFanControl(root.lookup("FanControl"),
                                   350,
                                   alarmon,
                                   alarmoff,
                                   250,
                                   fanon,
                                   fanoff,
                                   updated);
    if (updated)
    {
        try {
            config.writeFile(USERCONFIG);
        }
        catch(const libconfig::FileIOException &fioex)
        {
            LOG(FATAL,"Failed to save configuration %s",USERCONFIG);
            exit(errno);
        }
    }
}

/** Entry point to application.
 * @param argc number of command line arguments
 * @param argv array of command line arguments
 * @return 0, should never return
 */
int appl_main(int argc, char *argv[])
{
    // Parse configuration file
    ProcessConfiguration(configuration);
    
    strncpy(persistenttrainfile,
            configuration.lookup("PersistentTrainFilePath"),
            sizeof(persistenttrainfile));
    // Initialize GPIO
    GpioInit::hw_init();
    
    // Sets up a comprehensive OpenLCB stack for a single virtual node. This stack
    // contains everything needed for a usual peripheral node -- all
    // CAN-bus-specific components, a virtual node, PIP, SNIP, Memory configuration
    // protocol, ACDI, CDI, a bunch of memory spaces, etc.
    //openlcb::SimpleCanStack stack(NODE_ID);
    openlcb::SimpleCommandStationCanStack stack((long long)configuration.lookup("NodeID"));

    // Webserver executor.
    Executor<1> httpd_executor("httpd_executor", 0, 2048);
    CommandStationHttpd commandProcessorHttpd(&stack,
                                              stack.traction_service(),
                                              &httpd_executor,
                                              configuration.lookup("WebServerRoot"), 
                                              (int)configuration.lookup("WebServerPort"));
    CommandStationHttpd::Begin(&stack,stack.traction_service(),
                                 configuration.lookup("Main"),
                                 configuration.lookup("Programming"),
                                 configuration.lookup("FanControl"),
                                 configuration.lookup("Main.PRUfirmware"),
                                 configuration.lookup("Programming.PRUfirmware"));
    if (configuration.lookup("UseGCHost"))
    {
        stack.connect_tcp_gridconnect_hub(configuration.lookup("GCHost"),
                                          configuration.lookup("GCPort"));
    }
#ifdef PRINT_ALL_PACKETS
    // Causes all packets to be dumped to stdout.
    stack.print_all_packets();
#endif
    stack.add_socketcan_port_select(configuration.lookup("CanSocket"));
    if (configuration.lookup("GCHub"))
    {
        stack.start_tcp_hub_server(configuration.lookup("GCHubPort"));
    }
    if (configuration.lookup("StartWiThrottle"))
    {
        WiThrottleServer = new withrottle::Server(configuration.lookup("WiThrottleName"),
                                                  configuration.lookup("WiThrottlePort"),
                                                  stack.node());
    }
    
    // This command donates the main thread to the operation of the
    // stack. Alternatively the stack could be started in a separate stack and
    // then application-specific business logic could be executed ion a busy
    // loop in the main thread.
    stack.loop_executor();
    return 0;
}
