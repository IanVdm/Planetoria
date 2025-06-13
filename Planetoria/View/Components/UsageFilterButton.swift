//
//  FilterButton.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 12/06/2025.
//

import SwiftUI

struct UsageFilterButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        VStack(spacing: 4) {
            Button(action: action) {
                Text(title)
                    .foregroundStyle(isSelected ? .black : .gray)
                    .fontWeight(isSelected ? .bold : .regular)
            }
            
            Circle()
                .fill(.black)
                .frame(width: 6, height: 6)
                .opacity(isSelected ? 1 : 0)
        }
    }
}

#Preview {
    UsageFilterButton(title: "Instagram", isSelected: true, action: {})
}
