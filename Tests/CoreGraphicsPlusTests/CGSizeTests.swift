//
//  Created by Daniel Inoa on 5/28/23.
//

import XCTest
@testable import CoreGraphicsPlus

final class CGSizeTests: XCTestCase {

    func testSquareConvenienceInitializer() {
        let square = CGSize.square(10)
        XCTAssertEqual(square, .init(width: 10, height: 10))
    }
}
