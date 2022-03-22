//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Visarut Tippun on 22/3/22.
//

import SwiftUI

struct FeaturedItemView: View {
    
    let player: Player
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players.first!)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
