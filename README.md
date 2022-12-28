# Command Stations And Boosters

This is a collection of LCC/DCC Command Stations and Boosters.  The Command 
Stations are Beagle Board based, leveraging the PRUs in the TI AM335x  
processors to generate the DCC signals accuratly without worrying about Linux 
kernel premption or needing a real-time kernel module.  The compainion 
booster is ESP32 based.



1. [BBBCommandStation](https://github.com/RobertPHeller/RPi-RRCircuits/tree/master/BBBCommandStation)

    > Early BeagleBone Black LCC/DCC Command Station board set -- two boards, a cape 
    > and a power board.  Does not include RailComm support.

1. [BBBCommandStationOpenMRN](https://github.com/RobertPHeller/RPi-RRCircuits/tree/master/BBBCommandStationOpenMRN)

    > This is the program for the Beagle Board LCC/DCC/Railcom command 
    > station.  It uses OpenMRN to interface with tha LCC/OpenLCB network
    > to implement a LCC/OpenLCB aware command station node that can 
    > operate DCC/Railcom locomotives.  It should work with any of the
    > Beagle Board addon boards I have designed.  It uses the AM335X's
    > PRUs to generate the DCC signals.  It uses the OpenMRN Console
    > class to communicate over a Tcp/Ip channel with a Tcl/Tk coded
    > GUI program to provide a user friendly point-and-click high level
    > user interface.  

1. [ESP32-C3-Booster](https://github.com/RobertPHeller/RPi-RRCircuits/tree/master/ESP32-C3-Booster)

    > ESP32 C3 based DCC Booster.  This booster should work with any LCC command 
    > station that puts the DCC Signal out on pins 4 and 5 ("Alt") of the LCC 
    > network bus.

1. [ESP32-C3-BoosterOpenMRNIDF](https://github.com/RobertPHeller/RPi-RRCircuits/tree/master/ESP32-C3-BoosterOpenMRNIDF)

    > 

1. [OpenMRNIDF](https://github.com/RobertPHeller/RPi-RRCircuits/tree/master/OpenMRNIDF)

    > This is an exported version of the OpenMRN library for the ESP32 which is
    > usable as an ESP-IDF component.

1. [PBCommandStation](https://github.com/RobertPHeller/RPi-RRCircuits/tree/master/PBCommandStation)

    > Original through hole version of the Pocket Beagle LCC/DCC Command Station.
    > This design is depreciated -- see PocketBeagleCommandStation and 
    > PocketBeagleCommandStation_SMD for a current design.

1. [PocketBeagleCommandStation](https://github.com/RobertPHeller/RPi-RRCircuits/tree/master/PocketBeagleCommandStation)

    > Through hole version of the PocketBeagle LCC/DCC Command Station. This is a
    > DCC command station that is a LCC node. It implements the OpenLCB train
    > protocol node over LCC and converts that to DCC commands. It includes a
    > booster and puts the DCC signal on the LCC bus (pins 4 and 5). It implements a
    > programming track and implements Railcom. The Command Station uses a
    > PocketBeagle as the processing element and uses the PRUs (Programmable
    > Realtime Units) to generate the DCC signal. (See
    > [PocketBeagleCommandStation_SMD](https://github.com/RobertPHeller/RPi-RRCircuits/tree/master/PocketBeagleCommandStation_SMD)
    > for a SMD version.)

1. [PocketBeagleCommandStation_SMD](https://github.com/RobertPHeller/RPi-RRCircuits/tree/master/PocketBeagleCommandStation_SMD)

    > SMD version of the PocketBeagle LCC/DCC Command Station.  This is a
    > DCC command station that is a LCC node. It implements the OpenLCB train
    > protocol node over LCC and converts that to DCC commands. It includes a
    > booster and puts the DCC signal on the LCC bus (pins 4 and 5). It implements a
    > programming track and implements Railcom. The Command Station uses a
    > PocketBeagle as the processing element and uses the PRUs (Programmable
    > Realtime Units) to generate the DCC signal. (See
    > [PocketBeagleCommandStation](https://github.com/RobertPHeller/RPi-RRCircuits/tree/master/PocketBeagleCommandStation)
    > for a through hole version.)

