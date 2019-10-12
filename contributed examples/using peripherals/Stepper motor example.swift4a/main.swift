import AVR

typealias IntegerLiteralType = UInt8

setupStepper(IN1: 8, IN2: 9, IN3: 10, IN4: 11)

SetupSerial(baudRate: 9600)
print(message: Put0)

while(true) {

  var i: UInt16 = 0
  while i < 4096 {
    singleStep()
    delay(microseconds: 800)
    i = i &+ 1
  }

  reverseDirection()

  print(message: Reversing1)
}

// cellar... the code was this...
// but it creates some internal aborts
// which would probably never be triggered
// but I'd rather not take the risk...
//  for i: UInt16 in 0..<4096 {
//    singleStep()
//    delay(microseconds: 800)
// }
