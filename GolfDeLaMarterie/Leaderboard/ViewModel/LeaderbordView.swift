//
//  GameDetailView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 05/02/2024.
//

import SwiftUI


struct LeaderboardView: View {
    @StateObject private var manager = LeaderboardApi()
  
    var body: some View {
        VStack {
            Text(manager.leaderboardData.players.first!.name)
                .onAppear{
                    fetchLeaderBoardData()
                }
            }
        }
    
    private func fetchLeaderBoardData() {
        Task {
            do {
                // Appeler fetchLeaderBoard de l'API pour récupérer les données
                try await manager.fetchDatas()
            } catch {
                // Gérer les erreurs
                print("Error fetching leaderboard data: \(error.localizedDescription)")
            }
        }
    }
}

struct LeaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardView()
    }
}
#Preview {
    LeaderboardView()
}
