// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "libPhoneNumber",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(
            name: "libPhoneNumber",
            targets: ["libPhoneNumber"]
        )
    ],
    targets: [
        .target(
            name: "libPhoneNumber",
            path: "libPhoneNumber",
            exclude: ["GeneratePhoneNumberHeader.sh", "NBPhoneNumberMetadata.plist", "Info.plist"],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("Internal")
            ],
            linkerSettings: [
                .linkedFramework("CoreTelephony", .when(platforms: [.iOS, .macOS, .macCatalyst])),
            ]
        )
    ]
)
