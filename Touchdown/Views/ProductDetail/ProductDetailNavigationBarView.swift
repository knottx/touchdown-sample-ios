//
//  ProductDetailNavigationBarView.swift
//  Touchdown
//
//  Created by Visarut Tippun on 22/3/22.
//

import SwiftUI

struct ProductDetailNavigationBarView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack {
            Button {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectedProducted = nil
                    shop.showingProduct = false
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }

            Spacer()
            
            Button {
                //
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }

        }
    }
}

struct DetailNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailNavigationBarView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
