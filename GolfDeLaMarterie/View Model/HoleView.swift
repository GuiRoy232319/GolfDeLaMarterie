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
            Text("Par: \(item.parTrou)")
                .foregroundColor(.orange)
                .fontWeight(.heavy)
                .font(.largeTitle)
            HStack{
                Text("Blanc: \(item.DistBlanc)m")
                Text("Jaune: \(item.DistJaune)m")
                Text("Bleu: \(item.DistBleu)m")
                Text("Rouge: \(item.DistRouge)m")
            }.font(.caption)
            Divider()
            Spacer()
        }
        .navigationTitle("Trou n°\(item.numTrou)")
        .ignoresSafeArea()
    }
}

#Preview {
    HoleView(item: LaMarterie[1])
}
