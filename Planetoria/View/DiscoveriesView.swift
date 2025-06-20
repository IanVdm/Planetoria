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
                .navigationBarTitleDisplayMode(.inline)
                .padding()
            }
        } detail: {
            Text("Select a planet to discover")
        }
    }
}

#Preview {
    DiscoveriesView()
}
