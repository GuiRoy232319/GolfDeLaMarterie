//
//  Player.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 05/02/2024.
//

import Foundation
import SwiftData

@Model
final class Player: Hashable {
    var firstName: String
    var lastName: String
    var gender: gender
    var index: Double
    var mail: String
    
    @Relationship(deleteRule: .cascade, inverse: .none)
    var friends : [Friend]? = []

    init(firstName: String, lastName: String, gender: gender, index: Double, mail: String, friends: [Friend]){
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.index = index
        self.mail = mail
        self.friends = friends
    }
}
    
enum gender: Hashable, Codable, CaseIterable{
    case Man
    case Woman
}
