//
//  PlanetoriaApp.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 19/05/2025.
//

import SwiftUI

@main
struct PlanetoriaApp: App {
    @StateObject var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appState)
        }
    }
}
