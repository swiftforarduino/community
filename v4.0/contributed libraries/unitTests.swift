import AVR

var currentStats = Stats()

protocol StatInfo {
    func showSummary()
}

struct Stats {
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
    func showSummary() {
        print(message: "Passed:")
        print(unsignedTinyInt: passCount)
        print(message: "Failed:")
        print(unsignedTinyInt: failCount)

        if failCount > 0 {
            print(message: "** THERE WERE TEST FAILURES **")
        }
    }
}

func expect(_ test: @autoclosure () -> Bool, _ message: StaticString = "test failed", _ line: UInt = #line) {
    if test() {
        currentStats.passed()
    } else {
        currentStats.failed(message: message, line: line)
    }
}

func expect<T: Comparable>(_ actual: T, _ expected: T, _ message: StaticString = "test failed", _ line: UInt = #line) {
    if actual == expected {
        currentStats.passed()
    } else {
        currentStats.failed(message: message, line: line)
    }
}

func printStart(_ startMessage: StaticString = "tests started") {
  print(startMessage)
}

func printSummary() {
  print("tests finished")
  currentStats.showSummary()
}

let i1: Int64 = 95
let i2: Int64 = 54
let i3: Int64 = 9
let i4: Int64 = 99
let i5: Int64 = 7
let i6: Int64 = 46

// same for uint8
let ui1: UInt64 = 94
let ui2: UInt64 = 53
let ui3: UInt64 = 7
let ui4: UInt64 = 98
let ui5: UInt64 = 7
let ui6: UInt64 = 46

