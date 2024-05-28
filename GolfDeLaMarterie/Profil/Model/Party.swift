//
//  Party.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 27/05/2024.
//

import Foundation
import SwiftData

@Model
final class Party{
    var competition: Bool
    var signature: Bool
    var type : String
    var date: Date
    var score: [Int]
    var putts: [Int]
    var fairwayTouched: [Bool]
    
    
    init(competition: Bool, signature: Bool, type: String, date: Date, score: [Int], putts: [Int], fairwayTouched: [Bool]) {
        self.competition = competition
        self.signature = signature
        self.type = type
        self.date = date
        self.score = score
        self.putts = putts
        self.fairwayTouched = fairwayTouched
    }
}
var gameMode : [String] = ["\(TypeParty.stableford)","\(TypeParty.strokePlay)"]

enum TypeParty: String, CaseIterable{
    case stableford = "StableFord"
    case strokePlay = "Stroke Play"
}
