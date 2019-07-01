//------------------------------------------------------------------------------
//
// DHT11.swift4a
// Swift For Arduino
//
// Created by Carl Peto on 06/28/2019.
// License: MIT license - feel free to copy and use this sample.
// NOTE: this is not for the "Temperature/Humidity sensor pro", the more accurate one
// That is more expensive and gives .1 decimal place temperature accuracy.
// Although I think the code for that would be nearly identical, just some small tweaks.
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

// as we don't have complex types (struct, enum, error) in the v1 compiler series
// we use a tuple to return information
// (cyclesUntilLogicStateChanged,LogicStateAtStart,TimedOut)
@discardableResult
func waitForTransition() -> (UInt8, Bool, Bool) {
    // wait until a transition or timeout, then return it
    let openingState = digitalRead(pin: 2)
    var count = 0

    while count < 255 {
        let currentState = digitalRead(pin: 2)
        if currentState != openingState {
            return (count, openingState, false)
        }

        count = count &+ 1
    }

    return (255, openingState, true)
}

// hard to know what to do with timeouts, obviously they "shouldn't" happen
// but equally obviously the program must not hang if they do
// we take a best guess of ignoring them and reading them at the opening value
// which will make garbage data for that read but is better than a hang
func readBit() -> (bitValue: Bool, isValid: Bool) {
    let firstPart = waitForTransition()

    guard !firstPart.2, !firstPart.1 else {
        return (false, false)
    }

    let secondPart = waitForTransition()

    guard !secondPart.2, secondPart.1 else {
        return (false, false)
    }

    return (secondPart.0 > 10, true)
}

func readByte() -> (byteValue: Int8, isValid: Bool) {
    var collector: Int8 = 0
    var isValid = true
    var bitNumber = 0

    while bitNumber < 8 {
        collector = collector << 1
        let bit = readBit()
        let bitValue: Int8 = bit.0 ? 1 : 0
        isValid = isValid && bit.1
        collector = collector | bitValue
        bitNumber = bitNumber &+ 1
    }

    return (collector, isValid)
}

typealias TempHumidityValues = (temperature: Int8, humidity: Int8, isValid: Bool)

func readValues() -> TempHumidityValues {
    // setup and send sensor read signal
    pinMode(pin: 2, mode: OUTPUT)
    digitalWrite(pin: 2, value: HIGH)
    delay(ms: 250)
    digitalWrite(pin: 2, value: LOW)
    delay(ms: 20)
    digitalWrite(pin: 2, value: HIGH)
    pinMode(pin: 2, mode: INPUT)

    // wait for the data to start
    waitForTransition()
    waitForTransition()
    waitForTransition()

    let byte1 = readByte()
    let byte2 = readByte()
    let byte3 = readByte()
    let byte4 = readByte()
    let byte5 = readByte()

    let isValid = byte1.1 && byte2.1 && byte3.1 && byte4.1 && byte5.1

    if isValid {
        return (byte3.0, byte1.0, true)
    } else {
        return (-100, -100, false)
    }
}

SetupSerial(baudRate: 9600)

func printInformationString(temperature: Int8, humidity: Int8) {
    stringStartNew()
    stringAddFromProgmem(message: temp0)
    stringAdd(intToString(number: Int32(temperature)))
    stringAddFromProgmem(message: humidity1)
    stringAdd(intToString(number: Int32(humidity)))
    print(buffer: stringCurrentValue())
}

func printIssue() {
    print(message: Read0)
}

func printValues(_ values: TempHumidityValues) {
    if values.isValid {
        printInformationString(temperature: values.temperature, humidity: values.humidity)
    } else {
        printIssue()
    }
}

//------------------------------------------------------------------------------
// Main Loop
//------------------------------------------------------------------------------
while(true) {
    let reading = readValues()
    printValues(reading)
    delay(milliseconds: 2000)
}
//------------------------------------------------------------------------------
