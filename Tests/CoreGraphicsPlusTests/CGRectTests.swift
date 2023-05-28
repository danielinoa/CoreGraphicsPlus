import XCTest
@testable import CoreGraphicsPlus

final class CGRectTests: XCTestCase {

    // MARK: - Coordinates Tests

    func testRectLeadingX() {
        let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
        XCTAssertEqual(rect.leadingX, 0)
    }

    func testRectLeadingXAtNonZeroOrigin() {
        let rect = CGRect(x: 5, y: 5, width: 100, height: 100)
        XCTAssertEqual(rect.leadingX, 5)
    }

    func testSettingRectLeadingX() {
        var rect = CGRect(x: 0, y: 0, width: 100, height: 100)
        rect.leadingX = 10
        let expected = CGRect(x: 10, y: 0, width: 100, height: 100)
        XCTAssertEqual(rect, expected)
    }

    func testSettingRectCenterX() {
        var rect = CGRect(x: 0, y: 0, width: 100, height: 100)
        rect.centerX = 50
        let expected = CGRect(x: 0, y: 0, width: 100, height: 100)
        XCTAssertEqual(rect, expected)
    }

    func testSettingRectCenterXSetAtZero() {
        var rect = CGRect(x: 100, y: 0, width: 100, height: 100)
        rect.centerX = 0
        let expected = CGRect(x: -50, y: 0, width: 100, height: 100)
        XCTAssertEqual(rect, expected)
    }

    func testRectTrailingX() {
        var rect = CGRect(x: 0, y: 0, width: 100, height: 100)
        rect.trailingX = 0
        let expected = CGRect(x: -100, y: 0, width: 100, height: 100)
        XCTAssertEqual(rect, expected)
    }

    // MARK: - Anchor Points Tests

    func testRectTopLeading() {
        let rect = CGRect(x: 5, y: 5, width: 100, height: 100)
        XCTAssertEqual(rect.topLeading, .init(x: 5, y: 5))
    }

    func testRectTop() {
        let rect = CGRect(x: 5, y: 5, width: 100, height: 100)
        XCTAssertEqual(rect.top, .init(x: 55, y: 5))
    }

    func testRectTopTrailing() {
        let rect = CGRect(x: 5, y: 5, width: 100, height: 100)
        XCTAssertEqual(rect.topTrailing, .init(x: 105, y: 5))
    }

    func testRectLeading() {
        let rect = CGRect(x: 5, y: 5, width: 100, height: 100)
        XCTAssertEqual(rect.leading, .init(x: 5, y: 55))
    }

    func testRectCenter() {
        let rect = CGRect(x: 5, y: 5, width: 100, height: 100)
        XCTAssertEqual(rect.center, .init(x: 55, y: 55))
    }

    func testRectTrailing() {
        let rect = CGRect(x: 5, y: 5, width: 100, height: 100)
        XCTAssertEqual(rect.trailing, .init(x: 105, y: 55))
    }

    func testRectBottomLeading() {
        let rect = CGRect(x: 5, y: 5, width: 100, height: 100)
        XCTAssertEqual(rect.bottomLeading, .init(x: 5, y: 105))
    }

    func testRectBottom() {
        let rect = CGRect(x: 5, y: 5, width: 100, height: 100)
        XCTAssertEqual(rect.bottom, .init(x: 55, y: 105))
    }

    func testRectBottomTrailing() {
        let rect = CGRect(x: 5, y: 5, width: 100, height: 100)
        XCTAssertEqual(rect.bottomTrailing, .init(x: 105, y: 105))
    }
}
