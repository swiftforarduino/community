import AVR

// Digital Read Serial

let pushButton: UInt8 = 2

SetupSerial(baudRate: 9600)

pinMode(pin: pushButton, mode: INPUT)


while(true) {
  let pinValue: Bool = digitalRead(pin: 7)
  print(unsignedInt: pinValue ? 1 : 0)
  delay(milliseconds: 500)
}
