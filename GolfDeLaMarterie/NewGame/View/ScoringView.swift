//
//  ScoringView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 24/04/2024.
//

import SwiftUI
import MapKit
import CoreLocation

var data = LaMarterie


struct ScoringView: View {
   
    var body: some View {
        TabView {
            ForEach(data) { item in
                VStack{
                    Map()
                        .mapStyle(.hybrid)
                        .frame(width: 350, height: 200)
                        .cornerRadius(30)
                        .padding(.top,40)
                    Divider()
                    HStack{
                        Text("Trou n°")
                            .fontWeight(.heavy)
                            .font(.largeTitle)
                        Text("\(item.numTrou!)")
                            .fontWeight(.heavy)
                            .font(.largeTitle)
                            .foregroundColor(.red)
                        Text("Par:")
                            .fontWeight(.heavy)
                            .font(.largeTitle)
                            .padding(.leading, 30)
                        Text("\(item.parTrou!)")
                            .fontWeight(.heavy)
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    }
                    HStack{
                        Text("HCP:")
                            .bold()
                        Text("\(item.HCP!)")
                            .bold()
                            .italic()
                        Text("Profondeur Green:")
                            .bold()
                        Text("\(item.Greenprof!)m")
                            .bold()
                            .italic()
                    }
                    HStack{
                        Image("Blanc")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text(" \(item.DistBlanc!)m")
                        Image("Jaune")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text(" \(item.DistJaune!)m")
                        Image("Bleu")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text(" \(item.DistBleu!)m")
                        Image("Rouge")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text(" \(item.DistRouge!)m")
                    }.font(.headline)
                    Divider()
                    VStack{
                        Text("""
                        \(item.advice!)
                        """
                        )
                        .multilineTextAlignment(.center)
                        .italic()
                        .bold()
                        .dynamicTypeSize(.medium)
                        PlayerScoring()
                            .shadow(color:.black ,radius: 5)
                    }
                }
                .background {
                    Color(.systemGray3)
                        .blur(radius: 10)
                }
            }
        }.tabViewStyle(.page)
            .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    ScoringView()
}
