// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "SwiftDate",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v10_10), .iOS(.v11), .watchOS(.v2), .tvOS(.v9)
    ],
    products: [
        .library(name: "SwiftDate", targets: ["SwiftDate"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftDate",
            dependencies: [],
			resources: [
				.copy("Formatters/RelativeFormatter/langs")
			]),
        .testTarget(
            name: "SwiftDateTests",
            dependencies: ["SwiftDate"])
    ]
)
