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
    
    @State private var selectedFilter: String = "Alphabetically"
    let filters = ["Alphabetically", "Most used"]
    
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
            
            HStack(spacing: 40) {
                ForEach(filters, id: \.self) { filter in
                    UsageFilterButton(
                        title: filter,
                        isSelected: selectedFilter == filter,
                        action: {
                            selectedFilter = filter
                        }
                    )
                    .padding(.horizontal)
                }
            }
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
                        // TODO: Execute app settings
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
    }
}

#Preview {
    AppBlacklistView()
}
