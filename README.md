# CM — macOS Virtual Camera Utility

CM is a macOS utility that implements a basic virtual camera using Apple’s **Camera Extension** and **DriverKit** frameworks.

The goal of this project is to build a notarized, sandbox-compliant virtual camera that can be controlled via a SwiftUI app. It serves as a reference implementation for exploring **secure communication** between a user-facing app and a system extension using Apple's modern APIs.

---

Technologies Used

- **SwiftUI** for the main macOS app interface
- **CMIOExtension** for exposing the virtual camera stream
- **DriverKit** for system extension support
- **SMAppService** for managing privileged helpers securely

---

Disclaimer

This is a technical proof-of-concept project provided for **development and integration purposes only** and is not intended for production use.
