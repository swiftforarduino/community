//------------------------------------------------------------------------------
//
// blink.swift4a
// Swift For Arduino
//
// Created by Carl Peto on 12/07/2019.
// Copyright © 2019 Carl Peto. All rights reserved.
//
// NOTE: Modifications to the "Libraries:" comment line below will affect the build.
// Libraries:
//------------------------------------------------------------------------------

import AVR
typealias IntegerLiteralType = Pin

let led = 5

pinMode(pin: led, mode: OUTPUT)

while(true) {
    //digitalWrite(pin: led, value: HIGH)
    fadeIn(pin: led, duration: 1000)
    delay(milliseconds: 400)
    //digitalWrite(pin: led, value: LOW)
    fadeOut(pin: led, duration: 1000)
    delay(milliseconds: 400)
}
