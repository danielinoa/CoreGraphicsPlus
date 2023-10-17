//
//  Created by Daniel Inoa on 10/17/23.
//

import CoreGraphics
import SwiftPlus

public extension Math {

    /// Returns the CGPoint corresponding to the proportion within the specified range.
    /// - note: This is also known as Linear Interpolation or Lerp.
    static func interpolate(proportion: Double, from start: CGPoint, to end: CGPoint) -> CGPoint {
        .init(
            x: interpolate(proportion: proportion, from: start.x, to: end.x),
            y: interpolate(proportion: proportion, from: start.y, to: end.y)
        )
    }

    /// Returns the CGSize corresponding to the proportion within the specified range.
    /// - note: This is also known as Linear Interpolation or Lerp.
    static func interpolate(proportion: Double, from start: CGSize, to end: CGSize) -> CGSize {
        .init(
            width: interpolate(proportion: proportion, from: start.width, to: end.width),
            height: interpolate(proportion: proportion, from: start.height, to: end.height)
        )
    }

    /// Returns the CGRect corresponding to the proportion within the specified range.
    /// - note: This is also known as Linear Interpolation or Lerp.
    static func interpolate(proportion: Double, from start: CGRect, to end: CGRect) -> CGRect {
        .init(
            origin: interpolate(proportion: proportion, from: start.origin, to: end.origin),
            size: interpolate(proportion: proportion, from: start.size, to: end.size)
        )
    }
}
