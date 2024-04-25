//
//  ScoringView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 24/04/2024.
//

import SwiftUI
import MapKit

var item = LaMarterie[0]

struct ScoringView: View {
    var body: some View {
        VStack{
            Image("Green1")
                .resizable()
                .frame(width: 350, height: 200)
                .cornerRadius(30)
            Divider()
            HStack{
                Text("Par:")
                    .colorInvert()
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                Text("\(item.parTrou!)")
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
            }
            HStack{
                Text("HCP:")
                    .bold()
                    .colorInvert()
                Text("\(item.HCP!)")
                    .bold()
                    .italic()
                    .foregroundStyle(.orange)
                Text("Profondeur Green:")
                    .bold()
                    .colorInvert()
                Text("\(item.Greenprof!)m")
                    .bold()
                    .italic()
                    .foregroundStyle(.orange)
            }
            HStack{
                Image("Blanc")
                    .resizable()
                    .frame(width: 20, height: 20)
                Text(" \(item.DistBlanc!)m")
                    .colorInvert()
                Image("Jaune")
                    .resizable()
                    .frame(width: 20, height: 20)
                Text(" \(item.DistJaune!)m")
                    .colorInvert()
                Image("Bleu")
                    .resizable()
                    .frame(width: 20, height: 20)
                Text(" \(item.DistBleu!)m")
                    .colorInvert()
                Image("Rouge")
                    .resizable()
                    .frame(width: 20, height: 20)
                Text(" \(item.DistRouge!)m")
                    .colorInvert()
            }.font(.headline)
            Divider()
                .colorInvert()
            Text("""
                        \(item.advice!)
                        """
            )
            .multilineTextAlignment(.center)
            .colorInvert()
            .italic()
            .bold()
            .dynamicTypeSize(.medium)
            TabView {
                PlayerScoring()
                    .shadow(color:.black ,radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .tabItem{}
                PlayerScoring()
                    .shadow(color:.black ,radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .tabItem{}
                PlayerScoring()
                    .shadow(color:.black ,radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .tabItem{}
            }.tabViewStyle(.page)
           
        }
        .background {
            Image("Background")
                .blur(radius: 10)
        }
        
    }
}


#Preview {
    ScoringView()
}
