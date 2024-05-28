//
//  profilCreate Class.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 23/05/2024.
//

import SwiftUI
import SwiftData

struct ProfilCreateView : View {
    @Environment(\.modelContext) private var modelContext
    @Query private var myProfil : [Player]
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var mail: String = ""
    @State var index: Double = 24
    @State var gend: Bool = true
    @State var hide : Bool = true
   
    var body: some View {
        Section{
            VStack{
                TextField("Prénom", text: $firstName)
                TextField("Nom", text: $lastName)
                HStack{
                    Text(String(format: "Index: %.1f", Float(round(index * 10) / 10)))
                    Slider(value: $index, in: 0...54)
                }
                Toggle(isOn: $gend) {
                    if gend == true{
                        Text("Homme")
                    } else {Text("Femme")
                    }
                }.toggleStyle(.button)
                if hide {
                    Text("Merci d'inscrire votre nom et prénom dans les champs prévus pour")
                        .bold()
                        .italic()
                        .foregroundColor(.red)
                        .hidden()
                } else{
                    Text("Merci d'inscrire votre nom et prénom dans les champs prévus pour.")
                        .bold()
                        .italic()
                        .foregroundColor(.red)
                }
                Button{
                    if self.firstName != "" && self.lastName != ""{
                        if gend == true{
                            let newplayer = Player(firstName: self.firstName, lastName: self.lastName, gender: "\(gender.Man)", index: self.index, mail: "", friends: [], parties: [], image: "")
                            self.modelContext.insert(newplayer)
                        } else{
                            let newplayer = Player(firstName: self.firstName, lastName: self.lastName, gender: "\(gender.Woman)", index: self.index, mail: "", friends: [], parties: [], image: "")
                            self.modelContext.insert(newplayer)
                        }
                    } else {
                        self.hide = false
                    }
                } label: {
                    Text("Enregistrer mon profil joueur")
                }
                .buttonStyle(BorderedProminentButtonStyle())
            }
        } header:{
            Text("Mon Profil")
                .fontWeight(.black)
        }
        .padding(.horizontal, 20)
    }
}
