#include <inttypes.h>
#include <stddef.h>
#include "Print.h"

class DebugPrinter : public Print
{
protected:
    size_t(*_printCallback)(const uint8_t *buf, size_t size) = 0;
public:
    DebugPrinter(size_t(*callback)(const uint8_t *buf, size_t size)) { _printCallback = callback; }
    virtual size_t write(const uint8_t *buffer, size_t size);
};