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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.0.0-beta1/Argyle.xcframework.zip",
            checksum: "fb32cd071d12518f0899389b22b4146ea04153b99a4dedfd5e9b543d24b777cc"
        )
    ]
)
