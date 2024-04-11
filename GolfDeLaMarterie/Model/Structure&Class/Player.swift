//
//  Player.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 05/02/2024.
//

import Foundation
import SwiftData

@Model
class Player: Identifiable{
    var id: String
    var firstName: String = ""
    var lastName: String = ""
    var gender: gender
    var index: Double = 0
    var mail: String = ""
    var coupsRecus: Int64! = 0
   
    init(firstName: String, lastName: String, gender: gender, index: Double, mail: String){
        self.id = UUID().uuidString
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.index = index
        self.mail = mail
    }
    ///get the number of strokes returned by the course according to the handicap
       func coupRecus(slope: Int64, SSS: Float, index: Double, Par: Int64) -> Int64{
               let first = (index * Double(slope)) / 113
               let second =  (SSS - Float(Par))
               coupsRecus = Int64(first) + Int64(second)
               return coupsRecus
           }
    
}

enum gender: Hashable, Codable, CaseIterable{
    case Man
    case Woman
}
