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
    var gender: gender
    var index: Double
    var mail: String
    var tel: String
    
    init(firstName: String, lastName: String, gender: gender, index: Double, mail: String, tel: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.index = index
        self.mail = mail
        self.tel = tel
    }
}

extension Friend: Hashable {
        static func == (lhs: Friend, rhs: Friend) -> Bool {
            lhs.id == rhs.id &&
            lhs.firstName == rhs.firstName &&
            lhs.lastName == rhs.lastName &&
            lhs.gender == rhs.gender &&
            lhs.index == rhs.index &&
            lhs.mail == rhs.mail &&
            lhs.tel == rhs.tel
        }

        func hash(into hasher: inout Hasher) {
            hasher.combine(id)
            hasher.combine(firstName)
            hasher.combine(lastName)
            hasher.combine(gender)
            hasher.combine(index)
            hasher.combine(mail)
            hasher.combine(tel)
        }
}
