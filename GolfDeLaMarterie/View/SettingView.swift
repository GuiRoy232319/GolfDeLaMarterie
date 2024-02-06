//
//  SettingView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 01/02/2024.
//

import SwiftUI

struct SettingView: View {
    
    @State var isOn = true
    
    var body: some View {
        NavigationView{
            List {
                Section{
                    Text("Test")
                    Text("test un")
                    Label("", systemImage: "")
                } header: {
                    Text("Général")
                }
                Section{
                    Text("Test")
                    Text("test un")
                    Toggle("is true", isOn: $isOn)
                    Label("", systemImage: "")
                } header: {
                    Text("Général")
                }
                Section{
                    Text("Test")
                    Text("test un")
                    Label("", systemImage: "")
                    Text("test")
                } header: {
                    Text("Général")
                }
                Section{
                    Text("Test")
                    Text("test un")
                    Label("", systemImage: "")
                } header: {
                    Text("Général")
                } footer: {
                    Text("Version 1.0.2")
                        .italic()
                }
            }
            .navigationTitle("Réglages")
        }
    }
}

#Preview {
    SettingView()
}
