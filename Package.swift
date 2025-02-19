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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.13.0/Argyle.xcframework.zip",
            checksum: "f5deca9677d085b973066ed1cdcf32857b28a588c976bdfacaf8427b4737744b"
        )
    ]
)
