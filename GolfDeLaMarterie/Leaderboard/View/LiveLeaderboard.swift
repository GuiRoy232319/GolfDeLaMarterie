//
//  LiveLeaderboard.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 12/04/2024.
//

import SwiftUI



struct LiveLeaderboard: View {
    
    private var leaderboardApi = LeaderboardApi()
   

    var body: some View {
        NavigationView {
            List {
                Text("Loading...")
                }
            }
            .navigationTitle("Leaderboard")
        }
}
        
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LiveLeaderboard()
    }
}
