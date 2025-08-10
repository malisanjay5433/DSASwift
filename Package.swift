// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DSA-Swift",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DSA-Swift",
            targets: ["DSA-Swift", "Array"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DSA-Swift",
            dependencies: []),
		.target(
			name: "Array",
			dependencies: []),
        .testTarget(
            name: "DSA-SwiftTests",
            dependencies: ["DSA-Swift", "Array"]),
    ]
)
