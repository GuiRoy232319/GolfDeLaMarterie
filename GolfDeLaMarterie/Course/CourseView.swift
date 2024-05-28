//
//  CourseView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 02/02/2024.
//

import SwiftUI

struct CourseView: View {
    private var data = LaMarterie
    init() {
        // Large Navigation Title
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.orange]
    }
    
    var body: some View {
        TabView {
            ForEach(data) { item in
                VStack {
                    Spacer()
                    Text("Trou N°\(item.numTrou!)")
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                    VStack{
                        LocalVideoView(videoFilename: item.holeBG!, videoExtension: "mp4")
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
                        Spacer()
                    }
                }
                .accentColor(.orange)
                .background {
                    Image("Background2")
                        .resizable()
                        .ignoresSafeArea()
                        .blur(radius: 75)
                    
                }
                .tabItem{}
            }
        }
        .tabViewStyle(.page)
        .ignoresSafeArea()
        .navigationTitle("Le Parcours")
        .listStyle(.inset)
        .scrollContentBackground(.visible)
    }
   
}
#Preview {
    CourseView()
}
