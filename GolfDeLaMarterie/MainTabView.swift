//
//  ContentView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 01/02/2024.
//

import SwiftUI

struct MainTabView: View {
    @Environment(\.modelContext) private var context
 
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
            NewGameUIView()
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
    MainTabView()
        .modelContainer(previewContainer)
}
