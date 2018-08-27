import AVR
typealias IntegerLiteralType = UInt8

SetupSerial(baudRate: 9600)

while(true) {
  let temperature = slowReadTemperatureCentigrade(tsOffset: 335, tsGain: 1.15)
  print(int: temperature)
  wait(ms: 1000)
}
