// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "InstallTimePlugin",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "InstallTimePlugin",
            targets: ["InstallTimePlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "InstallTimePlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/InstallTimePlugin"),
        .testTarget(
            name: "InstallTimePluginTests",
            dependencies: ["InstallTimePlugin"],
            path: "ios/Tests/InstallTimePluginTests")
    ]
)