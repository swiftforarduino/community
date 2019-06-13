//------------------------------------------------------------------------------
//
// iLED library sample.swift4a
// Swift For Arduino
//
// Created by Carl Peto on 05/05/2019.
// Copyright © 2019 Carl Peto. All rights reserved.
//
// NOTE: Modifications to the "Libraries:" comment line below will affect the build.
// Libraries:
//------------------------------------------------------------------------------

import AVR
typealias IntegerLiteralType = UInt8

//------------------------------------------------------------------------------
// Setup / Functions
//------------------------------------------------------------------------------

// Insert code here to setup IO pins, define properties, add functions, etc.

let pin = 4
iLEDSetup(numberPixels: 60, pixelPin: pin)
iLEDSetBuffer(pixel: 5, color: iLEDRedColor)
iLEDSendBuffer()

//------------------------------------------------------------------------------
// Main Loop
//------------------------------------------------------------------------------
while(true) {

}

//------------------------------------------------------------------------------
