#define ARDUINO_SHIM_DEFINED (unsigned char)1

#ifdef __cplusplus

#include "DebugPrinter.h"
#include "Print.h"
#include "SimpleDebugPrinter.h"
#include "Stream.h"
#include "AdapterSerial.h"
#include "Wire.h"

// these seem to cause program crashes
// #include "IPAddress.h"
// #include "Printable.h"
// #include "Udp.h"
// #include "Client.h"
// #include "Server.h"

#endif
