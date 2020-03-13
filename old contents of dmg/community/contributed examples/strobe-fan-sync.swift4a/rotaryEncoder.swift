import AVR

/* To see an example of using the rotary encoder, see the example strobe-fan-sync for how to use it. */

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
