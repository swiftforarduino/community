//------------------------------------------------------------------------------
//
// bluetooth AT commands.swift4a
// Swift For Arduino 3.0+
//
// Created by Carl Peto on 04/07/2020.
//
// NOTE: Modifications to the "Libraries:" comment line below will affect the build.
// Libraries: unsafeAdafruit_Bluefruit_LE.swift
//------------------------------------------------------------------------------

/*
    ____________________________________________________________________________

    Purpose

    Configure the Adafruit Bluefruit shield to allow UART data over bluetooth.
    Also to demonstrate simple bluetooth setup and commands.
    ____________________________________________________________________________

    Hardware Configuration

    - Adafruit Bluefruit shield must be installed
    ____________________________________________________________________________

    Notes

    1. Make sure you have up to date community libraries to get the bluetooth
    library code.

    2. Connect using a standard UART bluetooth program. Tested with the Bluefruit
    LE Connect app from adafruit.

    3. Demonstrates checking firmware version before using some features.
    ____________________________________________________________________________

    Experiments

    - 
    ____________________________________________________________________________
*/

import AVR
typealias IntegerLiteralType = Pin

SetupSerial()

print(message: str3)

btStart(verbose: true)

btSetEcho(on: false)

btSetVerbose(on: false)

btSendCommand(fixedString: str0)

while !btIsConnected() {}

print(message: str1)

btSetMode(mode: btDataMode)

while(true) {
    delay(milliseconds: 3000)

    if btCheckMinimumVersion(versionFixedString: str4) {
        stringStartNew()
        stringAddFromProgmem(message: str2)
        stringAddCharacter(79)
        stringAddCharacter(75)
        btPrint(buffer: stringCurrentValue())
    }

    while btAvailable() > 0 {
        let c = btRead()
        print(character: c.0)
        print(character: c.1)
    }
}
