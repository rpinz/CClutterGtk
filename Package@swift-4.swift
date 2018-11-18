// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "CClutterGtk",
    pkgConfig: "clutter-gdk-1.0",
    providers: [
        .apt(["libclutter-gtk-1.0-0"])
    ],
    swiftLanguageVersions: [4]
)
