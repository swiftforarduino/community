// Author: Carl Peto
// Date: 08/15/2019
// IDE Version: 3.0
// Description: This library allows you to respond to a rotary encoder being
// turned clockwise or counterclockwise. Note: you need to keep the state of
// the rotary encoder from one call to the next in order to detect rotation.
// You use a tuple typed with PinsState to do this.

import AVR

/* To see an example of using the rotary encoder, see the example strobe-fan-sync for how to use it. */

/* Snippets:
 {
        "Rotary Encoder":[

            {"partName":"Setup rotary encoder",
                "partCode":"let rotaryPin1 = D6\nlet rotaryPin2 = D8\nlet centerPin = D7\n// store the state from call to call\nvar lastPinState: PinsState = (false, false, false)\n\npinMode(pin: rotaryPin1, mode: INPUT)\ndigitalWrite(pin: rotaryPin1, value: HIGH)\npinMode(pin: rotaryPin2, mode: INPUT)\ndigitalWrite(pin: rotaryPin2, value: HIGH)\npinMode(pin: centerPin, mode: INPUT)\ndigitalWrite(pin: centerPin, value: HIGH)"
            },

            {"partName":"Check the rotary pin state",
                "partCode":"checkRotaryEncoder(\npin1: rotaryPin1,\npin2: rotaryPin2,\ncenterPin: centerPin,\nlastPinState: &lastPinState,\nclockwise: {},\ncounterclockwise: {},\ncenterPinPressed: {})"
            }
        ]
 }
*/

typealias PinsState = (pin1: Bool, pin2: Bool, centerPin: Bool)

func debounce() {
  delay(milliseconds: 1)
}

func checkRotaryEncoder(
 pin1: UInt8,
 pin2: UInt8,
 centerPin: UInt8,
 lastPinState: inout PinsState,
 clockwise: @convention(c) () -> Void,
 counterclockwise: @convention(c) () -> Void,
 centerPinPressed: @convention(c) () -> Void)
 {

  let currentPinState = (digitalRead(pin: pin1), digitalRead(pin: pin2), digitalRead(pin: centerPin))

  if lastPinState.2 && !currentPinState.2 {
    // center pin was depressed
    centerPinPressed()
    debounce()
    lastPinState = currentPinState
    return
  }

  switch ((lastPinState.0, lastPinState.1), (currentPinState.0, currentPinState.1)) {

    case
      ((false, false), (true, false)),
      ((true, false), (true, true)),
      ((true, true), (false, true)),
      ((false, true), (false, false)) :

      clockwise()
      debounce()

    case
      ((false, false), (false, true)),
      ((false, true), (true, true)),
      ((true, true), (true, false)),
      ((true, false), (false, false)) :

      counterclockwise()
      debounce()

    default:

      break
  }

  lastPinState = currentPinState
}

/*

clockwise:
pin2-before, pin4-before-> pin2-after, pin4-after
0, 0 -> 1, 0
1, 0 -> 1, 1
1, 1 -> 0, 1
0, 1 -> 0, 0

anticlockwise:
pin2-before, pin4-before-> pin2-after, pin4-after
0, 0 -> 0, 1
0, 1 -> 1, 1
1, 1 -> 1, 0
1, 0 -> 0, 0

*/
