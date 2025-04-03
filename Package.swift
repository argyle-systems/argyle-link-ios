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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.14.0/Argyle.xcframework.zip",
            checksum: "d53a529abfb9fc844dddb2b4a9c3521ed217e99893bc3df5ee077e19ab4821af"
        )
    ]
)
