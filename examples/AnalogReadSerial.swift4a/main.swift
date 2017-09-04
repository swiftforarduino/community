import AVR

// Analog Read Serial

SetupSerial(baudRate: 9600)

while(true) {
  // harmless comment
  // other comments
  let value: UInt16 = slowAnalogRead(pin: 0)
  print(unsignedInt: value)
  delay(milliseconds: 500)
}
