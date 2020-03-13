import AVR

SetupSerial(baudRate:9600)

pinMode(pin:13, mode:OUTPUT)
pinMode(pin:3, mode:OUTPUT)

print(message: Hello0)

digitalWrite(pin:13, value:LOW)

analogWrite(pin: 3, value: 12)

var latestVal: UInt8 = 0

while(true) {
  delay(milliseconds: 30)

  analogReadAsync(pin: 0) { value in
    latestVal = UInt8(truncatingBitPattern: value / 4)
  }

  delay(milliseconds: 30)

  print(unsignedInt: UInt16(latestVal))
  analogWrite(pin: 3, value: latestVal)
}





//digitalWrite(pin:3, value:HIGH)


//
//digitalWrite(pin:3, value:LOW)
//
//
//  delay(milliseconds: 30)
//
//digitalWrite(pin:3, value:HIGH)

//

//

///*
//
//  //analogReadAsync(pin: 0, callback: callback)
//
//let callback: @convention(c) (UInt16) -> Void = { value in
//
//  print(unsignedInt: value)
//
//  let oVal: UInt8 = UInt8(truncatingBitPattern: value / 4)
//  print(unsignedInt: UInt16(oVal))
//}
//*/
