//
//  NewPlayerView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 05/02/2024.
//

import SwiftUI
import SwiftData


//----------------------------------------
//MARK: New Player ViewModel (Saving in v2)
//----------------------------------------
struct NewPlayerView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var player : [Friend]
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var mail: String = ""
    @State var tel: String = ""
    @State var index: Double = 24
    @State var gend: Bool = true
    
    var body: some View {
        NavigationView{
            List{
                Section{
                    ForEach(player){ player in
                        HStack{ 
                            Text(player.firstName + " " + player.lastName)
                            Spacer()
                            Text(String(format: "Index: %.1f", Float(round(player.index * 10) / 10)))
                                .font(.subheadline)
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
                            Text(String(format: "Index: %.1f", Float(round(index * 10) / 10)))
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
                        Button{

                        } label: {
                        Text("Enregistrer le joueur dans mes amis")
                                
                        }
                        .buttonStyle(BorderedProminentButtonStyle())
                    }
                   
                    
                } header:{
                    Text("Nouveau joueur")
                        .fontWeight(.black)
                }
            }
        }
    }
}

#Preview {
    NewPlayerView()
        .modelContainer(previewContainer)
}
