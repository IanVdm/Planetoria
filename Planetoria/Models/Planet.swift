//
//  Planet.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 25/05/2025.
//

import Foundation
import SwiftUI

struct Planet: Hashable, Codable {
    var id: Int
    var name: String
    var description: String
    var notebaleFeature: String
    var isFavorite: Bool
    
    private var ImageName: String
    var image: Image {
        Image(ImageName)
    }
}
