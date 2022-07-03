// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MarkdownQueries",
    products: [
        .library(
            name: "MarkdownQueries",
            targets: ["MarkdownQueries"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "MarkdownQueries",
            resources: [.copy("queries")]),
        .testTarget(
            name: "MarkdownQueriesTests",
            dependencies: ["MarkdownQueries"]),
    ]
)
