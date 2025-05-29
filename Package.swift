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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.15.0/Argyle.xcframework.zip",
            checksum: "c4d0257d9967b25de47bf461362f832cb94052e900ddd7bf44d5b24201bbcbe9"
        )
    ]
)
