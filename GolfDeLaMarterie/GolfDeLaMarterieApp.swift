//
//  GolfDeLaMarterieApp.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 01/02/2024.
//

import SwiftUI
import SwiftData
import FirebaseCore
import FirebaseAnalytics


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}


@main
struct GolfDeLaMarterieApp: App {
  
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
/// Persitent Container Creation
    var sharedModelContainer: ModelContainer = {
        let schema = SchemaManager.shared.schema
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        do {
            let modelContainer = try ModelContainer(for: schema, configurations: [modelConfiguration])
            return modelContainer
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    var body: some Scene {
        #if os(iOS)
        WindowGroup {
            MainTabView()
                .modelContainer(sharedModelContainer)
        }
        #else
        WindowGroup {
            MainTabView()
                .modelContainer(previewContainer)
        }
        #endif
    }
}
