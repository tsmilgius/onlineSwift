import Foundation
import AppKit
import CoreGraphics

class MouseMover {
    func moveCursor() {
        let currentLocation = NSEvent.mouseLocation
        let newLocation = CGPoint(x: currentLocation.x + 1, y: currentLocation.y)
        CGWarpMouseCursorPosition(newLocation)
    }
}

