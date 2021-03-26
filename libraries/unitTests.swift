import AVR

private var currentStats = Stats()

private protocol StatInfo {
    func showSummary()
}

private struct Stats {
    var passCount = 0
    var failCount = 0

    mutating func passed() {
        passCount += 1
        print("PASS")
    }

    mutating func failed(message: StaticString, line: UInt) {
        failCount += 1
        print("FAIL:")
        print(message)
        print(line)
    }
}

extension Stats: StatInfo {
    fileprivate func showSummary() {
        print(message: "Passed:")
        print(unsignedTinyInt: passCount)
        print(message: "Failed:")
        print(unsignedTinyInt: failCount)

        if failCount > 0 {
            print(message: "** THERE WERE TEST FAILURES **")
        }
    }
}

/// run this at the start of your tests, passing a message like "ALU 8 bit logic tests"
func printStart(_ testDescription: StaticString) {
  print(testDescription)
  print("tests started")
}

/// run this at the end of your tests, to show a summary of passes and failures
func printSummary() {
  print("tests finished")
  currentStats.showSummary()
}

/// use this to indicate a logic path that cannot happen in well behaving code
func expectFail(_ message: StaticString = "test failed", _ line: UInt = #line) {
}

/// use this to create a generalised assertion of an expression
func expect(_ test: @autoclosure () -> Bool, _ message: StaticString = "test failed", _ line: UInt = #line) {
    if test() {
        currentStats.passed()
    } else {
        currentStats.failed(message: message, line: line)
    }
}

/// use this to assert equality of two matching types
func expect<T: Comparable>(_ actual: T, _ expected: T, _ message: StaticString = "test failed", _ line: UInt = #line) {
    if actual == expected {
        currentStats.passed()
    } else {
        currentStats.failed(message: message, line: line)
    }
}

/// use this to assert non equality of two matching types
func expectNotEqual<T: Comparable>(_ actual: T, _ expected: T, _ message: StaticString = "test failed", _ line: UInt = #line) {
    if actual != expected {
        currentStats.passed()
    } else {
        currentStats.failed(message: message, line: line)
    }
}

// these two methods are for testing string buffers against expected constants
func expect(_ actual: AVRStringBuffer, _ expected: StaticString, _ message: StaticString = "test failed", _ line: UInt = #line) {
    let length = max(Int(actual.currentLength), expected.utf8CodeUnitCount)

    expected.utf8Start.withMemoryRebound(to: Int8.self, capacity: length) { ptr in
        if __stringCompareForTesting(expected: ptr, actual: actual.currentValue, actualLength: UInt8(length)) {
          currentStats.passed()
        } else {
          currentStats.failed(message: message, line: line)
        }
    }
}

func expect(_ actual: CString, _ expected: AVRString, length currentLength: UInt, _ message: StaticString = "test failed", _ line: UInt = #line) {
    if __stringCompareForTesting(expected:expected, actual: actual, actualLength: UInt8(currentLength)) {
      currentStats.passed()
    } else {
      currentStats.failed(message: message, line: line)
    }
}
