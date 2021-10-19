import AVR
import libc

let SDA = 18
let SCL = 19

let indicator = 13

let slaveAddress = 0x46

func waitForBusClear() {
    // TWINT bit == 1 means TWI hardware is idle, last function was complete
    digitalWrite(pin: indicator, value: TWCR&(1<<TWINT) == 0)
    while ((TWCR&(1<<TWINT))==0) {}
    digitalWrite(pin: indicator, value: TWCR&(1<<TWINT) == 0)
}

func waitForBusClear(withTimeout t: UInt32) -> Bool {
    let t0 = ticks()
    var (timeoutTicks, overflow) = t0.addingReportingOverflow(t)

    if overflow {
        timeoutTicks = t - (UInt32.max - t0)
    }

    // TWINT bit == 0 means TWI hardware is idle
    while ((TWCR&(1<<TWINT))==0&&ticks()<timeoutTicks) {}
    return TWCR&(1<<TWINT) == 1
}

pinMode(pin: indicator, mode: OUTPUT)

SetupSerial()

digitalWrite(pin: SDA, value: HIGH)
digitalWrite(pin: SCL, value: HIGH)

print("starting...")

// switch on I2C and set it up with standard parameters
TWBR = 0x47
TWSR = 0
TWCR = 1<<TWEN

func sendTransmission(str: StaticString) {
    print("sending:")
    print(str)
    // issue a start and trigger TWI to act on it
    TWCR = (1<<TWINT)|(1<<TWSTA)|(1<<TWEN)

    waitForBusClear()

    // address slave for WRITE
    TWDR = slaveAddress<<1
    // we need to reset all bits except TWEN
    // in particular the TWSTA bit must be reset or it will keep attempting (re)starts
    // also, note in order to reset TWINT...
    // (i.e. to tell TWI that the application software has completed and is handing control
    // of TWI back to the hardware, you need to write 1 to TWINT (counterintuitively)
    TWCR = (1<<TWINT)|(1<<TWEN)

    waitForBusClear()

    for char in str {
        TWDR = char
        TWCR |= 1<<TWINT // reset TWINT... all other bits are still OK
        waitForBusClear()
    }

    // send stop
    TWCR = (1<<TWINT)|(1<<TWSTO)|(1<<TWEN)
    // bizarrely, stop is the only case where TWINT does not indicate completion
    // instead the TWSTO bit is automatically cleared in TWCR when the stop has been transmitted!
    while (TWCR&(1<<TWSTO))==1 {}
    print("stop sent")
    
//    let cleared = waitForBusClear(withTimeout: 100)
//    print(cleared ? "sent (cleared)" : "send (timed out)")
}

sendTransmission(str: "Hello, World!...")
sendTransmission(str: "Nice to meet you!...")
sendTransmission(str: "See you around!")

print("complete.")
