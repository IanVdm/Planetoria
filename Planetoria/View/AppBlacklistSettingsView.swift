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
    
    let appName: String
    
    var body: some View {
        VStack {
            HStack {
                Toggle("Enable Timer", isOn: $isTimer)
                    .padding(.horizontal, 50)
                    .tint(.black)
            }
            .padding(.vertical, 20)
            
            TimeSelector()
                .padding(.bottom, 20)
            
//            ZStack {
//                Rectangle()
//                    .frame(width: 320, height: 120)
//                    .foregroundStyle(.white)
//                    .cornerRadius(20)
//                    .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 5)
//                
//                VStack {
//                    Text("Set Start time")
//                        .padding(.bottom, 1)
//                    HStack {
//                        Text("11:00")
//                            .font(.system(size: 40))
//                        Text("am")
//                    }
//                }
//            }
//            .padding(.bottom, 30)
//            
//            ZStack {
//                Rectangle()
//                    .frame(width: 320, height: 120)
//                    .foregroundStyle(.white)
//                    .cornerRadius(20)
//                    .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 5)
//                
//                VStack {
//                    Text("Set end time")
//                        .padding(.bottom, 1)
//                    HStack {
//                        Text("17:00")
//                            .font(.system(size: 40))
//                        Text("pm")
//                    }
//                }
//            }
//            .padding(.bottom, 40)
            
            Toggle("Repeat", isOn: $isRepeat)
                .padding(.horizontal, 50)
                .tint(.black)
            
            HStack(spacing: 20) {
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
        .navigationTitle(appName)
        .navigationBarTitleDisplayMode(.inline)
        
        Spacer()
    }
}

#Preview {
    AppBlacklistSettingsView(appName: "Instagram")
}
