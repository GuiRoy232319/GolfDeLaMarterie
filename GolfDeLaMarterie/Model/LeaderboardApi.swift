//
//  LeaderboardApi.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 12/04/2024.
//

import Foundation

class LeaderboardApi: ObservableObject {
    private let site = "https://live-golf-data.p.rapidapi.com/leaderboard?orgId=1&tournId=014&year=2024"
    private let authKey = "9ea3b5a953mshb4adbe5b3a9c744p1397a7jsn387cd516ae9e"
    private let session: URLSessionProtocol
    var leaderboardData : LeaderBoard!
    
    init(session: URLSessionProtocol = URLSession.shared) {
        self.session = session
    }
    
    func getDatas() async throws -> ResultLeaderboard {
        guard let url = URL(string: site) else {
            throw LeaderboardError.invalidURL
        }
        var request = URLRequest(url: url)
        request.addValue(authKey, forHTTPHeaderField: "X-RapidAPI-Key")
        request.addValue("live-golf-data.p.rapidapi.com", forHTTPHeaderField: "X-RapidAPI-Host")
        request.httpMethod = "GET"
        do {
            let (data, response) = try await session.data(for: request)
            guard let httpResponse = response as? HTTPURLResponse, (200..<300).contains(httpResponse.statusCode) else {
                throw LeaderboardError.requestFailed
            }
            let decodedData = try JSONDecoder().decode(ResultLeaderboard.self, from: data)
            return decodedData
        } catch {
            throw LeaderboardError.invalidData
        }
    }
    func fetchLeaderBoard() async throws{
            do{
                leaderboardData = try await getDatas()
            } catch{
                throw LeaderboardError.requestFailed
            }
        }
    enum LeaderboardError: String, Error {
        case invalidURL = "Invalid URL"
        case requestFailed = "Request Failed"
        case invalidData = "Invalid Data"
    }
}
