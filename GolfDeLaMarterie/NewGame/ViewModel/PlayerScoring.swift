//
//  PlayerScoring.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 24/04/2024.
//

import SwiftUI
import SwiftData

//---------------------------------------------
//MARK: Player Scoring ViewModel (Saving in V2)
//---------------------------------------------

struct PlayerScoring: View {
    var puttNumber: [Int] = [0,1,2,3,4,5]
    @State var puttScore: Int = 2
    var shootNumber: [Int] = [1,2,3,4,5,6,7,8,9,10]
    @State var shootScore : Int = 4
    var bunkerShoot: [Int] = [0,1,2,3,4,5]
    @State var bunkerNumber: Int = 0
    var touchingFairway: [String] = ["Touché","Manqué à droite","Manqué à gauche"]
    @State var fairway : String = "Touché"
    var body: some View {
        VStack{
            Text("Player Name")
                .fontWeight(.black)
            HStack{
                VStack{
                    Text("Coups")
                        .fontWeight(.bold)
                        .fontDesign(.rounded)
                    Picker("Nombre de coups", selection: $shootScore){
                        ForEach(shootNumber, id: \.self){
                            Text("\($0)")
                        }
                        .pickerStyle(.menu)
                    }
                }
                    VStack{
                        Text("Putts")
                            .fontWeight(.bold)
                            .fontDesign(.rounded)
                        Picker("Nombre de coups", selection: $puttScore){
                            ForEach(puttNumber, id: \.self){
                                Text("\($0)")
                            }
                            .pickerStyle(.menu)
                        }
                        
                    }
                    VStack{
                        Text("Fairway touché")
                            .multilineTextAlignment(.center)
                            .fontWeight(.bold)
                            .fontDesign(.rounded)
                        
                        Picker("Nombre de coups", selection: $fairway){
                            ForEach(touchingFairway, id: \.self){
                                Text("\($0)")
                            }
                            .pickerStyle(.menu)
                        }
                        
                    }
                    VStack{
                        Text("Bunker")
                            .fontWeight(.bold)
                            .fontDesign(.rounded)
                        Picker("Nombre de coups", selection: $bunkerNumber){
                            ForEach(bunkerShoot, id: \.self){
                                Text("\($0)")
                            }
                            .pickerStyle(.menu)
                        }
                        
                    }
                    
                }
            }
                .padding(10)
                .background(content: {
                    Color(.systemGray6)
                })
                .frame(alignment: .center)
                .cornerRadius(15)
    }
}
#Preview {
    PlayerScoring()
}
