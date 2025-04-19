import CMIOExtension

class VirtualCameraProvider: CMIOExtensionProvider {
    override func connect(to client: CMIOExtensionClient) throws {
        print("Client connected: \(client)")
    }
    
    override func disconnect(from client: CMIOExtensionClient) {
        print("Client disconnected: \(client)")
    }
}
