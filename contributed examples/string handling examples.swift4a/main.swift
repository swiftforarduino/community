//------------------------------------------------------------------------------
//
// string handling examples.swift4a
// Swift For Arduino
//
// Created by Carl Peto on 07/05/2020.
// Copyright © 2020 Carl Peto. All rights reserved.
//
// NOTE: Modifications to the "Libraries:" comment line below will affect the build.
// Libraries:
//------------------------------------------------------------------------------

import AVR
typealias IntegerLiteralType = Pin

SetupSerial()

print(message: str0)

var i: Int32 = 0

while(true) {
    var buffer = stringStartNew(bufferSize: 30)
    stringAddFromProgmem(message: str1, stringBuffer: &buffer)
    stringAdd(intToString(number: i), stringBuffer: &buffer)
    stringAddFromProgmem(message: str2, stringBuffer: &buffer)
    print(buffer: stringCurrentValue(stringBuffer: buffer))
    stringBufferRelease(stringBuffer: buffer)
    i = i &+ 1
    delay(ms: 1000)
}

