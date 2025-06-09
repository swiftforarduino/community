/*
  TwoWire.cpp - TWI/I2C library for Wiring & Arduino
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
 
  Modified 2012 by Todd Krein (todd@krein.org) to implement repeated starts
  Modified 2017 by Chuck Todd (ctodd@cableone.net) to correct Unconfigured Slave Mode reboot
  Modified 2020 by Greyson Christoforo (grey@christoforo.net) to implement timeouts
*/

extern "C" {
  #include <stdlib.h>
  #include <string.h>
  #include <inttypes.h>
  // #include "utility/twi.h"
}

#include "Wire.h"
#include "shims.h"

#ifndef TWI_FREQ
#define TWI_FREQ 100000L
#endif

#ifndef TWI_BUFFER_LENGTH
#define TWI_BUFFER_LENGTH 32
#endif

uint8_t I2CAdapter::rxBuffer[BUFFER_LENGTH];
uint8_t I2CAdapter::rxBufferIndex = 0;
uint8_t I2CAdapter::rxBufferLength = 0;

uint8_t I2CAdapter::txAddress = 0;
uint8_t I2CAdapter::txBuffer[BUFFER_LENGTH];
uint8_t I2CAdapter::txBufferIndex = 0;
uint8_t I2CAdapter::txBufferLength = 0;

I2CAdapter::I2CAdapter(uint8_t premultiplier, bool activatePullups) : premultiplier(premultiplier), activatePullups(activatePullups)
{
}

// Public Methods //////////////////////////////////////////////////////////////

void I2CAdapter::begin(void)
{
  rxBufferIndex = 0;
  rxBufferLength = 0;
  _i2cinit(((F_CPU / TWI_FREQ) - 16) / 2, premultiplier & 3, activatePullups);
}

void I2CAdapter::begin(uint8_t address)
{
  begin();
  slaveAddress = address;
}

void I2CAdapter::begin(int address)
{
  begin((uint8_t)address);
}

void I2CAdapter::end(void)
{
  _i2cshutdown();
}

void I2CAdapter::setClock(uint32_t clock)
{
  _i2cinit(((F_CPU / clock) - 16) / 2, premultiplier & 3, activatePullups);
}


void I2CAdapter::setWireTimeout(uint32_t timeout, bool reset_with_timeout){
  // noop - not supported
}

bool I2CAdapter::getWireTimeoutFlag(void){
  return false; // not supported
}

void I2CAdapter::clearWireTimeoutFlag(void){
  // noop - not supported
}

uint8_t I2CAdapter::requestFrom(uint8_t address, uint8_t quantity, uint32_t iaddress, uint8_t isize, uint8_t sendStop)
{
  if (isize > 0) {
    // send internal address; this mode allows sending a repeated start to access
    // some devices' internal registers. This function is executed by the hardware
    // TWI module on other processors (for example Due's TWI_IADR and TWI_MMR registers)

    beginTransmission(address);

    // the maximum size of internal address is 3 bytes
    if (isize > 3){
      isize = 3;
    }

    _i2cwrite((address&0x7f)<<1);
    // write internal register address - most significant byte first
    while (isize-- > 0)
      _i2cwrite((uint8_t)(iaddress >> (isize*8)));
  }

  // clamp to buffer length
  if(quantity > BUFFER_LENGTH){
    quantity = BUFFER_LENGTH;
  }
  // perform blocking read into buffer
  uint8_t read = 0;
  _i2cReadBuffer(address, quantity, rxBuffer);

  // set rx buffer iterator vars
  rxBufferIndex = 0;
  rxBufferLength = read;

  return read;
}

uint8_t I2CAdapter::requestFrom(uint8_t address, uint8_t quantity, uint8_t sendStop) {
	return requestFrom((uint8_t)address, (uint8_t)quantity, (uint32_t)0, (uint8_t)0, (uint8_t)sendStop);
}

uint8_t I2CAdapter::requestFrom(uint8_t address, uint8_t quantity)
{
  return requestFrom((uint8_t)address, (uint8_t)quantity, (uint8_t)true);
}

uint8_t I2CAdapter::requestFrom(int address, int quantity)
{
  return requestFrom((uint8_t)address, (uint8_t)quantity, (uint8_t)true);
}

uint8_t I2CAdapter::requestFrom(int address, int quantity, int sendStop)
{
  return requestFrom((uint8_t)address, (uint8_t)quantity, (uint8_t)sendStop);
}

void I2CAdapter::beginTransmission(uint8_t address)
{
  // set address of targeted slave
  txAddress = address;
}

void I2CAdapter::beginTransmission(int address)
{
  beginTransmission((uint8_t)address);
}

// Arduino lib buffers then transmits, recreating this with AVR.
// Always sends stop, limitation of AVR library
uint8_t I2CAdapter::endTransmission(uint8_t sendStop)
{
  _i2cWriteBuffer(txAddress, txBufferLength, (const char*)txBuffer, false);
  // reset tx buffer iterator vars
  txBufferIndex = 0;
  txBufferLength = 0;

  return 0; // return codes not supported
}

uint8_t I2CAdapter::endTransmission(void)
{
  return endTransmission(true);
}

size_t I2CAdapter::write(uint8_t data)
{
  // only support master transmitter mode
    // don't bother if buffer is full
    if(txBufferLength >= BUFFER_LENGTH){
      setWriteError();
      return 0;
    }
    // put byte in tx buffer
    txBuffer[txBufferIndex] = data;
    ++txBufferIndex;
    // update amount in buffer   
    txBufferLength = txBufferIndex;
  return 1;
}

// must be called in:
// slave tx event callback
// or after beginTransmission(address)
size_t I2CAdapter::write(const uint8_t *data, size_t quantity)
{
  // in master transmitter mode
  for(size_t i = 0; i < quantity; ++i){
    write(data[i]);
  }
  return quantity;
}

// must be called in:
// slave rx event callback
// or after requestFrom(address, numBytes)
int I2CAdapter::available(void)
{
  return rxBufferLength - rxBufferIndex;
}

// must be called in:
// slave rx event callback
// or after requestFrom(address, numBytes)
int I2CAdapter::read(void)
{
  int value = -1;
  
  // get each successive byte on each call
  if(rxBufferIndex < rxBufferLength){
    value = rxBuffer[rxBufferIndex];
    ++rxBufferIndex;
  }

  return value;
}

// must be called in:
// slave rx event callback
// or after requestFrom(address, numBytes)
int I2CAdapter::peek(void)
{
  int value = -1;
  
  if(rxBufferIndex < rxBufferLength){
    value = rxBuffer[rxBufferIndex];
  }

  return value;
}

void I2CAdapter::flush(void)
{
  // XXX: to be implemented.
}

// // behind the scenes function that is called when data is received
// void TwoWire::onReceiveService(uint8_t* inBytes, int numBytes)
// {
//   // noop - slave not yet supported
// }

// // behind the scenes function that is called when data is requested
// void TwoWire::onRequestService(void)
// {
//   // noop - slave not yet supported
// }

// sets function called on slave write
void I2CAdapter::onReceive( void (*function)(int) )
{
  // noop - slave not yet supported
}

// sets function called on slave read
void I2CAdapter::onRequest( void (*function)(void) )
{
  // noop - slave not yet supported
}

// Preinstantiate Objects //////////////////////////////////////////////////////

I2CAdapter Wire = I2CAdapter();

