//
//  PlayerListView.swift
//  BasketballCards
//
//  Created by Benjamin Weinstock on 2/16/21.
//

import SwiftUI

struct PlayerListView: View {
    
    @EnvironmentObject var model:PlayerModel

    
    var body: some View {
        NavigationView {
            
            VStack (alignment: .leading) {
                Text("All Players")
                    .bold()
                    .padding(.top, 40)
                    .font(.largeTitle)
                
                ScrollView {
                    LazyVStack (alignment: .leading) {
                        ForEach(model.players) { r in
                            
                            NavigationLink(
                                destination: PlayerStatsView(player: r),
                                label: {
                                    
                                    // MARK: Row item
                                    HStack(spacing: 20.0) {
                                        Image("lebronLA")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 50, height: 50, alignment: .center)
                                            .clipped()
                                            .cornerRadius(5)
                                        Text(r.Name)
                                            .foregroundColor(.black)
                                    }
                                    
                                })
                            
                            
                            
                        }
                    }
                }
                
                
            }
            .navigationBarHidden(true)
            .padding(.leading)
        }
    }
}

struct PlayerListView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerListView()
            .environmentObject(PlayerModel())
    }
}
