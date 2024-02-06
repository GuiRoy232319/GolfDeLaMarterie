//
//  CourseView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 02/02/2024.
//

import SwiftUI

struct CourseView: View {
    @State private var dist = 0
    private var data = LaMarterie

    var body: some View {
        NavigationStack{
            Picker("distance", selection: $dist, content: {
                Text("Blanc").tag(0)
                Text("Jaune").tag(1)
                Text("Bleu").tag(2)
                Text("Rouge").tag(3)
            })
            .pickerStyle(.automatic)
            .tint(.orange)
            List {
                ForEach(data) { item in
                    NavigationLink {
                        ZStack{
                            BackgroundView()
                            HoleView(item: item)
                        }
                    } label:{
                        HStack{
                            Image("Hole\(item.id)")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(45)
                                .shadow(color:.black, radius: 5, x:1, y:1)
                            Spacer()
                            VStack{
                                HStack{
                                    Text("Trou n°\(item.numTrou)")
                                        .bold()
                                    Text("HCP: \(item.HCP)")
                                }
                                HStack{
                                    Text("Par: \(item.parTrou)")
                                        .bold()
                                    if dist == 0{
                                        Text("Dist: \(item.DistBlanc)m")
                                        .italic()}
                                    if dist == 1{
                                        Text("Dist: \(item.DistJaune)m")
                                        .italic()}
                                    if dist == 2{
                                        Text("Dist: \(item.DistBleu)m")
                                        .italic()}
                                    if dist == 3{
                                        Text("Dist: \(item.DistRouge)m")
                                        .italic()}
                                    }
                                }
                            Spacer()
                            }
                        }
                    }
                .listRowSeparatorTint(.orange)
                }
            .navigationTitle("Le Parcours")
            .listStyle(.inset)
            }

    }
}

                                   
#Preview {
    CourseView()
}
