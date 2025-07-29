// swift-tools-version: 6.0
//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import PackageDescription

let package = Package(
  name: "SwiftUI-Adapter",
  platforms: [
    .iOS(.v14)
  ],
  products: [
    .library(
      name: "SwiftUI-Adapter",
      targets: ["SwiftUI-Adapter"]),
  ],
  targets: [
    .target(
      name: "SwiftUI-Adapter"),
    
  ]
)
