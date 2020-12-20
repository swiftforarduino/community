//------------------------------------------------------------------------------
//
// bt cabinet1.swift4a
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

    Configure the Adafruit Bluefruit shield to listen to UART data, then use a
    custom protocol to control a string of neopixel lights, setting colour and
    brightness.
    ____________________________________________________________________________

    Hardware Configuration

    - Adafruit Bluefruit shield must be installed
    - D5 goes to the neopixel string to control them

    ____________________________________________________________________________

    Notes

    1. Make sure you have up to date community libraries to get the bluetooth
    library code.

    2. Make sure the number of neopixels on the string matches the pixelCount
    in the program.

    3. Make sure hasWhite and grbOrdered are correct for your hardware.

    4. Requires a matching program on your iphone to control the lights. The code
    for that program should be found near this program!
    (see swiftforarduino/neopixel-cabinet)
    ____________________________________________________________________________

    Experiments

    - update the iphone app to give a better ui
    - send the current colour back to the iphone on connect so it
    can update its ui accordingly
    - add separately controlled white values if supported

    ____________________________________________________________________________
*/

import AVR
typealias IntegerLiteralType = Pin

let iLEDPin = D5
let pixelCount: UInt16 = 60

// setup serial (for debugging only)
SetupSerial()

// attempt to retrieve previous hue/value from EEPROM
var existingF = readEEPROM(address: 199)
var existingHue = readEEPROM(address: 10)
var existingOn = readEEPROM(address: 299)

var currentValue: UInt8 = existingF

// current hue/value
var currentHue: UInt8 = existingHue

var on: Bool = existingOn != 0

// helper functions
func showSolidColour(hue: UInt8, value: UInt8) {
    var col: iLEDFastColor
    if on {
        col = iLEDFastMakeColor(hue: hue, saturation: 255, value: value, white: 0)
    } else {
        col = iLEDOff
    }

    for _ in 1...pixelCount {
        iLEDFastWritePixel(color: col)
    }
}

func currentState() -> (data: AVRString, length: UInt8) {
    stringStartNew()
    stringAddCharacter(0x48)
    stringAddCharacter(currentHue)
    stringAddCharacter(0x56)
    stringAddCharacter(currentValue)
    stringAddCharacter(0x31)
    stringAddCharacter(on ? 1 : 0)
    return (data: stringCurrentValue(), length: 6)
}

func sendCurrentState() {
    btPrint(buffer: currentState().data)
}

func fadeOn() {
    setOn()

    let duration: UInt16 = 500
    let brightnessStep = duration / UInt16(50)

    // fade in to current value
    var brightness = 0
    while brightness < 255 {
        brightness = brightness &+ 5
        if brightness >= currentValue {
            break
        }
        showSolidColour(hue: currentHue, value: brightness)
        delay(ms: brightnessStep)
    }

    showSolidColour(hue: currentHue, value: currentValue)
}

func fadeOff() {
    let duration: UInt16 = 500

    let brightnessStep = duration / UInt16(50)

    var brightness = currentValue
    while brightness > 0 {
        brightness = brightness &- 5
        showSolidColour(hue: currentHue, value: brightness)
        delay(ms: brightnessStep)
        if brightness < 10 {
            brightness = 0
        }
    }

    setOff()
    showSolidColour(hue: currentHue, value: currentValue)
}

func setOn() {
    on = true
    writeEEPROMWithoutVerify(address: 299, value: 1)
}

func setOff() {
    on = false
    writeEEPROMWithoutVerify(address: 299, value: 0)
}

func getBTCommand() -> (data: AVRString, length: UInt8) {
    while btAvailable() == 0 {} // block until data
    stringStartNew()

    var length: UInt8 = 0

    while btAvailable() > 0 {
        let c = btRead()
        stringAddCharacter(c.0)
        length = length &+ 1
    }

    return (stringCurrentValue(), length)
}


func interpretCommand(cmd: (data: AVRString, length: UInt8)) {
    guard let data = cmd.data else {
        return
    }

    let len = cmd.length

    if len > 0, data[0] == 0x3F {
        sendCurrentState()
        return
    }

    if len > 0, data[0] == 0x30 {
        setOff()
        showSolidColour(hue: currentHue, value: currentValue)
        return
    }

    if len > 0, data[0] == 0x31 {
        setOn()
        showSolidColour(hue: currentHue, value: currentValue)
        return
    }

    if len > 0, data[0] == 0x32 {
        fadeOff()
        return
    }

    if len > 0, data[0] == 0x33 {
        fadeOn()
        return
    }

    if len > 1, data[0] == 0x48 {
        currentHue = UInt8(bitPattern: data[1])
        writeEEPROMWithoutVerify(address: 10, value: currentHue)
    }

    if len > 3, data[2] == 0x56 {
        currentValue = UInt8(bitPattern: data[3])
        if currentValue > 100 {
            currentValue = 100
        }
        writeEEPROMWithoutVerify(address: 199, value: currentValue)
    }

    showSolidColour(hue: currentHue, value: currentValue)
}

// setup neopixels
pinMode(pin: iLEDPin, mode: OUTPUT)
iLEDFastSetup(pin: iLEDPin, pixelCount: pixelCount, hasWhite: true, grbOrdered: true)
delay(microseconds: 6)

showSolidColour(hue: currentHue, value: currentValue)


//setup bluetooth UART...
btStart(verbose: true)
btSetEcho(on: false)
btSetVerbose(on: false)
btSendCommand("AT+GAPDEVNAME=S4A BT Device")

// ...wait for connection, then go to data mode
while !btIsConnected() {}
print("connected")
btSetMode(mode: btDataMode)

//delay(ms: 3000)
// wait for commands to come in over bluetooth and implement them
while(true) {
    let cmd = getBTCommand()
    interpretCommand(cmd: cmd)
    delay(ms: 200)
}
