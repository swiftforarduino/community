#include <stdint.h>

#define false 0
#define true 1

#ifndef int32
// this should only occur on the AVR platform
#define int32 long
#endif

#ifndef uint32
// this should only occur on the AVR platform
#define uint32 unsigned long
#endif

#ifndef bool
// this should only occur on the AVR platform
#ifdef __clang_version__
#define bool _Bool
#endif
#endif

#ifdef __clang_version__
#define NOT_NULLABLE __nonnull
#define NULLABLE __nullable
#else
#define NOT_NULLABLE 
#define NULLABLE 
#endif

typedef void (* NULLABLE externalInterruptCallback)();

externalInterruptCallback getTimer2COMPACallback();
void setTimer2COMPACallback(externalInterruptCallback callback);

externalInterruptCallback getTimer2COMPBCallback();
void setTimer2COMPBCallback(externalInterruptCallback callback);

externalInterruptCallback getTimer1CAPTCallback();
void setTimer1CAPTCallback(externalInterruptCallback callback);

externalInterruptCallback getTimer1COMPBCallback();
void setTimer1COMPBCallback(externalInterruptCallback callback);

externalInterruptCallback getTimer0COMPBCallback();
void setTimer0COMPBCallback(externalInterruptCallback callback);

externalInterruptCallback getTimer0OVFCallback();
void setTimer0OVFCallback(externalInterruptCallback callback);
