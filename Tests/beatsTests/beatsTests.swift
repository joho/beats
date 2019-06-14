import XCTest
@testable import beats

final class beatsTests: XCTestCase {
    func testAtUnix() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(beats().atUnix(unixTime: 1560486779), 231)
    }

    static var allTests = [
        ("testAtUnix", testAtUnix),
    ]
}
