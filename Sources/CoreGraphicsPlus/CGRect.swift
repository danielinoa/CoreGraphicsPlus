//
//  Created by Daniel Inoa on 5/27/23.
//

import CoreGraphics

extension CGRect {

    // MARK: - Coordinates

    public var topY: Double {
        get { minY }
        set { origin.y = newValue }
    }

    public var bottomY: Double {
        get { maxY }
        set { origin.y = newValue - height }
    }

    public var centerX: Double {
        get { midX }
        set { origin.x = newValue - (width / 2) }
    }

    public var centerY: Double {
        get { midY }
        set { origin.y = newValue - (height / 2) }
    }

    public var leadingX: Double {
        get { minX }
        set { origin.x = newValue }
    }

    public var trailingX: Double {
        get { maxX }
        set { origin.x = newValue - width }
    }

    // MARK: - Anchor Points

    public var topLeading: CGPoint {
        get { .init(x: leadingX, y: topY) }
        set {
            var rect = self
            rect.leadingX = newValue.x
            rect.topY = newValue.y
            self = rect
        }
    }

    public var top: CGPoint {
        get { .init(x: centerX, y: topY) }
        set {
            var rect = self
            rect.centerX = newValue.x
            rect.topY = newValue.y
            self = rect
        }
    }

    public var topTrailing: CGPoint {
        get { .init(x: trailingX, y: topY) }
        set {
            var rect = self
            rect.trailingX = newValue.x
            rect.topY = newValue.y
            self = rect
        }
    }

    public var leading: CGPoint {
        get { .init(x: leadingX, y: centerY) }
        set {
            var rect = self
            rect.leadingX = newValue.x
            rect.centerY = newValue.y
            self = rect
        }
    }

    public var center: CGPoint {
        get { .init(x: centerX, y: centerY) }
        set {
            var rect = self
            rect.centerX = newValue.x
            rect.centerY = newValue.y
            self = rect
        }
    }

    public var trailing: CGPoint {
        get { .init(x: trailingX, y: centerY) }
        set {
            var rect = self
            rect.trailingX = newValue.x
            rect.centerY = newValue.y
            self = rect
        }
    }

    public var bottomLeading: CGPoint {
        get { .init(x: leadingX, y: bottomY) }
        set {
            var rect = self
            rect.leadingX = newValue.x
            rect.bottomY = newValue.y
            self = rect
        }
    }

    public var bottom: CGPoint {
        get { .init(x: centerX, y: bottomY) }
        set {
            var rect = self
            rect.centerX = newValue.x
            rect.bottomY = newValue.y
            self = rect
        }
    }

    public var bottomTrailing: CGPoint {
        get { .init(x: trailingX, y: bottomY) }
        set {
            var rect = self
            rect.trailingX = newValue.x
            rect.bottomY = newValue.y
            self = rect
        }
    }

    // MARK: - Initializers

    init(size: CGSize) {
        self = .init(origin: .zero, size: size)
    }
}
