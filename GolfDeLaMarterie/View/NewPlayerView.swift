//
//  NewPlayerView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 05/02/2024.
//

import SwiftUI
import SwiftData

struct NewPlayerView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var player : [Player]
    @State var firstName: String
    @State var lastName: String
    @State var mail: String
    @State var tel: String
    @State var index: Double
    @State var gend: Bool
    
    var body: some View {
        NavigationView{
            List{
                Section{
                    ForEach(player){ player in
                        HStack{ 
                            Text(player.firstName + " " + player.lastName)
                            Text(String(format: "%.1f", Float(round(player.index * 10) / 10)))
                        }
                    }
                } header: {
                    Text("Joueurs enregistrés")
                        .fontWeight(.black)
                }
                Section{
                    VStack{
                        TextField("Prénom", text: $firstName)
                        TextField("Nom", text: $lastName)
                        HStack{
                            Text(String(format: "%.1f", Float(round(index * 10) / 10)))
                            Slider(value: $index, in: 0...54)
                        }
                        TextField("Téléphone", text: $tel)
                        TextField("Mail", text: $mail)
                        Toggle(isOn: $gend) {
                            if gend == true{
                                Text("Homme")
                            } else {Text("Femme")
                            }
                        }.toggleStyle(.button)
                    }
                    Button {

                    } label: {
                    Text("Enregistrer le joueur dans mes amis")
                    }
                    .buttonStyle(BorderedProminentButtonStyle())
                } header:{
                    Text("Nouveau joueur")
                        .fontWeight(.black)
                }
            }
        }
    }
}

#Preview {
    NewPlayerView(firstName: "john", lastName: "Wick", mail: "Babayaga@FuckOff.com", tel: "666", index: 26 , gend: true)
        .modelContainer(previewContainer)
}
