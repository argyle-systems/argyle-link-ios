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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.3.1/Argyle.xcframework.zip",
            checksum: "85af72880f9fce31b80a4c672c8826fcf754fae67144d5721fb2618af3635785"
        )
    ]
)
