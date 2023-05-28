//
//  Created by Daniel Inoa on 5/27/23.
//

import CoreGraphics

extension CGSize: Hashable {

    public static func square(_ length: CGFloat) -> CGSize {
        .init(width: length, height: length)
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(width)
        hasher.combine(height)
    }
}
