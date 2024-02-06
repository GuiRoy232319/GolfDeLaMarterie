//
//  HoleView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 02/02/2024.
//

import SwiftUI

struct HoleView: View {
    let item : Parcours
    
    var body: some View {
        VStack{
            Image("Hole\(item.id)")
                .resizable()
                .frame(height: 275)
                .aspectRatio(contentMode: .fit)
                .border(Color.black, width: 1)
                .cornerRadius(30)
            HStack{
                Text("Par:")
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                Text("\(item.parTrou)")
                    .foregroundColor(.orange)
                    .fontWeight(.heavy)
                    .font(.largeTitle)
            }
            HStack{
                Text("HCP:")
                    .bold()
                Text("\(item.HCP)")
                    .bold()
                    .italic()
                    .foregroundStyle(.orange)
                Text("Profondeur Green:")
                    .bold()
                Text("\(item.Greenprof)m")
                    .bold()
                    .italic()
                    .foregroundStyle(.orange)
            }
            HStack{
                Image("Blanc")
                    .resizable()
                    .frame(width: 20, height: 20)
                Text(" \(item.DistBlanc)m")
                Image("Jaune")
                    .resizable()
                    .frame(width: 20, height: 20)
                Text(" \(item.DistJaune)m")
                Image("Bleu")
                    .resizable()
                    .frame(width: 20, height: 20)
                Text(" \(item.DistBleu)m")
                Image("Rouge")
                    .resizable()
                    .frame(width: 20, height: 20)
                Text(" \(item.DistRouge)m")
            }.font(.headline)
            Divider()
            Spacer()
        }
        .navigationTitle("Trou n°\(item.numTrou)")
        .accentColor(.orange)
        .ignoresSafeArea()
    }
}

#Preview {
    HoleView(item: LaMarterie[1])
}
