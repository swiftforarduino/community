import AVR
import libc

let indicator = D13

pinMode(pin: indicator, mode: OUTPUT)

let SDA = 18
let SCL = 19

let slaveAddress = 0x46

func waitForBusClear() {
    // TWINT bit == 1 means TWI hardware is idle, last function was complete
    digitalWrite(pin: indicator, value: TWCR&(1<<TWINT) == 0)
    while ((TWCR&(1<<TWINT))==0) {}
    digitalWrite(pin: indicator, value: TWCR&(1<<TWINT) == 0)
}

SetupSerial()

// callback after timeout
executeAsync(after: 1, repeats: true) {
  digitalWrite(pin: indicator, value: TWCR&(1<<TWINT) != 0)
}

digitalWrite(pin: SDA, value: HIGH)
digitalWrite(pin: SCL, value: HIGH)

print("starting slave...")

let receiveBufferSize: Int = 100
let receiveBuffer = UnsafeMutableBufferPointer<UInt8>.allocate(capacity: receiveBufferSize)

TWAR = slaveAddress<<1
TWCR = 1<<TWEN
TWCR = (1<<TWINT)|(1<<TWEN)|(1<<TWEA)

print("waiting for master")

while true {
    // wait until TWI hardware indicates we have been selected as a slave
    if TWCR&(1<<TWINT) != 0, let receiveBuffer = receiveBuffer {
        print("signal from master")

        var charCount: Int = 0

        // iterate through the full buffer, if needed
        // when the buffer is full, finish iterating
        for i in 0..<receiveBuffer.count {
            let sendAck = i < receiveBuffer.count - 1

            if sendAck {
                TWCR = (1<<TWINT)|(1<<TWEN)|(1<<TWEA);
            } else {
                TWCR = (1<<TWINT)|(1<<TWEN);
                // we have run out of buffer space
            }

            waitForBusClear()

            if ((TWSR&0xf8) == 0x80||(TWSR&0xf8) == 0x88) && sendAck {
                // the status register indicates a byte was received and either ACKed or NACKed by us
                receiveBuffer[i] = TWDR
            } else {
                // the status register indicates some other condition, this is probably because
                // master sent a STOP, terminating the transmission... break out of the for loop...
                // (or because we ran out of receive buffer to use and we need to stop to avoid a buffer overrun)
                charCount = i
                break
            }
        }

        // bugfix (this will be fixed in 4.8.1 if it works)
        TWCR = (1<<TWINT)|(1<<TWEN)|(1<<TWEA)

        print("received N chars...")
        print(charCount)

        for j in 0..<charCount {
            print(character: receiveBuffer[j])
        }

        // simulate very slow processing from our callback
        delay(ms: 10)

// existing version does this... buggy?
//        // put the slave back to listening for its address
//        TWCR = (1<<TWINT)|(1<<TWEN)|(1<<TWEA)
    }
}
