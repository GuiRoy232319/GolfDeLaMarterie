//
//  ContentView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 01/02/2024.
//

import SwiftUI

struct MainTabView: View {
    
    var body: some View {
        TabView {
            ZStack{
                BackgroundView()
                ProfilView()
            }
                .tabItem {
                    Label("Mon Profil", systemImage: "person.fill")
            }
                CourseView()
                .tabItem {
                    Label("Carte de Score", systemImage: "flag.and.flag.filled.crossed")
                    }
            ZStack{
                BackgroundView()
                ProfilView()
            }
                .tabItem {
                    Label("Nouvelle Partie", systemImage: "figure.golf")
                }
            ZStack{
                BackgroundView()
                ProfilView()
            }
                .tabItem {
                    Label("Mes Parties", systemImage: "rectangle.and.pencil.and.ellipsis")
                }
            SettingView()
                .tabItem {
                    Label("Réglages", systemImage: "gear")
                }
        }
        .ignoresSafeArea()
        .tint(.orange)
    }
}
#Preview {
    MainTabView()
}
