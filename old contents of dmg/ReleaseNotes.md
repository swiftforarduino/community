# Version 3.0

## API changes

- ticks() has been improved: 32 bit, now ticks roughly once per microsecond instead of twice, torn read protection
- synchronous analog read functions have been renamed to match their asynchronous equivalent, e.g. slowAnalogRead is
now analogReadSync
- you now have constants to refer to the pins by name, use D0-D13 to refer to the digital pins and A0-A5 to refer to
the analog pins to avoid confusion, e.g. you now write pinMode(pin: D4, mode: OUTPUT) to set digital pin 4 for output
and analogReadSync(pin: A2) to perform a (blocking) read of analog pin A2.
- setupTimerIntervalInterruptCallback has a new version that takes Milliseconds for simplicity, this will be the version
most of you will use from now on
- some simple timer2 callbacks are now available, including a lower power sleep mode, waiting on timer 2 that should use
less current than the sleep on timer1
- watchdog functions are now available to ensure program stability if required and a watchdog timer callback
 is available for advanced WDT in low power use

## Simulator

The dummy board on the S4A IDE has been replaced by a simulated board, using simavr as the underlying technology. You
can use this to test simple programs with debug print statements and a simply blinky LED on pin 13 if required.
