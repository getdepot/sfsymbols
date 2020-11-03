import XCTest
@testable import sfsymbols

final class sfsymbolsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(sfsymbols().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
