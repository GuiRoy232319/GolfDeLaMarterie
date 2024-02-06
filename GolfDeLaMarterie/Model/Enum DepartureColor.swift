//
//  Enum DepartureColor.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 05/02/2024.
//

import Foundation

var slope : Int = 0
var SSS : Float = 0.0
var coupsRecus : Int = 0

enum Departurecolor: String, CaseIterable {
    case Blanc
    case Jaune
    case Bleu
    case Rouge
    }


// Calcul le  nombre de coups rendus par le parcours en fonction du handicap
func coupRecus(slope: Int64, SSS: Float, index: Double, Par: Int) -> Int{
        let first = (index * Double(slope)) / 113
        let second =  (SSS - Float(Par))
        coupsRecus = Int(first) + Int(second)
        return coupsRecus
    }

// Determine le depart ideal en fonction du genre et du handicap
func depart(ind: Double, gender: String) -> boule{
        if ind >= 14.5 && gender == "Homme"{
            return boule(slope: 126, SSS: 70.6, Start: "Jaune")
        }
        if ind <= 14.5 && gender == "Homme" {
            return boule(slope: 136, SSS: 71.8, Start: "Blanc")
        }
        if ind >= 14.5 && gender == "Femme"{
            return boule(slope: 127, SSS: 71.8, Start: "Rouge")
        } else {
            return boule(slope: 129, SSS: 72.8, Start: "Bleu")
        }
    }

