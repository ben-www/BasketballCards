//
//  Player.swift
//  BasketballCards
//
//  Created by Benjamin Weinstock on 2/16/21.
//

import Foundation


class Player: Identifiable, Decodable {
    
    var id:UUID?
    var Name:String
    var Stats:[Season]
    
}

class Season: Identifiable, Decodable {
    
    var id:UUID?
    var Season:String?
    var Age:Int?
    var Tm:String?
    var Lg:String?
    var Pos:String?
    var G:Int?
    var GS:Int?
    var MP:Double?
    var FG:Double?
    var FGA:Double?
    var FGp:Double?
    var ThreeP:Double?
    var ThreePA:Double?
    var ThreePP:Double
    var TwoP:Double?
    var TwoPA:Double?
    var TwoPP:Double?
    var eFGp:Double?
    var FT:Double?
    var FTA:Double?
    var FTp:Double?
    var ORB:Double?
    var DRB:Double?
    var TRB:Double?
    var AST:Double?
    var STL:Double?
    var BLK:Double?
    var TOV:Double?
    var PF:Double?
    var PTS:Double?

}
