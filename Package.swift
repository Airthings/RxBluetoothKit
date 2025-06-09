// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxBluetoothKit_Airthings",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v10_13), .iOS(.v12), .tvOS(.v12), .watchOS(.v4)
    ],
    products: [
        .library(name: "RxBluetoothKit_Airthings", targets: ["RxBluetoothKit_Airthings"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMinor(from: "6.9.0"))
    ],
    targets: [
        .target(
                name: "RxBluetoothKit_Airthings",
                dependencies: [
                    "RxSwift"
                ],
                path: ".",
                exclude: [
                    "Example",
                    "Tests",
                    "Source/Info.plist",
                    "Source/RxBluetoothKit.h"
                ],
                sources: [
                    "Source"
                ],
                swiftSettings: [
                    .enableExperimentalFeature("StrictConcurrency")
                ]
            )
    ]
)
