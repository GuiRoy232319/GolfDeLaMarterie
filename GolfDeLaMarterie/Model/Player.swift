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
    
    init(firstName: String, lastName: String, gender: gender, index: Double, mail: String){
        self.id = UUID().uuidString
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.index = index
        self.mail = mail
    }
}

enum gender: Hashable, Codable, CaseIterable{
    case Man
    case Woman
}
