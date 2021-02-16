//
//  PlayerModel.swift
//  BasketballCards
//
//  Created by Benjamin Weinstock on 2/16/21.
//

import Foundation

class PlayerModel: ObservableObject {
    
    @Published var players = [Player]()
    
    init() {
        
        // Create an instance of data service and get the data
        self.players = DataService.getLocalData()
        
        
    }
}
