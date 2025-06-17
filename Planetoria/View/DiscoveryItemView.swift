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
                .frame(width: 140, height: 220)
                .cornerRadius(20)
    
            VStack {
                planet.image
                    .resizable()
                    .frame(width: 95, height: 95)
                    .padding()
                
                Text(planet.name)
                   .font(.system(size: 24))
                   .foregroundStyle(.white)
                   .fontWeight(.bold)
                   .padding(.bottom, 2)
                
                HStack {
                    Text("ETA:")
                        .font(.system(size: 16))
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                    
                    Text(planet.formattedTravelTime)
                        .font(.system(size: 16))
                        .foregroundStyle(.white)
                }
                .padding(.bottom, 5)
            }
        }
    }
}

#Preview {
    DiscoveryItemView(planet: planets[0])
}
