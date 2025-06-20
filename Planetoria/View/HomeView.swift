//
//  HomeView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 20/06/2025.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var appState: AppState
    @State private var showDiscoveries = false

    var body: some View {
        let _ = appState.planets.filter { $0.isFavorite }
        
        GeometryReader { geometry in
            ZStack {
                Image("space_bg")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                ZStack {
                    ForEach(appState.planets.filter { $0.isFavorite }) { planet in
                        MovingPlanet(planet: planet, size: geometry.size)
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
 
                VStack {
                    Spacer()
                    
                    Button {
                        showDiscoveries = true
                    } label: {
                        Text("Discoveries")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .padding()
                            .frame(width: 350, height: 50)
                            .background(Color.white.opacity(0.2))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            .padding(.horizontal)
                    }
                    .padding(.bottom, 20)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
        .fullScreenCover(isPresented: $showDiscoveries) {
            DiscoveriesView()
        }
    }
}


#Preview {
    HomeView()
        .environmentObject(AppState())
}
