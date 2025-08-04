// swift-tools-version: 6.0
//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import PackageDescription

let package = Package(
  name: "SwiftUIAdapter",
  platforms: [
    .iOS(.v14),
    .macOS(.v11)
  ],
  products: [
    .library(
      name: "SwiftUIAdapter",
      targets: ["SwiftUIAdapter"]),
  ],
  targets: [
    .target(
      name: "SwiftUIAdapter"),
    
  ]
)
