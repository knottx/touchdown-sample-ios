//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Visarut Tippun on 22/3/22.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: 10, pinnedViews: []) {
                Section {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                } header: {
                    SectionView(rotateClockwise: false)
                } footer: {
                    SectionView(rotateClockwise: true)
                }
            } //: LazyHGrid
            .frame(height: 140)
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
        } //: SrollView
    }
}

struct CatagoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
