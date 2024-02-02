//
//  ProfilView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 01/02/2024.
//

import SwiftUI

struct ProfilView: View {
    var body: some View {
        VStack{
            HStack{
                Image("Profile2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .cornerRadius(75)
                    .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 1, y: 1)
                VStack{
                    Text("Hannibal Lecter")
                        .bold()
                    Text("Index: 7.8")
                        .italic()
                    Button {
                        
                    } label: {
                        Label("Editer",systemImage: "pencil")
                    }

                }
            }
            Divider()
            HStack{
                Label("Meilleur Score Brut:", systemImage: "star.circle.fill")
                    .bold()
                Text("80")
                    .italic()
            }
            HStack{
                Label("Nombre moyen de putts:", systemImage: "figure.golf")
                    .bold()
                Text("1.8")
                    .italic()
        }
            Spacer()
            Spacer()
        }
    }
}


#Preview {
    ProfilView()
}
