#include <inttypes.h>
#include "Print.h"

#define _Bool bool
#include "shims.h"

class SimpleDebugPrinter : public Print
{
public:
    SimpleDebugPrinter() { }
    virtual size_t write(const uint8_t *buffer, size_t size);
    virtual size_t write(uint8_t);
};