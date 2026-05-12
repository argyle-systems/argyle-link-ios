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
            checksum: "5cb70d1b90ddc35ec8ef6e68bb9add235501339ba62c81d239d586380beba318"
        )
    ]
)
