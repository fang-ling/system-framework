// swift-tools-version: 6.3

//===----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------===//
//
//  Package.swift
//  system-framework
//
//  Created by Fang Ling on 2026/11/1.
//
//  This source file is part of the SystemFramework open source project
//
//  Copyright (c) 2026 Fang Ling <fangling@fangl.ing>
//  Licensed under Apache License v2.0
//
//  See LICENSE for license information
//
//  SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------===//

import PackageDescription

let package = Package(
  name: "system-framework",
  products: [
    .library(name: "SystemFramework", targets: ["SystemFramework"])
  ],
  dependencies: [
    .package(path: "../c-framework"),
    .package(path: "../objective-c-framework")
  ],
  targets: [
    .target(
      name: "SystemFramework",
      dependencies: [
        .product(name: "CFramework", package: "c-framework"),
        .product(name: "ObjectiveCFramework", package: "objective-c-framework")
      ],
      publicHeadersPath: "Includes"
    )
  ]
)
