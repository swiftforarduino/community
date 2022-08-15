#define false 0
#define true 1
#define int32 long
#define uint32 unsigned long
#define iLEDColor uint32
#define iLEDLevel unsigned char

// note, use short, short int, unsigned short, unsigned short int for 16 bit ints, they are the same on both platforms
// use int32 for 32 bit int
// use long long int or unsigned long long int for 64 bit ints


#ifdef __clang_version__
// Clang (we are parsing header files as bridging header)
#define __nonnull _Nonnull
#define __nullable _Nullable
#else
// GCC
#define __nonnull 
#define __nullable 
#endif

typedef void (* __nonnull adcCallback)(unsigned short value);
typedef void (* __nonnull temperatureCallback)(short centigrade);
typedef void (* __nonnull externalInterruptCallback)();
typedef void (* __nullable optionalInterruptCallback)();
typedef void (* __nonnull asyncCallback)();
typedef void (* __nonnull asyncCallbackWithContext)(unsigned short context);
typedef void (* __nonnull slaveBufferCallback)(const unsigned char * __nonnull buffer, unsigned char length);
typedef const unsigned char * __nonnull (* __nonnull slaveGetBufferToSendCallback)(unsigned char * __nonnull bufferLength);

typedef void (* __nonnull slaveRegisterReceiveCallback)(unsigned char register, unsigned char value);
typedef unsigned char (* __nonnull slaveRegisterSendCallback)(unsigned char register);

// define the most used constants using #defines, so that they will be imported
// as true constants into swift and lowered into MC as constants
#define HIGH (_Bool)1
#define LOW (_Bool)0
#define OUTPUT (_Bool)1
#define INPUT (_Bool)0
#define WHILE_LOW (unsigned char)0
#define CHANGING_EDGE (unsigned char)1
#define FALLING_EDGE (unsigned char)2
#define RISING_EDGE (unsigned char)3

#define D0 (unsigned char)0
#define D1 (unsigned char)1
#define D2 (unsigned char)2
#define D3 (unsigned char)3
#define D4 (unsigned char)4
#define D5 (unsigned char)5
#define D6 (unsigned char)6
#define D7 (unsigned char)7
#define D8 (unsigned char)8
#define D9 (unsigned char)9
#define D10 (unsigned char)10
#define D11 (unsigned char)11
#define D12 (unsigned char)12
#define D13 (unsigned char)13

#define D14 (unsigned char)14 // this is pin A0 on an UNO, used as a digital input/output
#define D15 (unsigned char)15 // this is pin A1 on an UNO, used as a digital input/output
#define D16 (unsigned char)16 // this is pin A2 on an UNO, used as a digital input/output
#define D17 (unsigned char)17 // this is pin A3 on an UNO, used as a digital input/output
#define D18 (unsigned char)18 // this is pin A4 on an UNO, used as a digital input/output
#define D19 (unsigned char)19 // this is pin A5 on an UNO, used as a digital input/output

#define A0 (unsigned char)128 // this is pin A0 for use in ADC functions (=128+0)
#define A1 (unsigned char)129 // this is pin A0 for use in ADC functions (=128+1)
#define A2 (unsigned char)130 // this is pin A0 for use in ADC functions (=128+2)
#define A3 (unsigned char)131 // this is pin A0 for use in ADC functions (=128+3)
#define A4 (unsigned char)132 // this is pin A0 for use in ADC functions (=128+4)
#define A5 (unsigned char)133 // this is pin A0 for use in ADC functions (=128+5)

// for less frequently used constants, use defined globals

#define minAnalogPin (unsigned char)0
#define maxAnalogPin (unsigned char)5

#define minAnalogValue (unsigned short)0
#define maxAnalogValue (unsigned short)1023

extern iLEDColor iLEDWhite;
extern iLEDColor iLEDRed;
extern iLEDColor iLEDGreen;
extern iLEDColor iLEDBlue;
extern iLEDColor iLEDOff;

extern const unsigned char WATCHDOG_TIMEOUT_15MS;
extern const unsigned char WATCHDOG_TIMEOUT_30MS;
extern const unsigned char WATCHDOG_TIMEOUT_60MS;
extern const unsigned char WATCHDOG_TIMEOUT_120MS;
extern const unsigned char WATCHDOG_TIMEOUT_250MS;
extern const unsigned char WATCHDOG_TIMEOUT_500MS;
extern const unsigned char WATCHDOG_TIMEOUT_1S;
extern const unsigned char WATCHDOG_TIMEOUT_2S;
extern const unsigned char WATCHDOG_TIMEOUT_4S;
extern const unsigned char WATCHDOG_TIMEOUT_8S;
