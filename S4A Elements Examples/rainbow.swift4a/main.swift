//
// NOTE: Modifications to the "Libraries:" comment line below will affect the build.
// Libraries: iLEDHelpers.swift
//------------------------------------------------------------------------------

/*
Instructions:
Plug a grove connector into D4 on your lotus board
Plug the other end into the 10 pixel neopixel strip
Connect the lotus board to your Mac via USB
Substitute the value 4 for <pin> in the program if necessary
From the Advanced Menu, Choose 'Download Libraries' to retrieve community library code
Build and upload the program
*/

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

