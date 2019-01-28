import AVR

typealias IntegerLiteralType = UInt8

setupStepper()

SetupSerial(baudRate: 9600)
print(message: Put0)

while(true) {

  for i: UInt16 in 0..<4096 {
    step(count: 1)
    delay(microseconds: 800)
  }

  forward = !forward
  
  print(message: Reversing1)
}
