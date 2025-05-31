#include "SimpleDebugPrinter.h"

size_t SimpleDebugPrinter::write(const uint8_t *buf, size_t size)
{
  _sendBuffer(size, (const char *)buf, false);
  return size;
}

size_t SimpleDebugPrinter::write(uint8_t byte) {
	_sendByte(byte);
	return 1;
}