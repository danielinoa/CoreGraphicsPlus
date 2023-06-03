//
//  Created by Daniel Inoa on 5/27/23.
//

import CoreGraphics

public extension CGRect {

    // MARK: - Coordinates

    var topY: Double {
        get { minY }
        set { origin.y = newValue }
    }

    var bottomY: Double {
        get { maxY }
        set { origin.y = newValue - height }
    }

    var centerX: Double {
        get { midX }
        set { origin.x = newValue - (width / 2) }
    }

    var centerY: Double {
        get { midY }
        set { origin.y = newValue - (height / 2) }
    }

    var leadingX: Double {
        get { minX }
        set { origin.x = newValue }
    }

    var trailingX: Double {
        get { maxX }
        set { origin.x = newValue - width }
    }

    // MARK: - Anchor Points

    var topLeading: CGPoint {
        get { .init(x: leadingX, y: topY) }
        set {
            var rect = self
            rect.leadingX = newValue.x
            rect.topY = newValue.y
            self = rect
        }
    }

    var top: CGPoint {
        get { .init(x: centerX, y: topY) }
        set {
            var rect = self
            rect.centerX = newValue.x
            rect.topY = newValue.y
            self = rect
        }
    }

    var topTrailing: CGPoint {
        get { .init(x: trailingX, y: topY) }
        set {
            var rect = self
            rect.trailingX = newValue.x
            rect.topY = newValue.y
            self = rect
        }
    }

    var leading: CGPoint {
        get { .init(x: leadingX, y: centerY) }
        set {
            var rect = self
            rect.leadingX = newValue.x
            rect.centerY = newValue.y
            self = rect
        }
    }

    var center: CGPoint {
        get { .init(x: centerX, y: centerY) }
        set {
            var rect = self
            rect.centerX = newValue.x
            rect.centerY = newValue.y
            self = rect
        }
    }

    var trailing: CGPoint {
        get { .init(x: trailingX, y: centerY) }
        set {
            var rect = self
            rect.trailingX = newValue.x
            rect.centerY = newValue.y
            self = rect
        }
    }

    var bottomLeading: CGPoint {
        get { .init(x: leadingX, y: bottomY) }
        set {
            var rect = self
            rect.leadingX = newValue.x
            rect.bottomY = newValue.y
            self = rect
        }
    }

    var bottom: CGPoint {
        get { .init(x: centerX, y: bottomY) }
        set {
            var rect = self
            rect.centerX = newValue.x
            rect.bottomY = newValue.y
            self = rect
        }
    }

    var bottomTrailing: CGPoint {
        get { .init(x: trailingX, y: bottomY) }
        set {
            var rect = self
            rect.trailingX = newValue.x
            rect.bottomY = newValue.y
            self = rect
        }
    }

    // MARK: - Initializers

    /// A CGRect at the `.zero` origin with the specified `size`.
    init(size: CGSize) {
        self = .init(origin: .zero, size: size)
    }

    init(origin: CGPoint, width: CGFloat, height: CGFloat) {
        self.init(x: origin.x, y: origin.y, width: width, height: height)
    }
}
