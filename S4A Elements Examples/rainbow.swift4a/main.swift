//
// NOTE: Modifications to the "Libraries:" comment line below will affect the build.
// Libraries: iLEDHelpers.swift
//------------------------------------------------------------------------------

import AVR
typealias IntegerLiteralType = Pin


let ledPin = 4
let pixels = 10

pinMode(pin: ledPin, mode: OUTPUT)

var buffer = iLED_Setup_Buffered(pin: ledPin, count: pixels, hasWhiteChip: false)

func rainbow() {
    let hueDeltaPerPixel = 255 / pixels

    for i in 0..<pixels {
        buffer[Int(i)] = iLEDFastMakeColor(hue: i &* hueDeltaPerPixel, saturation: 255, value: 255, white: 0)
    }

    iLEDFastWriteBuffer()
}

rainbow()

func rollBuffer() {
    let firstPixel = buffer[0]

    for i in 0..<pixels {
        buffer[Int(i)] = buffer[Int(i&+1)]
    }

    buffer[Int(pixels&-1)] = firstPixel
    iLEDFastWriteBuffer()
}

while(true) {
    rollBuffer()
    delay(milliseconds: 50)
}

