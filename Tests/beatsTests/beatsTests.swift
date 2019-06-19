import XCTest
@testable import beats

final class beatsTests: XCTestCase {
    func testInt() {
        let date = Date(timeIntervalSince1970: 1560486779)
        XCTAssertEqual(beats(date: date).int(), 231)
    }

    func testString() {
        
        let date = Date(timeIntervalSince1970: 1560470079)
        XCTAssertEqual(beats(date: date).string(), "@037")
    }

    static var allTests = [
        ("testInt", testInt),
        ("testString", testString),
    ]
}
