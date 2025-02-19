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
            checksum: "014d956dab588fce4cf7659db02f1ce72f126ea65491d8efa12c78968cfa366e"
        )
    ]
)
