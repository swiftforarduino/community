import AVR

SetupSerial(baudRate: 9600)
print(message: Put0)

let led: UInt8 = 3
pinMode(pin: led, mode: OUTPUT)

var brightness: Int16 = 0
var fadeAmount: Int16 = 5

while(true) {
  analogWrite(pin: led, value: UInt8(truncatingBitPattern: brightness))

  brightness = brightness &+ fadeAmount

  if (brightness <= 0 || brightness >= 255) {
    if fadeAmount > 0 {
      fadeAmount = -5
    }
   else {
      fadeAmount = 5
    }
  }

  delay(milliseconds: 30)
}


