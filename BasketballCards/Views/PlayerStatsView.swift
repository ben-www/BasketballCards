//
//  PlayerStatsView.swift
//  BasketballCards
//
//  Created by Benjamin Weinstock on 2/16/21.
//

import SwiftUI

struct PlayerStatsView: View {
    
    var player:Player

    
    var body: some View {
        
        
        
        ScrollView {
            
            
            VStack (alignment: .leading) {
                
                Text(player.Name)
                    .bold()
                    .padding(.leading)
                    .padding(.top, 40)
                    .font(.largeTitle)
                
                // MARK: Recipe Image
                Image("lebronLA")
                    .resizable()
                    .scaledToFill()
            }
            
            
        }
    }
}

struct PlayerStatsView_Previews: PreviewProvider {
    static var previews: some View {
        let model = PlayerModel()
        
        PlayerStatsView(player: model.players[0])
    }
}
