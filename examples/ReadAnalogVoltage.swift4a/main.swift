import AVR

// Read Analog Voltage
// In a later version of the SDK this should output a formatted decimal
// for now, it will output the rough millivolts output, e.g. 4500 means 4.5 volts

// This is an approximation as Double -> Int seems to rely on Swift runtime that isn't implemented yet

SetupSerial(baudRate: 9600)

while(true) {
  let sensorValue: UInt16 = slowAnalogRead(pin: 0)
  let voltage: Double = Double(sensorValue) * (5.0 / 1023.0)

  let milliVolts: UInt16 = sensorValue &* 5
  print(unsignedInt: milliVolts)

// one day we should write this instead:
//  print(double: voltage)

  delay(milliseconds: 1)
}