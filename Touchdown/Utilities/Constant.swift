//
//  Constant.swift
//  Touchdown
//
//  Created by Visarut Tippun on 21/3/22.
//

import SwiftUI

let players: [Player] = Decoder.decode("player.json")
let brands: [Brand] = Decoder.decode("brand.json")
let categories: [Category] = Decoder.decode("category.json")
let products: [Product] = Decoder.decode("product.json")

let sampleProduct = products.first!

let colorBackground = Color("ColorBackground")
let colorGray = Color(UIColor.systemGray4)

let rowSpacing: CGFloat = 10
let columnSpacing: CGFloat = 10

var gridLayout: [GridItem] {
    return Array(repeating: .init(.flexible(), spacing: rowSpacing), count: 2)
}

let feedback = UIImpactFeedbackGenerator(style: .medium)
