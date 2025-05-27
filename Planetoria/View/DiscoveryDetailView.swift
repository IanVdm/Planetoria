//
//  DiscoveryDetailView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 27/05/2025.
//

import SwiftUI

struct DiscoveryDetailView: View {
    var planet: Planet
    
    var body: some View {
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
                    
                    if planet.isFavorite {
                        Image(systemName: "star.fill")
                            .font(.system(size: 40))
                            .foregroundStyle(.yellow)
                            .offset(x: 10, y: 14)
                    }
                }
                
                
                Text(planet.description)
                    .multilineTextAlignment(.leading)
                
                Button(action: {
                    // Execute item descovery start
                }, label: {
                    Text("Discover")
                        .font(.system(size: 20))
                        .foregroundStyle(.white)
                        .frame(width: 302, height: 50)
                        .background(Color.black)
                        .cornerRadius(20)
                })
                .padding(.top, 40)
                
                Spacer()
            }
        }
    }
}

#Preview {
    DiscoveryDetailView(planet: planets[6])
}
