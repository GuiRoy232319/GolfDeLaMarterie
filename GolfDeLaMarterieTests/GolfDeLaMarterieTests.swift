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
class TournamentTest: XCTestCase{
    
    func testTournamentData() async {
        let mockSession = MockGolfData()
        let _ = mockSession
        let golfApi = ScheduleAPI(session: mockSession)
        do {
            let result = try await golfApi.fetchAllTournament()
            if !result.isEmpty{
                XCTAssertEqual(result.first!.Name, "Masters Tournament")
                XCTAssertEqual(result.first!.TournamentID, 487)
            }
        } catch {
            XCTFail("Une erreur inattendue est survenue : \(error)")
               }
    }
    
    func testInvalidUrl() async{
        let mockSession = MockGolfData()
        let golfApi = ScheduleAPI(session: mockSession)
        golfApi.site = ""
        do{
            let _ = try await golfApi.fetchAllTournament()
        }catch {
            XCTAssertEqual(error as! ScheduleAPI.LiveLeaderBoardError, ScheduleAPI.LiveLeaderBoardError.invalidURL)
        }
    }
    func testInvalidData() async{
        let mockSession = MockLeaderBoardData()
        let golfApi = ScheduleAPI(session: mockSession)
        do{
            let _ = try await golfApi.fetchAllTournament()
        }catch {
            XCTAssertEqual(error as! ScheduleAPI.LiveLeaderBoardError, ScheduleAPI.LiveLeaderBoardError.requestFailed)
        }
    }
}

class LeaderboardTest: XCTestCase{
    func testLeaderBoardData() async {
        let mockSession = MockLeaderBoardData()
        let leaderApi = leaderboardAPI(session: mockSession)
        do {
            let result = try await leaderApi.fetchTournamentData(id: 487)
            if !result.Players.isEmpty{
                XCTAssertEqual(result.Players.first!.Name, "Scott Scheffler")
                XCTAssertEqual(result.Players.first!.TotalScore, -13.6)
            }
        } catch {
            XCTFail("Une erreur inattendue est survenue : \(error)")
               }
    }
    
    func testInvalidUrl() async{
        let mockSession = MockLeaderBoardData()

        let leaderApi = leaderboardAPI(session: mockSession)
        leaderApi.site = ""
        do{
            let _ = try await leaderApi.fetchTournamentData(id: 487)
        }catch {
            XCTAssertEqual(error as! ScheduleAPI.LiveLeaderBoardError, ScheduleAPI.LiveLeaderBoardError.invalidURL)
        }
    }
    func testInvalidData() async{
        let mockSession = MockGolfData()
        let leaderApi = leaderboardAPI(session: mockSession)
        do{
            let _ = try await leaderApi.fetchTournamentData(id: 487)
        }catch {
            XCTAssertEqual(error as! ScheduleAPI.LiveLeaderBoardError, ScheduleAPI.LiveLeaderBoardError.requestFailed)
        }
    }
}
