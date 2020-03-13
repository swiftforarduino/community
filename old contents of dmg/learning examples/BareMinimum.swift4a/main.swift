import AVR

// Bare minimum

let led: UInt8 = 9
pinMode(pin: led, mode: OUTPUT)

//digitalWrite(pin: 9, value: HIGH)

analogWrite(pin: led, value: 1)

while(true) {
  // this program does nothing
}
