//
//  SavedGameView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 05/02/2024.
//

import SwiftUI
import SwiftData

struct SavedGameView: View {
    
    var body: some View {
        @Environment(\.modelContext) var modelContext
        @Query var party: [Party]
        
        NavigationStack{
            if party.isEmpty{
                Text("Pas Encore de Partie Enregistré Localement")
            } else{
                List{
                    ForEach(party) { item in
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
#Preview {
    SavedGameView()
}
