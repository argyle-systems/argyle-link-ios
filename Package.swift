// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Argyle",
    products: [
        .library(
            name: "Argyle",
            targets: ["Argyle"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "Argyle",
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.15.2/Argyle.xcframework.zip",
            checksum: "672e841a49a03f8f42f24a3a0656ce16fdb1aaaa38c86e4422674eba22e4e261"
        )
    ]
)
