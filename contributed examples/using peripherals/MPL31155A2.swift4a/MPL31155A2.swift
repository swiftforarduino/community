import AVR

let registerBuffer = UnsafeMutableBufferPointer<UInt8>.allocate(capacity: 3)

// MPL31155A2 low level helper functions
func readAltitudeBuffer(_ buffer: UnsafePointer<UInt8>) -> Float {
  let byte1 = buffer[0]
  let byte2 = buffer[1]
  let byte3 = buffer[2]

   print(unsignedTinyInt: byte1)
   print(unsignedTinyInt: byte2)
   print(unsignedTinyInt: byte3)

  let combined: UInt32 = UInt32(byte1)<<16 | UInt32(byte2)<<8 | UInt32(byte3)
  // print(longInt: combined)

  if (combined & 0x80000) > 0 {
    // altitude is negative
    return Float((combined | 0xFFF00000)>>4)/16.0
  } else {
    return Float(combined>>4)/16.0
  }
}

func readPressureBuffer(_ buffer: UnsafePointer<UInt8>) -> Float {
  let byte1 = buffer[0]
  let byte2 = buffer[1]
  let byte3 = buffer[2]

  let combined: Int32 = Int32(byte1)<<16 | Int32(byte2)<<8 | Int32(byte3)

  return Float(combined>>4)/4.0
}

func readTemperatureBuffer(_ buffer: UnsafePointer<UInt8>) -> Float {
  let byte1 = buffer[0]
  let byte2 = buffer[1]

  let combined: Int32 = Int32(byte1)<<8 | Int32(byte2)

  return Float(combined>>4)/16.0
}

func blockingWriteControlReg1(value: UInt8) {
    let slaveAddress: UInt8 = 0x60
    blockingWriteSingleI2CRegister(slaveAddress: slaveAddress, register: 0x26, value: value)
}

func blockingWaitForStatusFlag(flag: UInt8) {
    let slaveAddress: UInt8 = 0x60

    var status = blockingReadSingleI2CRegister(slaveAddress: slaveAddress, register: 0)
    while status & flag == 0 {
        delay(milliseconds: 10)
        status = blockingReadSingleI2CRegister(slaveAddress: slaveAddress, register: 0)
    }
}


// MPL31155A2 high level functions
func blockingGetAltitude() -> Float {
    guard let registerBufferPtr = registerBuffer?.baseAddress else {
        return -1
    }

    let slaveAddress: UInt8 = 0x60
    let pressureDataReadyFlag: UInt8 = 0x04

  // start the altimeter, turn on the analog systems, ADC, and set oversampling rate to 128x, read as altitude
  blockingWriteControlReg1(value: 0xB9)
  blockingWaitForStatusFlag(flag: pressureDataReadyFlag)

    let registerBufferOut = blockingReadMultipleI2CRegisters(slaveAddress: slaveAddress, registerStart: 0x01, registerCount: 3, buffer: registerBufferPtr)
    return readAltitudeBuffer(registerBufferOut.baseAddress!)
}

func blockingGetPressure() -> Float {
    guard let registerBufferPtr = registerBuffer?.baseAddress else {
        return -1
    }

    let slaveAddress: UInt8 = 0x60
    let pressureDataReadyFlag: UInt8 = 0x04

  // start the altimeter, turn on the analog systems, ADC, and set oversampling rate to 128x, read as pressure
  blockingWriteControlReg1(value: 0x39)
  blockingWaitForStatusFlag(flag: pressureDataReadyFlag)

    let registerBufferOut = blockingReadMultipleI2CRegisters(slaveAddress: slaveAddress, registerStart: 0x01, registerCount: 3, buffer: registerBufferPtr)
    return readPressureBuffer(registerBufferOut.baseAddress!)
}

func blockingGetTemperature() -> Float {
    guard let registerBufferPtr = registerBuffer?.baseAddress else {
        return -1
    } 
   
    let slaveAddress: UInt8 = 0x60
    let temperatureDataReadyFlag: UInt8 = 0x02

  // start the altimeter, turn on the analog systems, ADC, and set oversampling rate to 128x

  blockingWriteControlReg1(value: 0x39)
  blockingWaitForStatusFlag(flag: temperatureDataReadyFlag)

  let registerBufferOut = blockingReadMultipleI2CRegisters(slaveAddress: slaveAddress, registerStart: 0x04, registerCount: 2, buffer: registerBufferPtr)
  return readTemperatureBuffer(registerBufferOut.baseAddress!)
}

@discardableResult
func blockingCheckSensor() -> Bool {
    let slaveAddress: UInt8 = 0x60

  let whoami = blockingReadSingleI2CRegister(slaveAddress: slaveAddress, register: 0x0C)
  return whoami == 0xC4
}

func blockingSetupSensorFlags() {
    let slaveAddress: UInt8 = 0x60

  blockingWriteSingleI2CRegister(slaveAddress: slaveAddress, register: 0x13, value: 0x07) // set all flags enabled for data retrieval
}
