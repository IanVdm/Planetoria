//
//  DiscoveriesView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 25/05/2025.
//

import SwiftUI

struct DiscoveriesView: View {
    let catalogue = [
        GridItem(.flexible(minimum: 10, maximum: 155)),
        GridItem(.flexible(minimum: 10, maximum: 155))
    ]
    
    var body: some View {
        Text("Discoveries")
            .font(.system(size: 40))
            .padding(.top, 20)
        
        // TODO: Create Discovery itmes
        ScrollView {
            LazyVGrid(columns: catalogue, spacing: 16) {
//                DiscoveryItemView(planet: planets[0])
//                DiscoveryItemView()
//                DiscoveryItemView()
            }
            .padding()
        }
        
        Spacer()
        
        ZStack {
            Rectangle()
                .fill(Color.black)
                .frame(width: 380, height: 70)
                .cornerRadius(30)
            
            HStack {
                Image(systemName: "chart.bar.fill")
                Image(systemName: "alarm")
                    .padding(.leading, 40)
                Image(systemName: "house")
                    .padding(.horizontal, 40)
                Image(systemName: "lock")
                    .padding(.trailing, 40)
                Image(systemName: "person")
            }
            .foregroundStyle(Color.white)
            .font(.system(size: 20))
        }
    }
}

#Preview {
    DiscoveriesView()
}
