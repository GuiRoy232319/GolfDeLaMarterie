//
//  ProfilView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 01/02/2024.
//

import SwiftUI

struct ProfilView: View {
    
    init() {
      // Large Navigation Title
      UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.orange]
    }
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Image("moi")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .cornerRadius(75)
                        .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 1, y: 1)
                    VStack{
                        Text("Player Name")
                            .bold()
                        Text("Index: 7.8")
                            .italic()
                        Button {
                            
                            } label: {
                            Label("Editer",systemImage: "pencil")
                                .foregroundColor(.orange)
                        }
                    }
                }
                Divider()
                HStack{
                    Label("Meilleur Score Brut:", systemImage: "star.circle.fill")
                        .bold()

                    Text("80")
                        .italic()

                }
                .padding(10)
                Divider()
                TabView{
                    VStack{
                        ZStack {
                            GaugeView(diameter: 170, progress: 0.75, color: .red)
                            GaugeView(diameter: 135, progress: 0.5, color: .yellow)
                            GaugeView(diameter: 100, progress: 0.3, color: .orange)
                        }
                        .padding(10)
                        VStack{
                            Text("Score moyen par 3: 3.5")
                                .bold()
                                .foregroundColor(.red)
                            Text("Score moyen Par 4: 4.1")
                                .bold()
                                .foregroundColor(.yellow)
                            Text("Score moyen Par 5: 4.9")
                                .bold()
                                .foregroundColor(.orange)
                        }
                    }
                    .tabItem {}
                    VStack{
                        ZStack {
                            GaugeView(diameter: 170, progress: 0.62, color: .green)
                            GaugeView(diameter: 135, progress: 0.48, color: .blue)
                        }
                        .padding(10)
                        VStack{
                            Text("Green en régulation : 62%")
                                .bold()
                                .fontWeight(.black)
                                .foregroundColor(.green)
                            Text("Nombre de Putts moyen: 1.8")
                                .bold()
                                .foregroundColor(.blue)
                        }
                    }
                    .tabItem {}
                    VStack(){
                        ZStack {
                            GaugeView(diameter: 170, progress: 0.31, color: .orange)
                            GaugeView(diameter: 135, progress: 0.46, color: .green)
                            GaugeView(diameter: 100, progress: 0.23, color: .red)
                        }
                        .padding(10)
                        VStack(alignment: .leading, spacing: 5.0){
                            Text("Fairway manqué à gauche : 31%")
                                .bold()
                                .fontWeight(.black)
                                .foregroundColor(.orange)
                            Text("Fairway touché : 46%")
                                .bold()
                                .foregroundColor(.green)
                            Text("Fairway manqué à droite : 23%")
                                .bold()
                                .foregroundColor(.red)
                        }
                        
                    }
                    .tabItem {}
                }
                .tabViewStyle(.page)
                .background(Color(.clear))
            }
            .navigationTitle("Mon Profil")
            .background {
                Image("Background2")
                    .resizable()
                    .ignoresSafeArea()
                    .blur(radius: 12)
            }
        }
    }
}
#Preview {
    ProfilView()
}
