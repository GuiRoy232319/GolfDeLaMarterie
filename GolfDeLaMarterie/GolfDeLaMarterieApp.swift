//
//  GolfDeLaMarterieApp.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 01/02/2024.
//

import SwiftUI
import SwiftData
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}



@main
struct GolfDeLaMarterieApp: App {

    
    @Binding var firstName: String
    @Binding var lastName: String
    @Binding var mail: String
    @Binding var tel: String
    @Binding var index: Double
    @Binding var gend: Bool
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    init() {
        _firstName = Binding.constant("")
        _lastName = Binding.constant("")
        _mail = Binding.constant("")
        _tel = Binding.constant("")
        _index = Binding.constant(54)
        _gend = Binding.constant(true)
    }
    
    var body: some Scene {
        WindowGroup {
            MainTabView(firstName: $firstName, lastname: $lastName, mail: $mail, tel: $tel, index: $index, gend: $gend)
                .modelContainer(previewContainer)
        }
        
    }
}
