//------------------------------------------------------------------------------
//
// bt keyboard.swift4a
// Swift For Arduino 3.0+
//
// Created by Carl Peto on 04/16/2020.
//
// NOTE: Modifications to the "Libraries:" comment line below will affect the build.
// Libraries: unsafeAdafruit_Bluefruit_LE.swift
//------------------------------------------------------------------------------

/*
    ____________________________________________________________________________

    Purpose

    Configure the Adafruit Bluefruit shield to simulate a bluetooth keyboard.
    Wait for text send down the UART/serial port from the IDE serial/debug window
    (or another terminal program), then send them as bluetooth keyboard data.
    ____________________________________________________________________________

    Hardware Configuration

    - Adafruit Bluefruit shield must be installed
    ____________________________________________________________________________

    Notes

    1. Make sure you have up to date community libraries to get the bluetooth
    library code.

    2. Connect using a device such as a mobile phone, laptop or games console
    to add this device as a keyboard. Instructions on how to do so will vary.

    3. The keyboard transmission software works well for letters, numbers, etc.
    but return/delete and any unusual characters may not be available.

    4. Uses the AVR library fixed string buffer to gather keystrokes before
    sending them.
    ____________________________________________________________________________

    Experiments

    - play with the timings of keyboard capture
    - try using the keycode based functions instead to make a more complex and
    powerful bluetooth keyboard
    - as an example, try sending a command key combination, this might allow you
    to run a program or open a dialog automatically on a headless device, e.g.
    you could make a device that sends ctrl-alt-delete to a server when needed
    ____________________________________________________________________________
*/

import AVR
typealias IntegerLiteralType = Pin

SetupSerial()
btStart(verbose: true)
btSetEcho(on: false)
btSetVerbose(on: false)

btSendCommand(fixedString: str5)

// send these commands to advertise battery state
//AT+BLEBATTEN=1
//AT+BLEBATTVAL=64
// note: in my tests this didn't work on my bluefruit shield either here or in their Arduino libs/examples
btSendCommand(fixedString: str3)
btSendCommand(fixedString: str4)
btSendCommand(fixedString: str0)
btReset()

print(message: str1)

//------------------------------------------------------------------------------
// Setup / Functions
//------------------------------------------------------------------------------

// Insert code here to setup IO pins, define properties, add functions, etc.

func getUserString() -> AVRString {
    while !available() {}

    stringStartNew()
    stringAddFromProgmem(message: str2)

    while available() {
        while available() {
            stringAddCharacter(read())
        }
        delay(ms: 200)
    }

    return stringCurrentValue()
}

//------------------------------------------------------------------------------
// Main Loop
//------------------------------------------------------------------------------
while(true) {
    let kbd = getUserString()

    print(buffer: kbd)
    btPrint(buffer: kbd)

    btWaitForOK()

    delay(ms: 200)
}

//------------------------------------------------------------------------------
