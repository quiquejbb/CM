import Foundation
import CMIOExtension
import AVFoundation

class VirtualCameraStream: CMIOExtensionStream {
    private var timer: Timer?

    override var formatDescription: CMIOExtensionStreamFormatDescription {
        return CMIOExtensionStreamFormatDescription(
            videoFormat: .init(width: 1280, height: 720, pixelFormatType: kCVPixelFormatType_32BGRA)
        )
    }

    override func startStream() throws {
        print("📷 Starting virtual camera stream")

        timer = Timer.scheduledTimer(withTimeInterval: 1.0 / 30.0, repeats: true) { _ in
            print("📦 Sending fake frame at \(Date())")
        }

        RunLoop.current.add(timer!, forMode: .common)
    }

    override func stopStream() {
        print("📷 Stopping virtual camera stream")
        timer?.invalidate()
        timer = nil
    }
}
