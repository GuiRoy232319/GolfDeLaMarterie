//
//  HoleView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 02/02/2024.
//

import SwiftUI

struct HoleView: View {
    
    @State private var isVideoPlayerPresented = false
    let item : Trou
    
    var body: some View {
        NavigationView{
            VStack{
                Image("Green\(item.id!)")
                    .resizable()
                    .frame(height: 250)
                    .cornerRadius(15)
                HStack{
                    Text("Par:")
                        .colorInvert()
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                    Text("\(item.parTrou!)")
                        .foregroundColor(.orange)
                        .fontWeight(.heavy)
                        .font(.largeTitle)
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
                Text(
"""
Conseil sur le trou
pour pouvoir
bien le jouer
et scorer de manière optimale
""")
                .multilineTextAlignment(.center)
                .colorInvert()
                .italic()
                .bold()
                NavigationLink(destination: VideoPlayerView(item: item.youtubeID!) ){
                    Text("Afficher le survol du trou")
                        .foregroundColor(.white)
                        .background(Color.orange)
                }
                Spacer()
            }
            .ignoresSafeArea()
            .navigationTitle("Trou n°\(item.numTrou!)")
            .accentColor(.orange)
            .background {
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
                    .blur(radius: 30)
            }
        }
    }
}

#Preview {
    HoleView(item: LaMarterie[0])
}
