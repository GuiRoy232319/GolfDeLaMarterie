//
//  Struct Boule.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 05/02/2024.
//

import Foundation

struct boule: Equatable {
    var slope : Int64 = 0
    var SSS : Float = 0.0
    var Start : String
}

enum Departurecolor: String, CaseIterable {
    case Blanc = "Blanc"
    case Jaune = "Jaune"
    case Bleu = "Bleu"
    case Rouge = "Rouge"
    }
