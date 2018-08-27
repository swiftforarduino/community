import AVR
typealias IntegerLiteralType = UInt8

let pin = 5
let pin2 = 3

let value = 140
let value2 = 30

pinMode(pin: pin, mode: OUTPUT)
analogWrite(pin: pin, value: value)

pinMode(pin: pin2, mode: OUTPUT)
analogWrite(pin: pin2, value: value2)


while(true) {
}
