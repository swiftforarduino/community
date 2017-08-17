import AVR

let led: UInt8 = 9
pinMode(pin: led, mode: OUTPUT)

var brightness: Int16 = 0
var fadeAmount: Int16 = 5

while(true) {
  let trueBrightness = UInt8(truncatingBitPattern: brightness)
  analogWrite(pin: led, value: trueBrightness)

  brightness = brightness &+ fadeAmount

  if (brightness <= 0 || brightness >= 255) {
    if fadeAmount > 0 {
      fadeAmount = -5
    } else {
      fadeAmount = 5
    }
  }

  delay(milliseconds: 30)
}

