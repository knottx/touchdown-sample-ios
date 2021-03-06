//
//  ContentView.swift
//  Touchdown
//
//  Created by Visarut Tippun on 21/3/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProducted == nil {
                VStack(spacing: 0) {
                    HomeNavigationBarView()
                        .padding(.horizontal, 16)
                        .padding(.bottom)
                        .padding(.top, (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            FeaturedTabView()
                                .frame(height: UIScreen.main.bounds.width / 1.6)
                                .padding(.vertical, 20)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing: 16) {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            
                                            withAnimation(.easeOut) {
                                                shop.selectedProducted = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            }
                            .padding(16)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            HomeFooterView()
                                .padding(.horizontal)
                        } //: VStack
                    } //: ScrollView
                    
                } //: VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } //: ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
