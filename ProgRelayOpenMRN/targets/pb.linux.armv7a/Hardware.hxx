#ifndef __HARDWARE_HXX
#define __HARDWARE_HXX

#include <os/LinuxGpio.hxx>
#include "utils/GpioInitializer.hxx"

#define HARDWARE_IMPL "PB "

// On chip GPIO:

typedef GpioInitializer<> GpioInit;



#define HAVE_TCP_GRIDCONNECT_HOST
#define TCP_GRIDCONNECT_HOST "127.0.0.1"
#define TCP_GRIDCONNECT_PORT 12021

//#define PRINT_ALL_PACKETS
//#define HAVE_SOCKET_CAN_PORT
//#define SOCKET_CAN_PORT "vcan0"

#endif // __HARDWARE_HXX
