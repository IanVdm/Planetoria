//
//  AppBlacklistView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 28/05/2025.
//

import SwiftUI

struct AppBlacklistView: View {
    @State private var searchBox: String = ""
    
    @State private var appSelection: [String: Bool] = [
        "Instagram": false,
        "Twiter": false,
        "Youtube": true,
        "Clash of Clans": false,
        "Tik Tok": true,
    ]
    
    var body: some View {
        VStack {
            Text("Apps")
                .font(.system(size: 40))
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 30))
                    .foregroundStyle(.gray)
                
                TextField("Search...", text: $searchBox)
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
            }
            .padding(10)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .padding(.horizontal)
            
            Divider()
                .padding(.horizontal, 20)
                .padding(.top, 20)
            
            HStack(spacing: 30) {
                Button(action: {
                    // Execute Alphabeticaly filter
                }, label: {
                    Text("Alphabeticly")
                })
                .buttonStyle(.plain)
                
                Button(action: {
                    // Execute most used filter
                }, label: {
                    Text("Most used")
                })
            }
            .buttonStyle(.plain)
            .padding()
        }
        
        List {
            ForEach(appSelection.keys.sorted(), id: \.self) { app in
                HStack {
                    Toggle(isOn: Binding (
                        get: { appSelection[app] ?? false },
                        set: { appSelection[app] = $0 }
                    )) {
                        Text(app)
                    }
                    
                    Spacer()
                
                    Divider()
                        .padding()
                    
                    Button(action: {
                        // Execute app settings
                        print("Open settings for \(app)")
                    }, label: {
                        Image(systemName: "gear")
                            .foregroundStyle(.black)
                    })
                }
                
            }
        }
        .listStyle(.insetGrouped)
        .navigationTitle("Select Apps")
        
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
    AppBlacklistView()
}
