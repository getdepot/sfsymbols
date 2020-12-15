import XCTest
@testable import SFSymbolicator

final class sfsymbolsTests: XCTestCase {
    func testCategoryCount() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertGreaterThan(SFSymbolicator().Categories().count, 5)
    }

    static var allTests = [
        ("testCategoryCount", testCategoryCount),
    ]
}
