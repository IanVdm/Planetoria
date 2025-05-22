//
//  SettingsView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 20/05/2025.
//

import SwiftUI

struct SettingsView: View {
    @State private var isScreenLock = false
    @State private var isAlarm = false
    var onClose: () -> Void
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .shadow(radius: 10.0)
                .frame(width: 380, height: 160)
               
            VStack {
                HStack(spacing: 10) {
                    Toggle("Screen Lock", systemImage: "lock", isOn: $isScreenLock)
                        .tint(.black)
                }
                .frame(maxWidth: 300, alignment: .leading)
                .padding(.bottom, 10)
                
                Divider()
                    .padding(.horizontal, 30)
                
                HStack(spacing: 10) {
                    Toggle("Alarm", systemImage: "alarm", isOn: $isAlarm)
                        .tint(.black)
                }
                .frame(maxWidth: 300, alignment: .leading)
                .padding(.top, 10)
            }
        }
    }
}

#Preview {
    SettingsView(onClose: {})
}
