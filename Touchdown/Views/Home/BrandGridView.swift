//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Visarut Tippun on 22/3/22.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                } //: ForEach
            } //: LazyHGrid
            .frame(height: 200)
            .padding(16)
        } //: ScrollView
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
