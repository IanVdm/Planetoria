//
//  AppUsageDetailsView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 12/06/2025.
//

import SwiftUI

struct AppUsageDetailsView: View {
    let app: AppUsage
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(app.name)
                .font(.largeTitle)
                .bold()
        }
        .padding()
        .navigationTitle(app.name)
    }
}

#Preview {
    AppUsageDetailsView(app: AppUsage(name: "Instagram"))
}
