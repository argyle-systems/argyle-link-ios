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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.2.3/Argyle.xcframework.zip",
            checksum: "f15113ac44248cf539c7d4ca8a4ff4ed0811e39214618c020b6a5f4068405e18"
        )
    ]
)
