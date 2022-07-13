// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ArgyleLink",
    products: [
        .library(
            name: "ArgyleLink",
            targets: ["ArgyleLink"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ArgyleLink",
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/4.3.0/ArgyleLink.xcframework.zip",
            checksum: "87444edc0f5eab554078488e30fcdfdb7bf5b17cfc94acaf6a2d1d05fb67e834"
        )
    ]
)
