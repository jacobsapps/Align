import XCTest
import SwiftUI
@testable import Align

final class AlignTests: XCTestCase {

    func testLeft() {
        XCTAssertNotNil(text.align(.left))
    }

    func testCenterX() {
        XCTAssertNotNil(text.align(.centerX))
    }

    func testRight() {
        XCTAssertNotNil(text.align(.right))
    }

    func testTop() {
        XCTAssertNotNil(text.align(.top))
    }

    func testCenterY() {
        XCTAssertNotNil(text.align(.centerY))
    }

    func testBottom() {
        XCTAssertNotNil(text.align(.bottom))
    }

    private var text: some View {
        Text("Hello, world!")
    }
}
