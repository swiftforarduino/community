#include "DebugPrinter.h"

size_t DebugPrinter::write(const uint8_t *buf, size_t size)
{
  if ( _printCallback )
  {
    return _printCallback(buf, size);
  }
  else
  {
    return 0;
  }
}