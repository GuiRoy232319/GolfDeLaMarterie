//
//  LaMarterieCourseData.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 11/04/2024.
//

import Foundation

var LaMarterie : [Trou] = [
    Trou(id: 01, numTrou: 01, parTrou: 5, HCP: 15, advice: "Dogleg droite assez prononcé avec un hors limite sur la droite, il vaut mieux jouer un coup d'environ 200m des blanc de façon a se placer dans l'ouverture, un second coup en descente qui arrivera proche du green. Le petit jeu fera la différence entre un par et un birdie.", holeBG: "Hole1", holeGreen: "Green1",DistBlanc: 404, DistJaune: 404, DistBleu: 349, DistRouge: 349, Greenprof: 26, greenIn: greenIn[0], greenOut: greenOut[0], coupsRendus: 0),
    Trou(id: 02, numTrou: 02, parTrou: 4, HCP: 1, advice: "Un coup de fer au départ est conseillé, dogleg gauche avec hors limite sur la gauche et forêt, mise en jeu relativement courte du fait du dogleg. Préfèrer un coup en draw prononcé. 2eme coup relativement long, mieux vaut jouer en s'appuyant sur la droite avec la pente naturelle du terrain, le bunker étant relativement loin du green", holeBG: "Hole2", holeGreen: "Green2",DistBlanc: 343, DistJaune: 343, DistBleu: 314, DistRouge: 314, Greenprof: 26, greenIn: greenIn[1], greenOut: greenOut[1], coupsRendus: 0),
    Trou(id: 03, numTrou: 03, parTrou: 3, HCP: 17, advice: "", holeBG: "Hole3", holeGreen: "Green3",DistBlanc: 108, DistJaune: 108, DistBleu: 95, DistRouge: 91, Greenprof: 17, greenIn: greenIn[2], greenOut: greenOut[2], coupsRendus: 0),
    Trou(id: 04, numTrou: 04, parTrou: 4, HCP: 11, advice: "", holeBG: "Hole4", holeGreen: "Green4",DistBlanc: 346, DistJaune: 301, DistBleu: 295, DistRouge: 274, Greenprof: 23, greenIn: greenIn[3], greenOut: greenOut[3], coupsRendus: 0),
    Trou(id: 05, numTrou: 05, parTrou: 4, HCP: 3, advice: "", holeBG: "Hole5", holeGreen: "Green5",DistBlanc: 301, DistJaune: 278, DistBleu: 267, DistRouge: 256, Greenprof: 19, greenIn: greenIn[4], greenOut: greenOut[4], coupsRendus: 0),
    Trou(id: 06, numTrou: 06, parTrou: 5, HCP: 9, advice: "", holeBG: "Hole6", holeGreen: "Green6",DistBlanc: 448, DistJaune: 430, DistBleu: 412, DistRouge: 394, Greenprof: 25, greenIn: greenIn[5], greenOut: greenOut[5], coupsRendus: 0),
    Trou(id: 07, numTrou: 7, parTrou: 4, HCP: 13, advice: "", holeBG: "Hole7", holeGreen: "Green7",DistBlanc: 290, DistJaune: 260, DistBleu: 225, DistRouge: 222, Greenprof: 16,greenIn: greenIn[6], greenOut: greenOut[6], coupsRendus: 0),
    Trou(id: 08, numTrou: 08, parTrou: 5, HCP: 5, advice: "", holeBG: "Hole8", holeGreen: "Green8",DistBlanc: 447, DistJaune: 429, DistBleu: 385, DistRouge: 380, Greenprof: 24, greenIn: greenIn[7], greenOut: greenOut[7], coupsRendus: 0),
    Trou(id: 09, numTrou: 09, parTrou: 4, HCP: 7, advice: "", holeBG: "Hole9", holeGreen: "Green9",DistBlanc: 347, DistJaune: 330, DistBleu: 278, DistRouge: 272, Greenprof: 22, greenIn: greenIn[8], greenOut: greenOut[8], coupsRendus: 0),
    Trou(id: 10, numTrou: 10, parTrou: 5, HCP: 8, advice: "", holeBG: "Hole10", holeGreen: "Green10",DistBlanc: 490, DistJaune: 456, DistBleu: 436, DistRouge: 408, Greenprof: 20, greenIn: greenIn[9], greenOut: greenOut[9], coupsRendus: 0),
    Trou(id: 11, numTrou: 11, parTrou: 4, HCP: 10, advice: "", holeBG: "Hole11", holeGreen: "Green11",DistBlanc: 317, DistJaune: 282, DistBleu: 268, DistRouge: 234,Greenprof: 13, greenIn: greenIn[10], greenOut: greenOut[10], coupsRendus: 0),
    Trou(id: 12, numTrou: 12, parTrou: 4, HCP: 4, advice: "", holeBG: "Hole12", holeGreen: "Green12",DistBlanc: 390, DistJaune: 364, DistBleu: 344, DistRouge: 304, Greenprof: 17, greenIn: greenIn[11], greenOut: greenOut[11], coupsRendus: 0),
    Trou(id: 13, numTrou: 13, parTrou: 3, HCP: 16, advice: "", holeBG: "Hole13", holeGreen: "Green13",DistBlanc: 178, DistJaune: 165, DistBleu: 149, DistRouge: 130, Greenprof: 22, greenIn: greenIn[12], greenOut: greenOut[12], coupsRendus: 0),
    Trou(id: 14, numTrou: 14, parTrou: 4, HCP: 12, advice: "", holeBG: "Hole14", holeGreen: "Green14",DistBlanc: 268, DistJaune: 255, DistBleu: 202, DistRouge: 202, Greenprof: 22, greenIn: greenIn[13], greenOut: greenOut[13], coupsRendus: 0),
    Trou(id: 15, numTrou: 15, parTrou: 4, HCP: 18, advice: "", holeBG: "Hole15", holeGreen: "Green15",DistBlanc: 260, DistJaune: 254, DistBleu: 234, DistRouge: 230, Greenprof: 26, greenIn: greenIn[14], greenOut: greenOut[14], coupsRendus: 0),
    Trou(id: 16, numTrou: 16, parTrou: 4, HCP: 2, advice: "", holeBG: "Hole16", holeGreen: "Green16",DistBlanc: 302, DistJaune: 297, DistBleu: 243, DistRouge: 243, Greenprof: 21, greenIn: greenIn[15], greenOut: greenOut[15], coupsRendus: 0),
    Trou(id: 17, numTrou: 17, parTrou: 4, HCP: 6, advice: "", holeBG: "Hole17", holeGreen: "Green17",DistBlanc: 372, DistJaune: 358, DistBleu: 329, DistRouge: 294, Greenprof: 21, greenIn: greenIn[16], greenOut: greenOut[16], coupsRendus: 0),
    Trou(id: 18, numTrou: 18, parTrou: 3, HCP: 14, advice: "", holeBG: "Hole18", holeGreen: "Green18",DistBlanc: 165, DistJaune: 151, DistBleu: 131, DistRouge: 127,Greenprof: 17, greenIn: greenIn[17], greenOut: greenOut[17], coupsRendus: 0)
]
