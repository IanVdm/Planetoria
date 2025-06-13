//
//  AppUsageView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 10/06/2025.
//

import SwiftUI

struct AppUsage: Identifiable {
    let id = UUID()
    let name: String
}

struct AppUsageView: View {
    let filteredApps = [
        AppUsage(name: "Instagram"),
        AppUsage(name: "Facebook"),
        AppUsage(name: "Clash of Clans")
    ]
    
    @State private var selectedFilter: String = "Today"
    let filters = ["Today", "Week", "Month"]
    
    var body: some View {
        NavigationStack {
            Text("App Usage")
                .font(.system(size: 50))
                .fontWeight(.bold)
                .padding()
            HStack (spacing: 20) {
                VStack {
                    ZStack {
                        Rectangle()
                            .fill(Color.black)
                            .frame(width: 141, height: 195)
                            .cornerRadius(30)
                        
                        VStack {
                            Text("Today's usage")
                                .foregroundStyle(.white)
                                .fontWeight(.semibold)
                                .offset(y: -40)
                            
                            Text("90 min")
                                .foregroundStyle(.white)
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                        }
                    }
                }
                
                VStack {
                    ZStack {
                        Rectangle()
                            .fill(Color.black)
                            .frame(width: 141, height: 195)
                            .cornerRadius(30)
                        
                        VStack {
                            Text("Dailly usage goal")
                                .foregroundStyle(.white)
                                .fontWeight(.semibold)
                                .offset(y: -40)
                            
                            Text("2 h")
                                .foregroundStyle(.white)
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                        }
                    }
                }
            }
            
            Text("You're most used Apps")
                .font(.title3)
                .fontWeight(.semibold)
                .padding()
            
            // Filter section
            HStack(spacing: 40) {
                ForEach(filters, id: \.self) { filter in
                    FilterButton(
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
            
            // App usage list section
            HStack {
                List(filteredApps) { app in
                    NavigationLink(destination: AppUsageDetailsView(app: app)) {
                        Text(app.name)
                    }
                }
            }
        }
    }
}

#Preview {
    AppUsageView()
}
