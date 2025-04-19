import Foundation
import CMIOExtension

class VirtualCameraProvider: CMIOExtensionProvider {
    private var connectedClients: Set<CMIOExtensionClient> = []
    private var activeStreams: Set<CMIOExtensionStream> = []

    override func connect(to client: CMIOExtensionClient) throws {
        connectedClients.insert(client)
        print("📷 Client connected: \(client)")
    }

    override func disconnect(from client: CMIOExtensionClient) {
        connectedClients.remove(client)
        print("📷 Client disconnected: \(client)")
    }

    override var availableStreamIDs: [CMIOExtensionStream.ID] {
        return [CMIOExtensionStream.ID("VirtualCameraStream")]
    }

    override func stream(withID streamID: CMIOExtensionStream.ID) -> CMIOExtensionStream? {
        guard streamID.rawValue == "VirtualCameraStream" else { return nil }
        return VirtualCameraStream(streamID: streamID)
    }

    override func startStream(for stream: CMIOExtensionStream) throws {
        print("🎬 Starting stream: \(stream.streamID.rawValue)")
        activeStreams.insert(stream)
        

    }

    override func stopStream(for stream: CMIOExtensionStream) throws {
        print("🛑 Stopping stream: \(stream.streamID.rawValue)")
        activeStreams.remove(stream)
    }
}
