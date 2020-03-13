import AVR

let red: UInt8 = 3
let amber: UInt8 = 10
let green: UInt8 = 9

pinMode(pin:red, mode:OUTPUT)
pinMode(pin:amber, mode:OUTPUT)
pinMode(pin:green, mode:OUTPUT)

analogWrite(pin: red, value: 200)
analogWrite(pin: amber, value: 100)
analogWrite(pin: green, value: 10)

// flash an LED with a certain period for a length of time, both in 100ths of a second
func showFlasher(pin: UInt8, durationCs: UInt16, periodCs: UInt8) {
  var brightness: UInt8 = 0
  let brightnessStep: UInt8 = 255 / periodCs
  var counter: UInt16 = 0 // counts up in cs until we hit durationCs, then turn off LED
  var waxing: Bool = true
  
  while counter < durationCs {
    analogWrite(pin: pin, value: brightness)

	if waxing {
      brightness = brightness &+ brightnessStep
    } else {
      brightness = brightness &- brightnessStep
    }

    if brightness > 230 {
      waxing = false
    }

	if brightness < 10 {
      waxing = true
    }

    counter = counter &+ 1
    delay(milliseconds: 10)
  }
}

while(true) {
   // stop = red
analogWrite(pin: red, value: 255)
analogWrite(pin: amber, value: 0)
analogWrite(pin: green, value: 0)

delay(milliseconds: 5000)

   // prepare to go = flashing amber
analogWrite(pin: red, value: 0)
analogWrite(pin: amber, value: 255)
analogWrite(pin: green, value: 0)
showFlasher(pin: amber, durationCs: 500, periodCs: 70)
//delay(milliseconds: 5000)

   // go = green
analogWrite(pin: red, value: 0)
analogWrite(pin: amber, value: 0)
analogWrite(pin: green, value: 255)

delay(milliseconds: 5000)

   // prepare to stop = amber
analogWrite(pin: red, value: 0)
analogWrite(pin: amber, value: 255)
analogWrite(pin: green, value: 0)

delay(milliseconds: 5000)
}
