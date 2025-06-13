//
//  isFavorite.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 27/05/2025.
//

import SwiftUI

struct isFavorite: View {
    @State var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }, label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
                .font(.system(size: 40))
        })
    }
}

#Preview {
    isFavorite(isSet: true)
}
