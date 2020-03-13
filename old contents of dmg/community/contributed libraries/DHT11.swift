// Created by Carl Peto on 06/28/2019.
// License: MIT license - feel free to copy and use this sample.

// From Grove parts this allows you to read from the DHT11 or DHT22 sensors.


import AVR

/* Snippets:
 {
        "DHT11":[
            {"partName":"Read Temperature and Humidity",
                "partCode":"let reading: (temperature: Int8, humidity: Int8, isValid: Bool) = readValues(pin: 2)"
            }
        ],
        "DHT22":[
            {"partName":"Read Temperature and Humidity",
                "partCode":"let reading: (temperatureTimesTen: Int16, humidityTimesTen: Int16, isValid: Bool) = readValuesDHT22(pin: 2)"
            }
        ],
 }

*/

typealias TempHumidityValues = (temperature: Int8, humidity: Int8, isValid: Bool)
// values are x10, float from int conversion not working in current avr backend build...
typealias TempHumidityValues22 = (temperature: Int16, humidity: Int16, isValid: Bool)

// as we don't have complex types (struct, enum, error) in the v1 compiler series
// we use a tuple to return information
// (cyclesUntilLogicStateChanged,LogicStateAtStart,TimedOut)
@discardableResult
private func waitForTransition(pin: UInt8) -> (UInt8, Bool, Bool) {
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
private func readBit(pin: UInt8) -> (bitValue: Bool, isValid: Bool) {
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

private func readByte(pin: UInt8) -> (byteValue: UInt8, isValid: Bool) {
    var collector: UInt8 = 0
    var isValid = true
    var bitNumber = 0

    while bitNumber < 8 {
        collector = collector << 1
        let bit = readBit(pin: pin)
        let bitValue: UInt8 = bit.0 ? 1 : 0
        isValid = isValid && bit.1
        collector = collector | bitValue
        bitNumber = bitNumber &+ 1
    }

    return (collector, isValid)
}

private func readValueBytesRaw(pin: UInt8) -> (UInt8, UInt8, UInt8, UInt8, UInt8, isValid: Bool) {
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

    return (byte1.0, byte2.0, byte3.0, byte4.0, byte5.0, isValid: isValid)
}

func readValues(pin: UInt8) -> TempHumidityValues {
    let bytes = readValueBytesRaw(pin: pin)
    let checksum = bytes.0 &+ bytes.1 &+ bytes.2 &+ bytes.3

    if bytes.isValid, checksum == bytes.4 {
        return (Int8(bitPattern: bytes.2 & 0x7F), Int8(bitPattern: bytes.0 & 0x7F), true)
    } else {
        return (-100, -100, false)
    }
}

func readValuesDHT22(pin: UInt8) -> TempHumidityValues22 {
    let bytes = readValueBytesRaw(pin: pin)
    let checksum = bytes.0 &+ bytes.1 &+ bytes.2 &+ bytes.3

    if bytes.isValid, checksum == bytes.4 {
        let humidityHi = Int16(bytes.0) << 8
        let humidityLo = Int16(bytes.1)

        let tempHi = Int16(bytes.2 & 0x7F) << 8
        let tempLow = Int16(bytes.3)

        let tempNegative = bytes.2 & 0x80 == 0x80
        let temperature = tempHi &+ tempLow
        let humidity = humidityHi &+ humidityLo

        if tempNegative {
            return (-temperature, humidity, true)
        } else {
            return (temperature, humidity, true)
        }
    } else {
        return (-100, -100, false)
    }
}

