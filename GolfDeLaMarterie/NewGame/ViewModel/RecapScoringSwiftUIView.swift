//
//  RecapScoringSwiftUIView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 27/04/2024.
//

import SwiftUI
var holes = LaMarterie

struct RecapScoringSwiftUIView: View {
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                if geometry.size.width < geometry.size.height{
                    Spacer()
                    Text("Passer en mode paysage")
                        .bold()
                    Spacer()
                } else{
                    Text("Partie du 28/04/2024")
                        .font(.title)
                    HStack{
                        Text("Format du jeu: Stroke Play")
                            .font(.subheadline)
                        Spacer()
                        Text("Compétion: Non")
                            .font(.subheadline)
                    }
                    VStack {
                        ScrollView(.horizontal){
                            HStack{
                                Text("Trou N°")
                                    .font(.caption2)
                                    .frame(width: 80)
                                Divider()
                                    .frame(height: 20)
                                ForEach(holes) {hole in
                                    Text("\(hole.numTrou!)")
                                        .font(.subheadline)
                                        .frame(width: 20 ,height: 20)
                                    Divider()
                                        .frame(height: 20)
                                }
                                Text("Total")
                                    .font(.subheadline)
                                    .frame(width: 40)
                            }
                            Divider()
                            HStack{
                                Text("Handicap")
                                    .font(.caption2)
                                    .frame(width: 80)
                                Divider()
                                    .frame(height: 20)
                                ForEach(holes) {hole in
                                    Text("\(hole.HCP!)")
                                        .font(.subheadline)
                                        .frame(width: 20 ,height: 20)
                                    Divider()
                                        .frame(height: 20)
                                }
                                Text("")
                                    .font(.subheadline)
                                    .frame(width: 40)
                            }
                            Divider()
                            HStack{
                                Text("Par")
                                    .font(.caption2)
                                    .frame(width: 80)
                                Divider()
                                    .frame(height: 20)
                                ForEach(holes) {hole in
                                    Text("\(hole.parTrou!)")
                                        .font(.subheadline)
                                        .frame(width: 20 ,height: 20)
                                    Divider()
                                        .frame(height: 20)
                                }
                                Text("")
                                    .font(.subheadline)
                                    .frame(width: 40)
                            }
                            Divider()
                            HStack{
                                Text("Coups Rendus")
                                    .font(.caption2)
                                    .frame(width: 80)
                                Divider()
                                    .frame(height: 20)
                                ForEach(holes) {hole in
                                    Text("\(hole.coupsRendus!)")
                                        .font(.subheadline)
                                        .frame(width: 20 ,height: 20)
                                    Divider()
                                        .frame(height: 20)
                                }
                                Text("")
                                    .font(.subheadline)
                                    .frame(width: 40)
                            }
                            Divider()
                            HStack{
                                Text("Score Joueur 1")
                                    .font(.caption2)
                                    .frame(width: 80)
                                Divider()
                                    .frame(height: 20)
                                ForEach(holes) {hole in
                                    Text("\(hole.coupsRendus!)")
                                        .font(.subheadline)
                                        .frame(width: 20 ,height: 20)
                                    Divider()
                                        .frame(height: 20)
                                }
                                Text("")
                                    .font(.subheadline)
                                    .frame(width: 40)
                            }
                            Divider()
                            HStack{
                                Text("Putts Joueur 1")
                                    .font(.caption2)
                                    .frame(width: 80)
                                Divider()
                                    .frame(height: 20)
                                ForEach(holes) {hole in
                                    Text("\(hole.coupsRendus!)")
                                        .font(.subheadline)
                                        .frame(width: 20 ,height: 20)
                                    Divider()
                                        .frame(height: 20)
                                }
                                Text("")
                                    .font(.subheadline)
                                    .frame(width: 40)
                            }
                            Divider()
                            HStack{
                                Text("Fairway Touché")
                                    .font(.caption2)
                                    .frame(width: 80)
                                Divider()
                                    .frame(height: 20)
                                ForEach(holes) {hole in
                                    Text("\(hole.coupsRendus!)")
                                        .font(.subheadline)
                                        .frame(width: 20 ,height: 20)
                                    Divider()
                                        .frame(height: 20)
                                }
                                Text("")
                                    .font(.subheadline)
                                    .frame(width: 40)
                            }
                        }
                    }
                }
            }
            
        }
    }
}
#Preview {
    RecapScoringSwiftUIView()
}
