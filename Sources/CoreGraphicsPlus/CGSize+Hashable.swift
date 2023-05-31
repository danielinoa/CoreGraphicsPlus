//
//  Created by Daniel Inoa on 5/30/23.
//

import CoreGraphics

extension CGSize: Hashable {

    public func hash(into hasher: inout Hasher) {
        hasher.combine(width)
        hasher.combine(height)
    }
}
