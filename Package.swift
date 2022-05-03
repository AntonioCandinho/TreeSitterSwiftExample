// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TreeSitterSwiftExample",
    products: [
        .executable(
            name: "TreeSitterSwiftExample",
            targets: ["TreeSitterSwiftExample"]
        ),
    ],
    dependencies: [
        .package(url: "git@github.com:AntonioCandinho/tree-sitter.git", branch: "add-swift-package-manager-support"),
    ],
    targets: [
        .executableTarget(
            name: "TreeSitterSwiftExample",
            dependencies: [
                .product(name: "TreeSitter", package: "tree-sitter"),
            ]
        ),
    ]
)
