//
//  AppBlacklistSettingsView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 29/05/2025.
//

import SwiftUI

struct AppBlacklistSettingsView: View {
    @State private var isTimer: Bool = false
    @State private var isRepeat: Bool = false
    
    var body: some View {
        VStack {
            Text("Instagram")
                .font(.system(size: 40))
            
            HStack {
                Toggle("Timers", isOn: $isTimer)
                    .padding(.horizontal, 50)
                    .tint(.black)
            }
            
            ZStack {
                Rectangle()
                    .frame(width: 302, height: 120)
                    .foregroundStyle(.gray)
                    .cornerRadius(20)
                
                VStack {
                    Text("Set start time")
                    Text("11:00am")
                }
            }
            .padding()
            
            ZStack {
                Rectangle()
                    .frame(width: 302, height: 120)
                    .foregroundStyle(.gray)
                    .cornerRadius(20)
                
                VStack {
                    Text("Set start time")
                    Text("11:00am")
                }
            }
            .padding()
            
            Toggle("Repeat", isOn: $isRepeat)
                .padding(.horizontal, 50)
                .tint(.black)
            
            HStack {
                Button(action: {
                    // Set timer for Monday
                }, label: {
                    Text("Mon")
                })
                
                Button(action: {
                    // Set timer for Monday
                }, label: {
                    Text("Tue")
                })
                
                Button(action: {
                    // Set timer for Monday
                }, label: {
                    Text("Wed")
                })
                
                Button(action: {
                    // Set timer for Monday
                }, label: {
                    Text("Thu")
                })
                
                Button(action: {
                    // Set timer for Monday
                }, label: {
                    Text("Fri")
                })
                
                Button(action: {
                    // Set timer for Monday
                }, label: {
                    Text("Sat")
                })
                
                Button(action: {
                    // Set timer for Monday
                }, label: {
                    Text("Sun")
                })
            }
            .padding()
            .buttonStyle(.plain)
        }
    }
}

#Preview {
    AppBlacklistSettingsView()
}
