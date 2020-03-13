import AVR

/*
    Change the blinking rate of the LED on pin 13 with a
    potentiometer or other analog input on analog pin 0
*/

let sensorPin: Pin = A0
let ledPin: Pin = D13

while(true) {
  let sensorValue = analogReadSync(pin: sensorPin)
  digitalWrite(pin: ledPin, value: HIGH)
  delay(milliseconds: sensorValue)
  digitalWrite(pin: ledPin, value: LOW)
  delay(milliseconds: sensorValue)
}
