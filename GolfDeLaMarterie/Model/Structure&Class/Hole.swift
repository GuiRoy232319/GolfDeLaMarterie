//
//  Hole.swift
//  Golf de La Marterie
//
//  Created by Guillaume Roy on 29/03/2021.
//

import Foundation
import MapKit

final class Trou: Identifiable{
    var id: Int64?
    var numTrou: Int64?
    var parTrou : Int64?
    var HCP: Int64?
    var advice: String?
    var holeBG: String?
    var holeGreen : String?
    var DistBlanc: Int?
    var DistJaune: Int?
    var DistBleu : Int?
    var DistRouge : Int?
    var Greenprof : Int?
    var greenIn : CLLocation?
    var greenOut: CLLocation?
    var coupsRendus: Int64?
    var numberShoots: Int64?
    var numberPutts: Int64?
    
    var greenInRegulation: Bool {
        return verifGreenInRegulation()
    }
   
   
    init(id: Int64? = nil, numTrou: Int64? = nil, parTrou: Int64? = nil , HCP: Int64? = nil, advice: String? = nil, holeBG: String? = nil, holeGreen: String? = nil, DistBlanc: Int? = nil, DistJaune: Int? = nil, DistBleu: Int? = nil, DistRouge: Int? = nil, Greenprof: Int? = nil, greenIn: CLLocation? = nil, greenOut: CLLocation? = nil, coupsRendus: Int64? = nil, numberShoots: Int64? = nil, numberPutts: Int64? = nil) {
        self.id = id
        self.numTrou = numTrou
        self.parTrou = parTrou
        self.HCP = HCP
        self.advice = advice
        self.holeBG = holeBG
        self.holeGreen = holeGreen
        self.DistBlanc = DistBlanc
        self.DistJaune = DistJaune
        self.DistBleu = DistBleu
        self.DistRouge = DistRouge
        self.Greenprof = Greenprof
        self.greenIn = greenIn
        self.greenOut = greenOut
        self.coupsRendus = coupsRendus
        self.numberShoots = numberShoots
        self.numberPutts = numberPutts
    }
    
///Verify if the is touch in regulation or not
    func verifGreenInRegulation() -> Bool {
        if let numberShoots = numberShoots, let parTrou = parTrou {
                 return numberShoots <= parTrou - 2
             }
             return false
         }
}



