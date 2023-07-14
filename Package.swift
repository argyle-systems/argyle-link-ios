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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.2.2/Argyle.xcframework.zip",
            checksum: "6e804b4fbb38c5190c3190f5f549fe88895eba4c65261609ed04a7e3658b1b44"
        )
    ]
)
