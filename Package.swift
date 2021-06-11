// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Nimble_Snapshots",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "Nimble_Snapshots",
            targets: ["Nimble_Snapshots"]),
    ],
    dependencies: [
        .package(name: "FBSnapshotTestCase", url: "https://github.com/alanzeino/ios-snapshot-test-case.git", .upToNextMajor(from: Version(6, 2, 1))),
        .package(name: "Nimble", url: "https://github.com/quick/nimble.git", .upToNextMajor(from: Version(9, 2, 0))),
    ],
    targets: [
        .target(
            name: "Nimble_Snapshots-Swift-Core"),
        .target(
            name: "Nimble-Snapshots-Core",
            dependencies: ["Nimble_Snapshots-Swift-Core"]),
        .target(
            name: "Nimble_Snapshots",
            dependencies: [
                "Nimble-Snapshots-Core",
                "Nimble",
                "FBSnapshotTestCase",
            ]
        ),
    ]
)
