/*
 * Signal generator with a signal light to show when on.
 * 
 * 
 * 
 */

import AVR
typealias IntegerLiteralType = UInt8

pinMode(pin: 7, mode: OUTPUT)
pinMode(pin: 8, mode: OUTPUT)

digitalWrite(pin: 7, value: LOW)
digitalWrite(pin: 8, value: HIGH)

while(true) {
  digitalWrite(pin: 7, value: HIGH)
  delay(microseconds: 50)
  digitalWrite(pin: 7, value: LOW)
  delay(milliseconds: 10)
}
