// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let baseName = "Charts"
let packageName = "\(baseName)Package"
let libraryName = "\(baseName)Library"
let targetName = "\(baseName)_\(4_0_1)"

let package = Package(
    name: packageName,
    platforms: [
          .iOS(.v9),
          .tvOS(.v9),
          .macOS(.v10_11),
    ],
    products: [
        .library(
            name: libraryName,
            targets: [targetName])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms", from: "0.0.1")
    ],
    targets: [
        .target(
            name: targetName,
            dependencies: [.product(name: "Algorithms", package: "swift-algorithms")],
            path: "Source/\(baseName)"
        )
    ],
    swiftLanguageVersions: [.v5]
)
