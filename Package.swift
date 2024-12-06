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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.11.1/Argyle.xcframework.zip",
            checksum: "0f040ebe8def420b64fcc9792566d42d8e2f6dcbcd3aeb9da4379a29ab48072d"
        )
    ]
)
