//
//  SettingsView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 20/05/2025.
//

import SwiftUI

struct SettingsView: View {
    
    var body: some View {
        Spacer()
        ZStack {
            Rectangle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.gray, .white]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 402, height: 350)
                .cornerRadius(50)
                .opacity(77)
            
            VStack {
                HStack {
                    Button {
                        // Execute timer settings
                    } label: {
                        Image(systemName: "gearshape")
                        Text("Settings")
                    }
                }
                .padding(.bottom, 50)
                
                VStack {
                    HStack(spacing: 10) {
                        Image(systemName: "lock")
                        Text("Screen Lock")
                        // Toggle button
                    }
                    .frame(maxWidth: 300, alignment: .leading)
                    .padding(.bottom, 20)
                    
                    HStack(spacing: 10) {
                        Image(systemName: "alarm")
                        Text("Alarm")
                        // Toggle Button
                    }
                    .frame(maxWidth: 300, alignment: .leading)
                }
            }
            .padding(.bottom, 150)
        }
    }
}

#Preview {
    SettingsView()
}
