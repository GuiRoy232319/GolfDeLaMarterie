//
//  GolfDeLaMarterieApp.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 01/02/2024.
//

import SwiftUI
import SwiftData

@main
struct GolfDeLaMarterieApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
        .modelContainer(for: Player.self)
    }
}
