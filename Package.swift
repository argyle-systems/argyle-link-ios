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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.12.0/Argyle.xcframework.zip",
            checksum: "187f2184ff23842ac90e8c0777e9190e799dc5e8bb0c8e2754377f59d8dc67db"
        )
    ]
)
