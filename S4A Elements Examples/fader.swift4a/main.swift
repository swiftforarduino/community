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

/*
Instructions:
Plug a grove connector into D5 on your lotus board
Plug the other end into the LED board
Connect the lotus board to your Mac via USB
From the Advanced Menu, Choose 'Download Libraries' to retrieve community library code
Build and upload the program
*/

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
