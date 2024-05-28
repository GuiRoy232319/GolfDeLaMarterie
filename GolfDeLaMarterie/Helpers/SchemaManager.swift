//
//  SchemaManager.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 28/05/2024.
//

import Foundation
import SwiftData

class SchemaManager {
    static let shared = SchemaManager()
    let schema: Schema
    
    private init() {
        self.schema = Schema([
            Player.self
        ])
    }
    
    func makePreviewContainer() -> ModelContainer {
        let previewModelContainer: ModelContainer = {
            let schema = Schema([
                Player.self
            ])
            let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)

            do {
                let container = try ModelContainer(for: schema, configurations: [modelConfiguration])

                return container
            } catch {
                fatalError("Could not create ModelContainer: \(error)")
            }
        }()
        return previewModelContainer
    }
}
