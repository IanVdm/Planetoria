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
    var travelTime: TimeInterval
    
    var isUnlocked: Bool {
        // TODO: Save is userDefaults or coreData
        return false
    }
    
    var formattedTravelTime: String {
       let formatter = DateComponentsFormatter()
       formatter.allowedUnits = [.hour, .minute, .second]
       formatter.unitsStyle = .positional
       formatter.zeroFormattingBehavior = [.pad]
       return formatter.string(from: travelTime) ?? "0:00"
    }
    
    var ImageName: String
    var image: Image {
        Image(ImageName)
    }
}
