//
//  LeaderBoard.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 12/04/2024.
//

import Foundation
typealias ResultLeaderboard = LeaderBoard

// MARK: - LeaderBoard
struct LeaderBoard: Identifiable, Codable {
    let id, orgID, year, tournID: String
    let status: String
    let roundID: Int
    let roundStatus: String
    let lastUpdated: Date
    let leaderboardRows: [LeaderboardRow]
    let timestamp: String
    }


// MARK: - LeaderboardRow
struct LeaderboardRow:Codable {
    let lastName, firstName: String
    let isAmateur: Bool
    let playerID, teeTime: String
    let teeTimeTimestamp: Date
    let courseID: String
    let status: Status
    let currentRound: Int
    let total, currentRoundScore, position, totalStrokesFromCompletedRounds: String
    let roundComplete: Bool
    let rounds: [Round]
    let thru: String
    let startingHole, currentHole: Int
}

// MARK: - Round
struct Round:Codable {
    let scoreToPar: String
    let roundID: Int
    let courseID: String
    let courseName: CourseName
    let strokes: Int

    
}

enum CourseName: String, Codable {
    case augustaNationalGolfClub = "Augusta National Golf Club"
}

enum Status: String, Codable {
    case active = "active"
    case complete = "complete"
}
