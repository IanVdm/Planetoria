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
            
            Group {
                switch selectedTab {
                case .appUsage:
                    AppUsageView()
                case .timer:
                    TimerView()
                case .home:
                    DiscoveriesView()
                case .blacklist:
                    TimerView()
                case .profile:
                    ProfileView()
                }
            }
            .frame(maxHeight: .infinity)
            
            NavBar(selectedTab: $selectedTab)
                .padding(.bottom, 30)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    ContentView()
}
