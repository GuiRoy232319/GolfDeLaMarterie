//
//  ProfilView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 01/02/2024.
//

import SwiftUI
import SwiftData

struct ProfilView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var player : [Player]
    @State var pickerChoice: Int = 0
    var statDatas : [String] = ["Score Moyen","GIR et Putts Moyen","Mise en jeu"]
    
    init() {
        // Large Navigation Title
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.orange]
    }
    
    var body: some View {
        NavigationStack{
            
            Image("moi")
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .cornerRadius(75)
                .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 1, y: 1)
                .padding(20)
            
            Text(player.first!.firstName + " " + player.first!.lastName)
                .bold()
            Text(String(format: "Index: %.1f", Float(round(player.first!.index * 10) / 10)))
                .italic()
            Button {
                fatalError()
            } label: {
                Label("Editer",systemImage: "pencil")
                    .foregroundColor(.orange)
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
            Picker(selection: $pickerChoice, label: Text("Analyse")) {
                ForEach(0..<3){ stat in
                    Text(statDatas[stat])
                }
            }.pickerStyle(.segmented)
                .padding(.vertical, 15.0)
                .padding(.horizontal, 5)
            if pickerChoice == 0{
                VStack{
                    HStack{
                        Text("Score moyen Par 3 :")
                            .font(.headline)
                        GaugeView(progress: 3.5, par: 3)
                            .gaugeStyle(.accessoryCircular)
                            .padding(10)
                    }
                    Divider()
                    HStack{
                        Text("Score moyen Par 4 :")
                            .font(.headline)
                        GaugeView(progress: 4.5 , par: 4)
                            .gaugeStyle(.accessoryCircular)
                            .padding(10)
                        
                    }
                    Divider()
                    HStack{
                        Text("Score moyen Par 5:")
                            .font(.headline)
                        GaugeView(progress: 5.1, par: 5)
                            .gaugeStyle(.accessoryCircular)
                            .padding(10)
                    }
                }
            }
            if pickerChoice == 1{
                VStack{
                    GaugeView(gradient: Gradient(colors: [.red,.blue, .green]), progress: 62, par: 50)
                        .gaugeStyle(.accessoryLinear)
                        .padding(.bottom, 10)
                    Text("Green en régulation : 62%")
                        .font(.headline)
                    Divider()
                        .padding(.bottom, 20)
                    GaugeView(progress: 1.8, par: 2)
                        .gaugeStyle(.accessoryLinear)
                        .padding(.bottom, 10)
                    Text("Nombre de Putts moyen: 1.8")
                        .font(.headline)
                }
                .padding(20)
            }
            if pickerChoice == 2{
                VStack{
                    GaugeView(gradient: Gradient(colors: [.green,.blue,.red,.red]),progress: 31, par: 50)
                        .gaugeStyle(.accessoryLinear)
                        .padding(.bottom, 10)
                    Text("Fairway manqué à gauche : 31%")
                        .font(.headline)
                    Divider()
                        .padding(.bottom, 20)
                    GaugeView(gradient: Gradient(colors: [.red,.blue, .green, .green]),progress: 46, par: 50)
                        .gaugeStyle(.accessoryLinear)
                        .padding(.bottom, 10)
                    Text("Fairway touché : 46%")
                        .font(.headline)
                    Divider()
                        .padding(.bottom, 20)
                    GaugeView(gradient: Gradient(colors: [.green,.blue,.red,.red]),progress: 23, par: 50)
                        .gaugeStyle(.accessoryLinear)
                        .padding(.bottom, 10)
                    Text("Fairway manqué à droite : 23%")
                        .font(.headline)
                }
                .padding(5)
            }
        }
                .navigationTitle("Mon Profil")
                .ignoresSafeArea()
                .background {
                    Color(.secondarySystemFill)
                    .blur(radius: 10)}
        }
    
}
#Preview {
    ProfilView()
        .modelContainer(previewContainer)
}
