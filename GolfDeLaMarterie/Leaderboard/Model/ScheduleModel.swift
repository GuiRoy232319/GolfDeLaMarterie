//
//  ScheduleModel.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 07/05/2024.
//

import Foundation

struct Tournament: Codable {
    let TournamentID: Int
    let Name: String
    let IsInProgress: Bool
    let IsOver: Bool
    let Players: [Player1]?
    let StartDate: String
}


class ScheduleAPI{
    private let session : URLSessionProtocol
    
    init(session: URLSessionProtocol = URLSession.shared){
        self.session = session
    }
    var site = "https://api.sportsdata.io/golf/v2/json/tournaments?key=acfd2c6acf10425bba8673ef43d8cae9"
    func fetchAllTournament() async throws-> [Tournament]{
        guard let url = URL(string: site) else { throw LiveLeaderBoardError.invalidURL}
        do{
            let urlRequest = URLRequest(url: url)
            let (data, _) = try await session.data(for: urlRequest)
            if let decodedResponse = try? JSONDecoder().decode([Tournament].self, from: data){
                 return decodedResponse
            }
        } catch{
            print(LiveLeaderBoardError.invalidData)
        }
        return []
    }
    
    enum LiveLeaderBoardError: String, Error {
        case invalidURL = "Invalid URl"
        case requestFailed = "Request Failed"
        case invalidData = "Invalid Data"
    }
}
