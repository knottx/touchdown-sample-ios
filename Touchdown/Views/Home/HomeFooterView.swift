//
//  HomeFooterView.swift
//  Touchdown
//
//  Created by Visarut Tippun on 21/3/22.
//

import SwiftUI

struct HomeFooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Knot / knottx")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        } //: VStack
        .padding()
    }
}

struct HomeFooterView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
