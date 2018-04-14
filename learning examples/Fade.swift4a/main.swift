import AVR

//SetupSerial(baudRate: 9600)
//print(message: Put0)

//let led: UInt8 = 9
//pinMode(pin: led, mode: OUTPUT)

var brightness: Int16 = 0
var fadeAmount: Int16 = 5

while(true) {
//  let trueBrightness = UInt8(truncatingBitPattern: brightness)
//
//  print(unsignedInt: UInt16(trueBrightness))
//
//  analogWrite(pin: led, value: trueBrightness)

  brightness = brightness &+ fadeAmount

  if (brightness <= 0 || brightness >= 255) {
    if fadeAmount > 0 {
      fadeAmount = -5
    }
// else {
//      fadeAmount = 5
//    }
  }

//  delay(milliseconds: 3000)
}


