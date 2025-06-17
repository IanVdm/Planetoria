//
//  ContentView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 19/05/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: NavBar.Tab = .timer

    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            selectedView()
                .frame(maxHeight: .infinity)

            NavBar(selectedTab: $selectedTab)
                .padding(.bottom, 30)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
    
    @ViewBuilder
        private func selectedView() -> some View {
            switch selectedTab {
            case .appUsage:
                AppUsageView()
            case .timer:
                if let _ = planets.first {
                    TimerView()
                } else {
                    Text("No planets available")
                }
            case .home:
                DiscoveriesView()
            case .blacklist:
                AppBlacklistView()
            case .profile:
                ProfileView()
            }
        }
}

#Preview {
    ContentView()
        .environmentObject(AppState())
}
