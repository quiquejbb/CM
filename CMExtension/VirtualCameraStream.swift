import Foundation
import CMIOExtension

class VirtualCameraStream: CMIOExtensionStream {
    override var formatDescription: CMIOExtensionStreamFormatDescription {
        // A fake format description with 1280x720 resolution
        return CMIOExtensionStreamFormatDescription(videoFormat: .init(width: 1280, height: 720, pixelFormatType: kCVPixelFormatType_32BGRA))
    }

    override func startStream() throws {
        print("📷 Starting virtual camera stream")
    }

    override func stopStream() {
        print("📷 Stopping virtual camera stream")
    }
}
