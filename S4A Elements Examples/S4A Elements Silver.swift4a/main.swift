//------------------------------------------------------------------------------
// NOTE: Modifications to the "Libraries:" comment line below will affect the build.
// Libraries: iLEDHelpers.swift
//------------------------------------------------------------------------------

import AVR
typealias IntegerLiteralType = Pin

let iledPin: UInt8 = 4
let pixels: UInt8 = 10
let button: UInt8 = 7

pinMode(pin: iledPin, mode: OUTPUT)
pinMode(pin: button, mode: INPUT)

var brightness: Int16 = 0
var fadeAmount: Int16 = 5

var buffer = iLED_Setup_Buffered(pin: iledPin, count: pixels, hasWhiteChip: false)

func writeiLEDStick(red: UInt8) {
    for i in 0..<pixels {
        buffer[Int(i)] = iLEDFastMakeColor(red: red, green: 0, blue: 0, white: 0)
    }
    iLEDFastWriteBuffer()
}

while(true) {
  writeiLEDStick(red: UInt8(truncatingBitPattern: brightness))

  brightness = brightness &+ fadeAmount

  if (brightness <= 0 || brightness >= 255) {
    if fadeAmount > 0 {
      fadeAmount = -5
    }
   else {
      fadeAmount = 5
    }
  }

  if digitalRead(pin: button) {
    delay(milliseconds: 3)
  } else {
    delay(milliseconds: 30)
  }
}
