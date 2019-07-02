//------------------------------------------------------------------------------
//
// Neopixel person sensor.swift4a
// Swift For Arduino
//
// Created by Carl Peto on 07/02/2019.
// Copyright © 2019 Carl Peto. All rights reserved.
//
// NOTE: Modifications to the "Libraries:" comment line below will affect the build.
// Libraries:
//------------------------------------------------------------------------------

import AVR
typealias IntegerLiteralType = Pin

//------------------------------------------------------------------------------
// Setup / Functions
//------------------------------------------------------------------------------
let indicatorPin = 13
let pirPin = 2
let neopixelPin = 4
let pixelCount = 7
let hasWhiteChip = true

pinMode(pin: indicatorPin, mode: OUTPUT)
pinMode(pin: neopixelPin, mode: OUTPUT)
pinMode(pin: pirPin, mode: INPUT)

iLEDFastSetup(pin: neopixelPin, pixelCount: pixelCount, hasWhite: hasWhiteChip, grbOrdered: true)

let dimRed = iLEDFastMakeColor(red: 30, green: 0, blue: 0, white: 0)
let dimCyan = iLEDFastMakeColor(red: 10, green: 10, blue: 20, white: 0)

func showNeopixels(_ withColour: iLEDFastColor) {
    for _ in 1...pixelCount {
        iLEDFastWritePixel(color: withColour)
    }

    // Latch so color is displayed
    delay(microseconds: 6)
}

//------------------------------------------------------------------------------
// Main Loop
//------------------------------------------------------------------------------
var lastVal = false

while(true) {
    let pirVal = digitalRead(pin: pirPin)

    if pirVal != lastVal {
        digitalWrite(pin: indicatorPin, value: pirVal)

        if pirVal {
            showNeopixels(dimRed)
        } else {
            showNeopixels(dimCyan)
        }

        lastVal = pirVal
    }

    wait(ms: 100)
}

//------------------------------------------------------------------------------
