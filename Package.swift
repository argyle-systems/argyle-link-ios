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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.4.0/Argyle.xcframework.zip",
            checksum: "c4f2580d49124712ee24c9bd283c377a7a50a6a2a3da03d8675b99105a8163ba"
        )
    ]
)
