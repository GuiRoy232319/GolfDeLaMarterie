//
//  SavedGameView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 05/02/2024.
//

import SwiftUI

struct SavedGameView: View {
    var body: some View {
        NavigationStack{
            List{
                Section{
                    NavigationLink {
                        RecapScoringSwiftUIView()
                    } label: {
                        Text("Stroke Play du 12/12/2023")
                    }
                    }header: {
                    Text("Stroke Play")
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                Section{
                    NavigationLink {
                        RecapScoringSwiftUIView()
                    } label: {
                        Text("Stroke Play du 12/12/2023")
                    }
                    }header: {
                    Text("Scramble")
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                Section{
                    NavigationLink {
                        RecapScoringSwiftUIView()
                    } label: {
                        Text("Stroke Play du 12/12/2023")
                    }
                    }header: {
                    Text("Match Play")
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                Section{
                    NavigationLink {
                        RecapScoringSwiftUIView()
                    } label: {
                        Text("Stroke Play du 12/12/2023")
                    }
                    }header: {
                    Text("Foursome")
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                Section{
                    NavigationLink {
                        RecapScoringSwiftUIView()
                    } label: {
                        Text("Stroke Play du 12/12/2023")
                    }
                    }header: {
                    Text("Greensome")
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }  
                Section{
                    NavigationLink {
                        RecapScoringSwiftUIView()
                    } label: {
                        Text("Stroke Play du 12/12/2023")
                    }
                    }header: {
                    Text("Patsome")
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                Section{
                    NavigationLink {
                        RecapScoringSwiftUIView()
                    } label: {
                        Text("Stroke Play du 12/12/2023")
                    }
                    }header: {
                    Text("Ringer")
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                Section{
                    NavigationLink {
                        RecapScoringSwiftUIView()
                    } label: {
                        Text("Stroke Play du 12/12/2023")
                    }
                    }header: {
                    Text("Eclectic")
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
            
            }
            .listStyle(.sidebar)
            .navigationTitle("Mes Parties")
        }
        .background(Color(.clear))
    }
}
#Preview {
    SavedGameView()
}
