//
//  DataService.swift
//  BasketballCards
//
//  Created by Benjamin Weinstock on 2/16/21.
//

import Foundation


class DataService {
    
    static func getLocalData() -> [Player] {
        
        // Parse local json file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "LebronJamesStats", ofType: "json")
        
        // Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Player]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                
                let playerData = try decoder.decode([Player].self, from: data)
                
                // Add the unique IDs
                for r in playerData {
                    r.id = UUID()
                    
                    // Add unique IDs to recipe ingredients
                    for i in r.Stats {
                        i.id = UUID()
                    }
                }
                
                // Return the recipes
                return playerData
            }
            catch {
                // error with parsing json
                print(error)
            }
        }
        catch {
            // error with getting data
            print(error)
        }
        
        return [Player]()
    }
    
}
