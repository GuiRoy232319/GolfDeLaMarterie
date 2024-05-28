//
//  Player.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 05/02/2024.
//

import Foundation
import SwiftData
import SwiftUI

@Model
final class Player{
    var firstName: String
    var lastName: String
    var gender: String
    var index: Double
    var mail: String
    var image: String
    
    @Relationship(deleteRule: .cascade, inverse: .none)
    var friends : [Friend]? = []
    
    @Relationship(deleteRule: .cascade, inverse: .none)
    var parties : [Party]

    init(firstName: String, lastName: String, gender: String, index: Double, mail: String, friends: [Friend], parties: [Party], image: String){
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.index = index
        self.mail = mail
        self.friends = friends
        self.parties = parties
        self.image = image
    }
}
    
enum gender: String, CaseIterable{
    case Man = "Homme"
    case Woman = "Femme"
}
