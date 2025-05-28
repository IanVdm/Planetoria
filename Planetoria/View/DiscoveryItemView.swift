//
//  DiscoveryItemView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 26/05/2025.
//

import SwiftUI

struct DiscoveryItemView: View {
    var planet: Planet
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 140, height: 185)
                .cornerRadius(20)
    
            VStack {
                planet.image
                    .resizable()
                    .frame(width: 95, height: 95)
                    .padding()
                
                Text(planet.name)
                   .font(.system(size: 20))
                   .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    DiscoveryItemView(planet: planets[0])
}
