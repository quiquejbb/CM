import Foundation
import CMIOExtension

class VirtualCameraProvider: CMIOExtensionProvider {
    private var connectedClients: Set<CMIOExtensionClient> = []

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
}
