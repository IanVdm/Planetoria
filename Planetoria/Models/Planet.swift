//
//  Planet.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 25/05/2025.
//

import Foundation
import SwiftUI

struct Planet: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var category: String
    var description: String
    var isFavorite: Bool
    
    private var ImageName: String
    var image: Image {
        Image(ImageName)
    }
}
