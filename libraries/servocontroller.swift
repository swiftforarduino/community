// Author: Mark Oxley
// Date: 26/11/2020
// IDE Version: 4.2
// Description: This library uses Timer1 based interrupt callback functions to
// control a number of servos, giving angles between 0 and 180 degrees.
// If more a servo is added when the capacity has been reached, addServo will return nil.
// Any angle set outside of the range of the servo will be clipped.
// To use:
//    Setup the servo controller
//    Add servos with initial angle and maximum range and offset if required
//    Set the angle to your servos


import AVR

/* Snippets:
 {
        "ServoController":[

            {"partName":"Start servo controller. The capacity denotes the number of servers to be controlled",
                "partCode":"SetupServos(capacity:3)"
            },
            { "partName": "Add a servo to the controller",
                "partCode": "let id = addServo(pin:D5, angle:90)"
            },
            {"partName":"Add a servo to the controller with a 90 degree arc",
                "partCode":"let id = addServo(pin:D5, angle:90, max:90)"
            },
            {"partName":"Add a servo to the controller with a 90 degree arc and an offset of 45 degrees",
                "partCode":"let id = addServo(pin:D5, angle:90, max:90, offset:45)"
            },
            {"partName":"Set the angle of a servo, based on the index returned by addServo",
            	"partCode":"let id = addServo(pin:D6, angle:45)\nsetServoAngle(id, angle:60)"}
        ]
 }
 */
 
private struct Servo {
    var pin:UInt8 = 0
    var angle:UInt8 = 0
    var offset:UInt8 = 0
    var max:UInt8 = 0
    var time:UInt16 = 0
}

private var servos = [Servo]()
public private(set) var servoCount:UInt8 = 0

func SetupServos(capacity:UInt8) {
    servos = [Servo](repeating: Servo(), count:Int(capacity))
    executeAsync(after: 20, repeats: true) {
        servoPulseSignal()
    }
}

func addServo(pin:UInt8, angle:UInt8, max:UInt8 = 180, offset:UInt8 = 0) -> UInt8? {
    if servoCount >= servos.count {
    	return nil
    }
    servos[Int(servoCount)].pin = pin
    servos[Int(servoCount)].time = 0
    servos[Int(servoCount)].max = max
    servos[Int(servoCount)].offset = offset
    pinMode(pin: pin, mode: OUTPUT)
    servoCount += 1
    setServoAngle(servoCount - 1, angle: angle)
    return servoCount - 1
}

func setServoAngle(_ index:UInt8, angle: UInt8) {
    var adjustedAngle = angle
    if adjustedAngle > servos[Int(index)].max {
        adjustedAngle = servos[Int(index)].max
    }
    servos[Int(angle)].angle = adjustedAngle
    let offset = servos[Int(index)].offset
    servos[Int(index)].time = (UInt16(adjustedAngle + offset) &* 12) &+ 100
}


private func servoPulseSignal() {
    for i in 0 ..< Int(servoCount) {
        let s = servos[i]
        digitalWrite(pin: s.pin, value: HIGH)
        delay(us: servos[i].time)
        digitalWrite(pin: s.pin, value: LOW)
    }
}
