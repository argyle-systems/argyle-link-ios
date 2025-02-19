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
            checksum: "a4b2168b133646b34c03dbd66982227f984915ce777956a1b7c8e49bdb784418"
        )
    ]
)
