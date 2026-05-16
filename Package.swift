// swift-tools-version:6.0
//
//  Package.swift
//  Created by Adrian Bobrowski on 30.04.2017.
//  Copyright © 2017 Adrian Bobrowski (Decybel07), adrian071993@gmail.com. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "L10n-swift",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v10_13), .iOS(.v12), .tvOS(.v12), .watchOS(.v4)
    ],
    products: [
        .library(name: "L10n-swift", targets: ["L10n-swift"]),
    ],
    targets: [
        .target(
            name: "L10n-swift",
            path: "Source",
            exclude: ["L10n_swift.h", "Info.plist"],
            resources: [.process("Core/Plural/Plural.stringsdict")]
        ),
//        .testTarget(
//            name: "L10n-swiftTest",
//            dependencies: ["L10n-swift"],
//            path: "Tests",
//            exclude: ["Info.plist"]
//        ),
    ],
    swiftLanguageModes: [.v6]
)
