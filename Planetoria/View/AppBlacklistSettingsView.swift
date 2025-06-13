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
                .padding()
            
            HStack {
                Toggle("Timers", isOn: $isTimer)
                    .padding(.horizontal, 50)
                    .tint(.black)
            }
            .padding(.vertical, 20)
            
            ZStack {
                Rectangle()
                    .frame(width: 302, height: 120)
                    .foregroundStyle(.white)
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 5)
                
                VStack {
                    Text("Set Start time")
                        .padding(.bottom, 1)
                    HStack {
                        Text("11:00")
                            .font(.system(size: 40))
                        Text("am")
                    }
                }
            }
            
            ZStack {
                Rectangle()
                    .frame(width: 302, height: 120)
                    .foregroundStyle(.white)
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 5)
                
                VStack {
                    Text("Set end time")
                        .padding(.bottom, 1)
                    HStack {
                        Text("17:00")
                            .font(.system(size: 40))
                        Text("pm")
                    }
                }
            }
            .padding(.bottom, 50)
            
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
    AppBlacklistSettingsView()
}
