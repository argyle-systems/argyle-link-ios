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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.7.0/Argyle.xcframework.zip",
            checksum: "cd580d42d7af52133bceb64e67feab1856bb2c26ae0f7743f8d93ffc98e92da6"
        )
    ]
)
