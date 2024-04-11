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
        TabView {
            ProfilView()
            .tabItem {
                Label("Mon Profil", systemImage: "person.fill")
            }
            .toolbarBackground(.visible, for: .tabBar)
            CourseView()
                .tabItem {
                    Label("Le Parcours", systemImage: "flag.and.flag.filled.crossed")
                }
                .toolbarBackground(.visible, for: .tabBar)
            NewGameUIView()
                .tabItem {
                    Label("Nouvelle Partie", systemImage: "figure.golf")
                }
                .toolbarBackground(.visible, for: .tabBar)
            SavedGameView()
                .tabItem {
                    Label("Mes Parties", systemImage: "rectangle.and.pencil.and.ellipsis")
                }
                .toolbarBackground(.visible, for: .tabBar)
            SettingView()
                .tabItem {
                    Label("Réglages", systemImage: "gear")
                }
                .tint(.orange)
                .toolbarBackground(.visible, for: .tabBar)

        }
    }
}

#Preview {
    MainTabView()
}
