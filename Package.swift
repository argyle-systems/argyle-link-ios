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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.10.1/Argyle.xcframework.zip",
            checksum: "aadaedcdb952d35b383a88e6bea1c6d1f5b87725e64c05a5095ad3f7400d9487"
        )
    ]
)
