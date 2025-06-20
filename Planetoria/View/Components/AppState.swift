//
//  AppState.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 16/06/2025.
//

import Foundation

class AppState: ObservableObject {
    @Published var selectedPlanet: Planet? = nil
    @Published var planets: [Planet]

    init() {
        self.planets = load("PlanetData.json")
    }
}
