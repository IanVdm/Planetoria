//
//  DiscoveryDetailView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 27/05/2025.
//

import SwiftUI

struct DiscoveryDetailView: View {
    @EnvironmentObject var appState: AppState
    
    @State private var selectedPlanet: Planet? = nil
    @State private var showTimer: Bool = false
    @State private var showConfirmation = false
    
    var planet: Planet
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack() {
                    planet.image
                        .resizable()
                        .frame(width: 300, height: 300)
                        .padding(.top, 50)
                    
                    HStack {
                        Text(planet.name)
                            .font(.system(size: 60))
                            .padding(.top, 30)
                            .padding(.bottom, 5)
                        
                        isFavorite(isSet: planet.isFavorite)
                            .offset(x: 10, y: 14)
                    }
                    
                    
                    Text(planet.description)
                        .multilineTextAlignment(.leading)
                    
                    HStack {
                        Text("ETA:")
                            .fontWeight(.semibold)
                        
                        Text(planet.formattedTravelTime)
                    }
                    .padding()
                    
                    Button(action: {
                        appState.selectedPlanet = planet
                        
                        withAnimation {
                            showConfirmation = true
                        }
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation {
                                showConfirmation = false
                            }
                        }
                    }, label: {
                        Text("Discover")
                            .font(.system(size: 20))
                            .foregroundStyle(.white)
                            .frame(width: 302, height: 50)
                            .background(Color.black)
                            .cornerRadius(20)
                    })
                    .padding(.top, 20)
                    
                   
                }
            }
            
            if showConfirmation {
                VStack {
                    Text("🪐 \(planet.name) is now being discovered!")
                        .padding()
                        .background(Color.black.opacity(0.8))
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .transition(.move(edge: .top).combined(with: .opacity))
                        .padding(.top, 50)

                    Spacer()
                }
                .zIndex(1)
            }
        }
        .animation(.easeInOut, value: showConfirmation)
    }
}

#Preview {
    DiscoveryDetailView(planet: planets[6])
        .environmentObject(AppState())
}
