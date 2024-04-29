//
//  LeaderboardApi.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 12/04/2024.
//

import Foundation

class LeaderboardApi: ObservableObject {
    private let site = "https://api.sportsdata.io/golf/v2/json/Leaderboard/014?key="
    private let authKey = "acfd2c6acf10425bba8673ef43d8cae9"
    private let session: URLSessionProtocol
    var leaderboardData : LeaderBoard!
    
    init(session: URLSessionProtocol = URLSession.shared) {
        self.session = session
    }
    /// Get Datas by API and URL Request with Async/Await
    func getDatas() async throws -> ResultLeaderboard{
        guard site == "https://api.sportsdata.io/golf/v2/json/Leaderboard" else {throw LeaderBoardError.invalidURL}
        guard let url = URL(string: "https://api.sportsdata.io/golf/v2/json/Leaderboard/014?key=acfd2c6acf10425bba8673ef43d8cae9") else { throw LeaderBoardError.invalidURL}
        do{
            let urlRequest = URLRequest(url: url)
            let (data, response) = try await session.data(for: urlRequest)
            let datas = try JSONDecoder().decode(ResultLeaderboard.self, from: try mapResponse(response: (data, response)))
            return datas
        }  catch{
            print(error)
            throw LeaderBoardError.requestFailed
        }
    }
    
    ///Fetch Datas in ViewController
    func fetchDatas() async throws{
        do{
            leaderboardData = try await getDatas()
        } catch{
            switch error{
            case LeaderBoardError.invalidData: print("Invalid Data")
            case LeaderBoardError.invalidURL: print("Invalid Url")
            case LeaderBoardError.requestFailed: print(" Resquest Failed")
            default: print("An unexpected error occurred")
            }
        }
    }
    
    /// Error Case
    enum LeaderBoardError: Error {
        case invalidURL
        case requestFailed
        case invalidData
    }
}
