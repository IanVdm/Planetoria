//
//  DiscoveryItemView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 26/05/2025.
//

import SwiftUI

struct DiscoveryItemView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 140, height: 185)
                .cornerRadius(20)
    
            VStack {
                Image("Planet5")
                    .resizable()
                    .frame(width: 95, height: 95)
                    .padding()
               
               Text("Planet 1")
                   .font(.system(size: 20))
                   .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    DiscoveryItemView()
}
