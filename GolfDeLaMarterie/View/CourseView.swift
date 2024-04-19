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
    @State private var selectedIndex: Int? = nil
    
    init() {
      // Large Navigation Title
      UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.orange]
    }

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
                        HoleView(selectedIndex: $selectedIndex, item: item)
                    } label:{
                        HStack{
                            Image(systemName: "\(item.id!).circle")
                                .resizable()
                                .foregroundColor(.orange)
                                .frame(width: 45, height: 45)
                                .shadow(color:Color(hue: 0.09, saturation: 1.0, brightness: 0.991), radius: 5, x:1, y:1)
                            VStack{
                                HStack{
                                    Text("Trou n°\(item.numTrou!)")
                                        .bold()
                                        .padding(.trailing,60)
                                    Text("HCP: \(item.HCP!)")
                                }
                                HStack{
                                    Text("Par: \(item.parTrou!)")
                                        .bold()
                                        .padding(.trailing,55)
                                    if dist == 0{
                                        Text("Dist: \(item.DistBlanc!)m")
                                        .italic()}
                                    if dist == 1{
                                        Text("Dist: \(item.DistJaune!)m")
                                        .italic()}
                                    if dist == 2{
                                        Text("Dist: \(item.DistBleu!)m")
                                        .italic()}
                                    if dist == 3{
                                        Text("Dist: \(item.DistRouge!)m")
                                        .italic()}
                                    }
                                }
                            Spacer()
                            }
                        }
                    }
                .listRowSeparatorTint(.orange)
                .listRowBackground(Color.clear)
                }
            .navigationTitle("Le Parcours")
            .listStyle(.inset)
        }
        .background(Color.blue)
        .scrollContentBackground(.visible)
        
    }
}
#Preview {
    CourseView()
}
