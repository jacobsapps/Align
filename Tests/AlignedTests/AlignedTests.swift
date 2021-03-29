import XCTest
@testable import Aligned

final class AlignedTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Aligned().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
