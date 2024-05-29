//
//  SavedGameView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 05/02/2024.
//

import SwiftUI
import SwiftData

struct SavedGameView: View {
    @Environment(\.modelContext) var modelContext
    @Query var player: [Player]
    
    var body: some View {
        if player.isEmpty{
            Text("Aucun joueur enregistré")
        }else{
        NavigationStack{
            if player.first!.parties.isEmpty{
                Text("Pas Encore de Partie Enregistré Localement")
            } else{
                List{
                    ForEach(player.first!.parties) { item in
                        NavigationLink {
                            RecapScoringSwiftUIView()
                        } label: {
                            Text("\(item.date)")
                        }
                    }
                }
            }
            }
        }
    }
}
#Preview {
    SavedGameView()
}
