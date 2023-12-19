# FootprintSwift

## Requirements

- iOS 13.0 or later
- Swift 5.0 or later

## Installation

### Swift Package Manager

You can use The Swift Package Manager to install FootprintSwift by adding it to your project's Package.swift file:

```swift
import PackageDescription

let package = Package(
    name: "YourProject",
    dependencies: [
        .package(url: "https://github.com/onefootprint/footprint-swift", from: "0.0.1")
    ],
    targets: [
        .target(
            name: "YourTarget",
            dependencies: ["FootprintSwift"])
    ]
)
```

## Usage

To use FootprintSwift, you first need to import it and then configure it as shown in the examples below.

```swift
import FootprintSwift

let config = FootprintConfiguration(
    publicKey: "yourPublicKey",
    scheme: "yourScheme",
    onCancel: {
        // Handle dismiss
    },
    onComplete: { validationToken in
        // Handle completion with validation token
    }
)
Footprint.initialize(with: config)
```

## License

FootprintSwift is available under the MIT license. See the LICENSE file for more info.
