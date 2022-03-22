//
//  SectionView.swift
//  Touchdown
//
//  Created by Visarut Tippun on 22/3/22.
//

import SwiftUI

struct SectionView: View {
    
    @State var rotateClockwise: Bool
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(.degrees(rotateClockwise ? 90 : -90 ))
            
            Spacer()
        } //: VStack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
