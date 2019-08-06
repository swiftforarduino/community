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
    let reading = readValues(pin: 2)
    printValues(reading)
    delay(milliseconds: 2000)
}
//------------------------------------------------------------------------------
