//
//  ScoringView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 24/04/2024.
//

import SwiftUI
import MapKit

var item = LaMarterie[0]
var data = LaMarterie


struct ScoringView: View {
    @State var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 59.67309, longitude: 14.82155), span: MKCoordinateSpan(latitudeDelta: 0.025, longitudeDelta: 0.025))
    
    var body: some View {
        TabView {
            ForEach(data) { item in
                VStack{
                    Map()
                        .mapStyle(.hybrid)
                        .frame(width: 350, height: 200)
                        .cornerRadius(30)
                    Divider()
                    HStack{
                        Text("Par:")
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
                        TabView {
                            PlayerScoring()
                                .shadow(color:.black ,radius: 5)
                                .tabItem{}
                            PlayerScoring()
                                .shadow(color:.green ,radius: 5)
                                .tabItem{}
                            PlayerScoring()
                                .shadow(color:.blue ,radius: 5)
                                .tabItem{}
                        }.tabViewStyle(.page)
                        Spacer()
                    }
                }
                .background {
                    Color(.systemGray3)
                        .blur(radius: 10)
                }
            }
        }.tabViewStyle(.page)
            .ignoresSafeArea()
    }
}

#Preview {
    ScoringView()
}
