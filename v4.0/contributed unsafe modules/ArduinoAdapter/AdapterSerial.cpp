/*

ORIGINAL FILE AND COPYRIGHT:
  HardwareSerial.cpp - Hardware serial library for Wiring
  Copyright (c) 2006 Nicholas Zambetti.  All right reserved.

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2.1 of the License, or (at your option) any later version.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  
  Modified 23 November 2006 by David A. Mellis
  Modified 28 September 2010 by Mark Sproul
  Modified 14 August 2012 by Alarus
  Modified 3 December 2013 by Matthijs Kooijman



NEW FILE: AdapterSerial.cpp
Changes are copyright (c) 2022 Carl Peto.

Rewritten to work as stubs with the AVR library native to the Swift for Arduino platform.

*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <inttypes.h>
#include <util/atomic.h>
#include "Arduino.h"

#include "AdapterSerial.h"

AdapterSerial::AdapterSerial()
{
}

void AdapterSerial::begin(unsigned long baud, uint8_t config)
{
  // no-op, the hardware is started by standard AVR calls
}

void AdapterSerial::end()
{
  // no-op, the hardware is stopped by standard AVR calls
}

int AdapterSerial::available(void)
{
  return _available() ? 1 : 0;
}

int AdapterSerial::peek(void)
{
  // non functional on this platform
  return -1;
}

int AdapterSerial::read(void)
{
  return _receiveByte();
}

int AdapterSerial::availableForWrite(void)
{
  return 0;
}

void AdapterSerial::flush()
{
  // no-op on this platform
}

size_t AdapterSerial::write(uint8_t c)
{
  _sendByte(c);
  return 1;
}


AdapterSerial Serial;
