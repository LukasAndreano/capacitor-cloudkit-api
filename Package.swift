// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorCloudkitApi",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorCloudkitApi",
            targets: ["CapacitorCloudkitAPIPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "CapacitorCloudkitAPIPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/CapacitorCloudkitAPIPlugin"),
        .testTarget(
            name: "CapacitorCloudkitAPIPluginTests",
            dependencies: ["CapacitorCloudkitAPIPlugin"],
            path: "ios/Tests/CapacitorCloudkitAPIPluginTests")
    ]
)
