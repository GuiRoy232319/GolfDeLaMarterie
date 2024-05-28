//
//  Friend.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 22/04/2024.
//

import Foundation
import SwiftData

@Model
final class Friend{
    var firstName: String
    var lastName: String
    var gender: String
    var index: Double
    var mail: String
    var tel: String
  
    
    init(firstName: String, lastName: String, gender: String, index: Double, mail: String, tel: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.index = index
        self.mail = mail
        self.tel = tel
        
    }
}

