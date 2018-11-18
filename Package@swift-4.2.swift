// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "CClutterGtk",
    products: [
        .library(name: "CClutterGtk",
                 targets: ["CClutterGtk"])
    ],
    targets: [
        .systemLibrary(
            name: "CClutterGtk",
            pkgConfig: "clutter-gdk-1.0",
            providers: [
                .brew(["libclutter-gtk-1.0-0"]),
                .apt(["libclutter-gtk-1.0-0"])
            ]
        )
    ],
    swiftLanguageVersions: [
        .v4_2,
        .version("5")
    ]
)
