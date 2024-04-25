//
//  PreviewData.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 22/04/2024.
//

import SwiftUI
import SwiftData

@MainActor
let previewContainer: ModelContainer = {
    do{
        let container = try ModelContainer(for: Player.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        let modelContext = container.mainContext
        if try modelContext.fetch(FetchDescriptor<Player>()).isEmpty{
            SamplePlayer.content.forEach {container.mainContext.insert($0)}
        }
        return container
    } catch{
        fatalError("Failed to create container")
    }
}()
