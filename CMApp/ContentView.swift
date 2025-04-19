import SwiftUI

@main
struct CMApp: App {
    var body: some Scene {
        MenuBarExtra("CM", systemImage: "camera.fill") {
            Button("Toggle Virtual Camera") {
                print("Toggle clicked")
            }
            Divider()
            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }
        }
    }
}
