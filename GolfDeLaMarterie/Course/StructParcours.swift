//
//  StructParcours.swift
//  Golf La Marterie
//
//  Created by Guillaume Roy on 14/01/2021.
//
import Foundation

final class Parcours: Identifiable{
    var slope : Int = 0
    var SSS : Float = 0.0
    var coupsRecus : Int64 = 0
    var allHoles: [Trou] = LaMarterie
    
/// Determines the ideal departure based on gender and index
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
    
    ///get the number of strokes returned by the course according to the handicap
    func coupRecus(slope: Int64, SSS: Float, index: Double, Par: Int64) -> Int64{
            let first = (index * Double(slope)) / 113
            let second =  (SSS - Float(Par))
            coupsRecus = Int64(first) + Int64(second)
            return coupsRecus
        }
 
}
