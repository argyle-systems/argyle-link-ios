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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.8.1/Argyle.xcframework.zip",
            checksum: "451d7030569e746bbb4b80873f5726520b6ae09574d01b2f4938b9f15687dac1"
        )
    ]
)
