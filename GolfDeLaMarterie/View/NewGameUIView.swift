//
//  NewGameUIView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 05/02/2024.
//

import SwiftUI

struct NewGameUIView: View {
    @State private var competitionIsOn = false
    @State private var signatureIsOn = false
    var gameMode = ["Stroke Play","Stableford","Scramble","Match Play","Foursome","Greensome","Patsome", "Ringer Score", "Eclectic"]
    @State private var selectedGameMode = "Stroke Play"
    
    var body: some View {
        NavigationStack{
            List{
                Section{
                    HStack{
                        Image("Blanc")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Guillaume")
                        Text("Roy")
                        Text("Index: 7.8")
                    }
                    NavigationLink("Ajouter un joueur", destination: NewPlayerView(name: "", lastName: ""))
                        .bold()
                        .foregroundColor(.orange)
                } header: {
                    Text("Les joueurs")
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
            }
                Button(action: {
                    
                }, label: {
                    Text("Valider les réglages")
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .background(.orange, in: .capsule)
                        .cornerRadius(20)
                    }
                )
            Spacer()
            .navigationTitle("Nouvelle Partie")
        }
    }
}
#Preview {
    NewGameUIView()
}
