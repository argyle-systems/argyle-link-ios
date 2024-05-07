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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.7.2/Argyle.xcframework.zip",
            checksum: "8a0466d56625a0407d0734634b55b68003a62019d319b215dcdfa117471db068"
        )
    ]
)
