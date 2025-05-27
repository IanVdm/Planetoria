//
//  DiscoveriesView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 25/05/2025.
//

import SwiftUI

struct DiscoveriesView: View {
    let catalogue = [
        GridItem(.flexible(minimum: 100, maximum: 155)),
        GridItem(.flexible(minimum: 100, maximum: 155))
    ]
    
    var body: some View {
        // TODO: Create Discovery itmes
        NavigationSplitView {
            ScrollView {
                LazyVGrid(columns: catalogue, spacing: 16) {
                    ForEach(planets) { item in
                        NavigationLink {
                            DiscoveryDetailView(planet: item)
                        } label: {
                            DiscoveryItemView(planet: item)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .navigationTitle("Discoveries")
                .padding()
            }
        } detail: {
            Text("Select a planet to discover")
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
