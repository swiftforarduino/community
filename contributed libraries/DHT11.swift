// Created by Carl Peto on 06/28/2019.
// License: MIT license - feel free to copy and use this sample.
// NOTE: this is not for the "Temperature/Humidity sensor pro", the more accurate one
// That is more expensive and gives .1 decimal place temperature accuracy.
// Although I think the code for that would be nearly identical, just some small tweaks.


import AVR

typealias TempHumidityValues = (temperature: Int8, humidity: Int8, isValid: Bool)

// as we don't have complex types (struct, enum, error) in the v1 compiler series
// we use a tuple to return information
// (cyclesUntilLogicStateChanged,LogicStateAtStart,TimedOut)
@discardableResult
func waitForTransition(pin: UInt8) -> (UInt8, Bool, Bool) {
    // wait until a transition or timeout, then return it
    let openingState = digitalRead(pin: pin)
    var count = 0

    while count < 255 {
        let currentState = digitalRead(pin: pin)
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
func readBit(pin: UInt8) -> (bitValue: Bool, isValid: Bool) {
    let firstPart = waitForTransition(pin: pin)

    guard !firstPart.2, !firstPart.1 else {
        return (false, false)
    }

    let secondPart = waitForTransition(pin: pin)

    guard !secondPart.2, secondPart.1 else {
        return (false, false)
    }

    return (secondPart.0 > 10, true)
}

func readByte(pin: UInt8) -> (byteValue: Int8, isValid: Bool) {
    var collector: Int8 = 0
    var isValid = true
    var bitNumber = 0

    while bitNumber < 8 {
        collector = collector << 1
        let bit = readBit(pin: pin)
        let bitValue: Int8 = bit.0 ? 1 : 0
        isValid = isValid && bit.1
        collector = collector | bitValue
        bitNumber = bitNumber &+ 1
    }

    return (collector, isValid)
}

func readValues(pin: UInt8) -> TempHumidityValues {
    // setup and send sensor read signal
    pinMode(pin: pin, mode: OUTPUT)
    digitalWrite(pin: pin, value: HIGH)
    delay(ms: 250)
    digitalWrite(pin: pin, value: LOW)
    delay(ms: 20)
    digitalWrite(pin: pin, value: HIGH)
    pinMode(pin: pin, mode: INPUT)

    // wait for the data to start
    waitForTransition(pin: pin)
    waitForTransition(pin: pin)
    waitForTransition(pin: pin)

    let byte1 = readByte(pin: pin)
    let byte2 = readByte(pin: pin)
    let byte3 = readByte(pin: pin)
    let byte4 = readByte(pin: pin)
    let byte5 = readByte(pin: pin)

    let isValid = byte1.1 && byte2.1 && byte3.1 && byte4.1 && byte5.1

    if isValid {
        return (byte3.0, byte1.0, true)
    } else {
        return (-100, -100, false)
    }
}
