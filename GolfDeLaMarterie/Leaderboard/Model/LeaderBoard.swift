//
//  LeaderBoard.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 12/04/2024.
//

import Foundation
typealias ResultLeaderboard = LeaderBoard

// MARK: - LeaderBoard
struct LeaderBoard: Codable {
    let tournament: Tournament
    let players: [Player1]
}

// MARK: - Player
struct Player1: Codable {
    let playerTournamentID, playerID, tournamentID: Int
    let name: String
    let rank: Int
    let country: String
    let totalScore: Int
    let totalStrokes: Double
    let earnings, fedExPoints: Int
    let fantasyPoints, fantasyPointsDraftKings: Double
    let draftKingsSalary, doubleEagles: Int
    let eagles, birdies: Double
    let pars: Int
    let bogeys, doubleBogeys: Double
    let worseThanDoubleBogey, holeInOnes: Int
    let streaksOfThreeBirdiesOrBetter: Double
    let bogeyFreeRounds: Int
    let roundsUnderSeventy: Double
    let tripleBogeys, worseThanTripleBogey: Int
    let teeTime: String
    let madeCut, win: Double
    let tournamentStatus: String
    let isAlternate: Bool
    let fanDuelSalary: Int
    let madeCutDidNotFinish: Bool
    let oddsToWin: Double
    let oddsToWinDescription: String
    let fantasyPointsFanDuel: Int
    let fantasyPointsFantasyDraft, streaksOfFourBirdiesOrBetter, streaksOfFiveBirdiesOrBetter, consecutiveBirdieOrBetterCount: Double
    let bounceBackCount, roundsWithFiveOrMoreBirdiesOrBetter: Double
    let isWithdrawn: Bool
    let fantasyPointsYahoo, streaksOfSixBirdiesOrBetter: Double
    let rounds: [PlayerRound]
}

    // MARK: - PlayerRound
struct PlayerRound: Codable {
    let playerRoundID, playerTournamentID, number: Int
    let day: String
    let par, score: Int
    let bogeyFree, includesStreakOfThreeBirdiesOrBetter: Bool
    let doubleEagles, eagles, birdies, pars: Int
    let bogeys, doubleBogeys, worseThanDoubleBogey, holeInOnes: Int
    let tripleBogeys, worseThanTripleBogey: Int
    let longestBirdieOrBetterStreak, consecutiveBirdieOrBetterCount, bounceBackCount: Double
    let includesStreakOfFourBirdiesOrBetter, includesStreakOfFiveBirdiesOrBetter, includesFiveOrMoreBirdiesOrBetter, includesStreakOfSixBirdiesOrBetter: Bool
    let teeTime: String
    let backNineStart: Bool
    let holes: [Hole]
}

// MARK: - Hole
struct Hole: Codable {
    let playerRoundID, number, par: Int
    let score, toPar: Int?
    let holeInOne, doubleEagle, eagle, birdie: Bool
    let isPar, bogey, doubleBogey, worseThanDoubleBogey: Bool
}

// MARK: - Tournament
struct Tournament: Codable {
    let tournamentID: Int
    let name, startDate, endDate: String
    let isOver, isInProgress: Bool
    let venue, location: String
    let par, yards, purse: Int
    let startDateTime: String
    let canceled, covered: Bool
    let city, state: String
    let country, timeZone, format, sportRadarTournamentID: String
    let oddsCoverage: String
    let rounds: [TournamentRound]
}

// MARK: - TournamentRound
struct TournamentRound: Codable {
    let tournamentID, roundID, number: Int
    let day: String
}
