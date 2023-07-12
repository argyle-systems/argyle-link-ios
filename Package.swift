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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.2.0/Argyle.xcframework.zip",
            checksum: "29f4df05464f5965397f13811cfcffa82e635c17be82b5c30c44b8e7cbd153eb"
        )
    ]
)
