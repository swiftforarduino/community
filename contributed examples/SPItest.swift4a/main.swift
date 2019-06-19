import AVR

// do setup here

let indicatorLED: UInt8 = 3
let SS: UInt8 = 10

pinMode(pin: indicatorLED, mode: OUTPUT)
pinMode(pin: SS, mode: OUTPUT)
digitalWrite(pin: SS, value: HIGH)

SetupSPI(speed: 2, mode: 0, lsb: false)

SetupSerial(baudRate: 9600)

while(true) {
  // run the main program loop here
  digitalWrite(pin: indicatorLED, value: HIGH)

  digitalWrite(pin: SS, value: LOW)
  let charRead = sendSPISlow(byte: 41)
  digitalWrite(pin: SS, value: HIGH)

  delay(milliseconds: 1000)
  digitalWrite(pin: indicatorLED, value: LOW)
  print(message:SPI0)
  print(unsignedInt: UInt16(charRead))
  delay(milliseconds: 1000)
}
