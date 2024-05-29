//
//  Struct Distance.swift
//  Golf La Marterie
//
//  Created by Guillaume Roy on 14/01/2021.
//

import Foundation

struct Distance {
    var numTrou: Int
    var distance : Int
    var color : Departurecolor
}

struct Dist_Depart {
    var trou : [Distance]
}
//MARK: Filter Distance by DepartureColor
private func from(_ depart: Departurecolor) -> [Distance]{
        return Dist.filter({$0.color == depart})
        }

var blanc = Dist_Depart(trou: from(.Blanc))
var jaune = Dist_Depart(trou: from(.Jaune))
var bleu = Dist_Depart(trou: from(.Bleu))
var rouge = Dist_Depart(trou: from(.Rouge))



































