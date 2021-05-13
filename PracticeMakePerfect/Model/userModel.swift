//
//  moneyModel.swift
//  PracticeMakePerfect
//
//  Created by Farhandika Zahrir Mufti guenia on 13/05/21.
//

import Foundation

struct personalData {
    var id = UUID()
    var name:String
    var birthday:Date
    var money:Float
    var transaction:[transactions]
}

struct transactions {
    var id = UUID()
    var transaksi:String
    var type:String
    var store:String
    var price:Float
}
