//
//  NewGameUIView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 05/02/2024.
//

import SwiftUI
import SwiftData

struct NewGameUIView: View {
    @Environment(\.modelContext) private var modelContext
    @Query var players: [Player]
    @State private var competitionIsOn = false
    @State private var signatureIsOn = false
    @State private var selectedGameMode = "Stroke Play"
    @State private var allFriends: [Friend] = []
   
    
    var body: some View {
        NavigationStack{
            List{
                Section{
                    HStack{
                        Image("Blanc")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text(players.first!.firstName)
                        Text(players.first!.lastName)
                        Text(String(format: "Index: %.1f", Float(round(players.first!.index * 10) / 10)))
                    }
                    NavigationLink("Ajouter un joueur", destination:
                                    NewPlayerView()
                        .bold()
                    )} header: {
                        Text("Le joueur")
                            .fontWeight(.black)
                    }
                Section{
                    Toggle(isOn: $competitionIsOn) {
                        Text("Mode Compétition")
                            .fontWeight(.bold)
                    }
                    .toggleStyle(.button)
                    .foregroundColor(.orange)
                    Toggle(isOn: $signatureIsOn) {
                        Text("Signature de la carte")
                            .fontWeight(.bold)
                    }
                    .toggleStyle(.button)
                    .foregroundColor(.orange)
                } header: {
                    Text("Paramètres de jeu").fontWeight(.black)
                }
                Section{
                    Picker("Votre type de partie", selection: $selectedGameMode){
                        ForEach(gameMode, id: \.self){
                            Text($0)
                        }
                    }.pickerStyle(.automatic)
                        .tint(.orange)
                } header: {
                    Text("Mode de jeu")
                        .fontWeight(.black)
                }
                NavigationLink {
                    ScoringView()
                        .onAppear(perform: {
                            let newParty = Party(competition: competitionIsOn, signature: signatureIsOn, type: selectedGameMode, date: Date(), score: [], putts: [], fairwayTouched: [])
                            players.first?.parties.append(newParty)
                        })
                }label: {
                    Text("Valider les réglages")
                        .bold()
                        .foregroundStyle(.orange)
                        .cornerRadius(20)
                }
                    .navigationTitle("Nouvelle Partie")
            }
        }
    }
}

#Preview {
    NewGameUIView()
        .modelContainer(previewContainer)
}
