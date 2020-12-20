// Author: Mark Oxley
// Date: 24/11/2020
// IDE Version: 4.2
// Description: This library allows you to read the number of ticks of a pulse return.
// If no pulse is returned, then nil is returned.
// As this relies on ticks, it is not accurate enough for anything more than obstacle detection.
// When using Ultrasonic, a pulse takes approximately 1 tick to travel 160 mm (80 mm there and 80 mm back).

import AVR

/* Snippets:
 {
        "pulseIn":[
            {"partName":"Read pulse",
                "partCode":"let time = pulseIn(pin: D3, timeout: 300)"
            }
        ],
 }

 */

func pulseIn(pin: Pin, timeout: UInt32 = 500) -> UInt16? {
    let start = ticks()
    let end = start + timeout
    while !digitalRead(pin: pin), ticks() < end {}
    if !digitalRead(pin: pin) {
        return nil // No pulse, so no distance
    }
    let pulseStart = ticks()
    while digitalRead(pin: pin), ticks() < end {}
    if digitalRead(pin: pin) {
        return nil // On periphery, so no distance
    }
    let pulseEnd = ticks()
    return UInt16(pulseEnd - pulseStart)
}
