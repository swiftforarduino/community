import TimerInterrupts

@inlinable
public var timer0OverflowCallback: @convention(c) () -> Void {
    get {
        getTimer0OVFCallback()
    }
    set {
        setTimer0OVFCallback(newValue)
    }
}

@inlinable
public var timer0CompareBCallback: @convention(c) () -> Void {
    get {
        getTimer0COMPBCallback()
    }
    set {
        setTimer0COMPBCallback(newValue)
    }
}

@inlinable
public var timer1CompareBCallback: @convention(c) () -> Void {
    get {
        getTimer1COMPBCallback()
    }
    set {
        setTimer1COMPBCallback(newValue)
    }
}

@inlinable
public var timer1CaptureCallback: @convention(c) () -> Void {
    get {
        getTimer1CAPTCallback()
    }
    set {
        setTimer1CAPTCallback(newValue)
    }
}

@inlinable
public var timer2CompareACallback: @convention(c) () -> Void {
    get {
        getTimer2COMPACallback()
    }
    set {
        setTimer2COMPACallback(newValue)
    }
}

@inlinable
public var timer2CompareBCallback: @convention(c) () -> Void {
    get {
        getTimer2COMPBCallback()
    }
    set {
        setTimer2COMPBCallback(newValue)
    }
}
