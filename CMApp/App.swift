import SwiftUI

@main
struct CMApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Camera Overlay Utility")
                .font(.headline)
            Text("This app uses Apple's Camera Extension APIs to create a virtual camera.")
                .font(.subheadline)
                .padding()
        }
        .frame(width: 400, height: 200)
    }
}
