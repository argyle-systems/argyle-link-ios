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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.0.1/Argyle.xcframework.zip",
            checksum: "75f78fb26b4533d1665b882c10fb3bcf8ebc144943a16c2e15c98a210b85e069"
        )
    ]
)
