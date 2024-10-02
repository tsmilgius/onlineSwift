import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = MouseMoverViewModel()

    var body: some View {
        VStack {
            Text("Mouse Mover")
                .font(.largeTitle)
                .padding()

            Button(action: {
                viewModel.startMovingCursor()
            }) {
                Text("Start Moving Cursor")
            }
            .padding()

            Button(action: {
                viewModel.stopMovingCursor()
            }) {
                Text("Stop Moving Cursor")
            }
            .padding()
        }
        .frame(width: 300, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
