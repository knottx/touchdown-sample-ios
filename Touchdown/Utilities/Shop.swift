//
//  Shop.swift
//  Touchdown
//
//  Created by Visarut Tippun on 22/3/22.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProducted: Product? = nil
}
