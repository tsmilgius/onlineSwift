import Foundation

class MouseMoverViewModel: ObservableObject {
    private var mouseMover = MouseMover()
    private var timer: Timer?

    func startMovingCursor() {
        timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { [weak self] _ in
            self?.mouseMover.moveCursor()
        }
    }

    func stopMovingCursor() {
        timer?.invalidate()
        timer = nil
    }
}
