import AVR
typealias IntegerLiteralType = UInt8

pinMode(pin: 9, mode: OUTPUT)

var brightness: Int16 = 0
var brightStep: Int16 = 1

while(true) {

  brightness = brightness &+ brightStep

  if brightness == 255 {
    brightStep = -1
  } else if brightness == -50 {
    brightStep = 1
  }

  let realBrightness: Int16 = brightness > 0 ? brightness : 0

  analogWrite(pin: 9, value: UInt8(truncatingBitPattern: realBrightness))

  delay(milliseconds: 9)

}
