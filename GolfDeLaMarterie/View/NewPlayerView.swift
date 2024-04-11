//
//  NewPlayerView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 05/02/2024.
//

import SwiftUI

struct NewPlayerView: View {
    @State public var name: String
    @State public var lastName: String
    
    
    
    
    var body: some View {
        NavigationView{
            List{
                Section{
                    TextField("Prénom", text: $name)
                    TextField("Nom", text: $lastName)
                    }
                }
        }
        .navigationTitle("Ajouter un joueur:")
    }
}

#Preview {
    NewPlayerView(name: "", lastName: "")
}
