import AVR

// Analog Read and Serial demo

SetupSerial(baudRate: 9600)

while(true) {
  // harmless comment
  // other comments
  let value: UInt16 = analogReadSync(pin: 0)
  print(unsignedInt: value)
  delay(milliseconds: 500)
}
