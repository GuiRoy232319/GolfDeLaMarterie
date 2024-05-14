//
//  ContentView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 01/02/2024.
//

import SwiftUI

struct MainTabView: View {
    @Environment(\.modelContext) private var context
    @Binding internal var firstName : String
    @Binding internal var lastname : String
    @Binding internal var mail : String
    @Binding internal var tel : String
    @Binding internal var index : Double
    @Binding internal var gend : Bool
    
    var body: some View {
         TabView{
            ProfilView()
            .tabItem {
                Label("Mon Profil", systemImage: "person.fill")
            }
            CourseView()
                .tabItem {
                    Label("Le Parcours", systemImage: "flag.and.flag.filled.crossed")
                }
            NewGameUIView(firstName: $firstName, lastname: $lastname, mail: $mail, tel: $tel, index: $index, gend: $gend)
                .tabItem {
                    Label("Nouvelle Partie", systemImage: "figure.golf")
                }
            SavedGameView()
                .tabItem {
                    Label("Mes Parties", systemImage: "rectangle.and.pencil.and.ellipsis")
                }
             Schedule2024View()
                .tabItem {
                    Label("LeaderBoard", systemImage: "list.star")
                }
        }
      
        .tabViewStyle(.automatic)
 
    }
}

#Preview {
    MainTabView(firstName: Binding.constant("John"), lastname: Binding.constant("Wick"), mail: Binding.constant("Babayage@FuckOff.com"), tel: Binding.constant("+16552489345"), index: Binding.constant(0.4), gend: Binding.constant(true))
}
