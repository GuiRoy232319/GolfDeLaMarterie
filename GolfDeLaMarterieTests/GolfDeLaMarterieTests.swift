//
//  GolfDeLaMarterieTests.swift
//  GolfDeLaMarterieTests
//
//  Created by guill roy on 01/02/2024.
//

import XCTest
@testable import GolfDeLaMarterie
    class TrouTests: XCTestCase {
        // Test case for verifying green in regulation
        func testVerifGreenInRegulation() {
            let trou1 = Trou(parTrou: 5, numberShoots: 3)
            let trou2 = Trou(parTrou: 5, numberShoots: 2)
            let trou3 = Trou(parTrou: 4, numberShoots: 3)
            let trou4 = Trou(parTrou: 3, numberShoots: 1)
            let trou5 = Trou(parTrou: 5)
            XCTAssertTrue(trou1.verifGreenInRegulation())
            XCTAssertTrue(trou2.verifGreenInRegulation())
            XCTAssertFalse(trou3.verifGreenInRegulation())
            XCTAssertTrue(trou4.verifGreenInRegulation())
            XCTAssertFalse(trou5.verifGreenInRegulation())
            XCTAssertEqual(trou5.greenInRegulation, false)
        }
    }

class ParcoursTest : XCTestCase{
    func testCoupRecus() {
        let instance = Parcours()
        // Test with sample values
        XCTAssertEqual(instance.depart(ind: 7.8, gender: "Homme"), boule(slope: 136, SSS: 71.8, Start: "Blanc"))
        XCTAssertEqual(instance.depart(ind: 46, gender: "Homme"), boule(slope: 126, SSS: 70.6, Start: "Jaune"))
        XCTAssertEqual(instance.depart(ind: 5.4, gender: "Femme"), boule(slope: 129, SSS: 72.8, Start: "Bleu"))
        XCTAssertEqual(instance.depart(ind: 23.6, gender: "Femme"), boule(slope: 127, SSS: 71.8, Start: "Rouge"))
    }
}

