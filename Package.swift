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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.7.1/Argyle.xcframework.zip",
            checksum: "30932ea12622c920f5f84e41b722fe80eabd6e4ec238691f7cd0bb2867a6322a"
        )
    ]
)
