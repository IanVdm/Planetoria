//
//  NavBar.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 13/06/2025.
//

import SwiftUI

struct NavBar: View {
    @Binding  var selectedTab: Tab
    
    enum Tab: String {
        case appUsage, timer, home, blacklist, profile
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.black)
                .frame(width: 410, height: 75)
                .cornerRadius(30)
            
            HStack(spacing: 40) {
                navButton(icon: "chart.bar.fill", tab: .appUsage)
                navButton(icon: "alarm", tab: .timer)
                navButton(icon: "house", tab: .home)
                navButton(icon: "lock", tab: .blacklist)
                navButton(icon: "person", tab: .profile)
            }
            .font(.system(size: 20))
        }
    }
    
    private func navButton(icon: String, tab: Tab) -> some View {
        Button {
            selectedTab = tab
        } label: {
            ZStack {
                if selectedTab == tab {
                    Circle()
                        .frame(width: 40, height: 40)
                        .foregroundStyle(.white)
                }
                
                Image(systemName: icon)
                    .foregroundStyle(selectedTab == tab ? .black : .white)
            }
        }
    }
}

#Preview {
    NavBar(selectedTab: .constant(.timer))
}
