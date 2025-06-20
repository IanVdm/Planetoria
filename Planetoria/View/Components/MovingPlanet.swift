//
//  MovingPlanet.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 20/06/2025.
//

import SwiftUI

struct MovingPlanet: View {
    let planet: Planet
    let size: CGSize
    let planetSize: CGFloat = 100
    let randomInterval = Double.random(in: 5...8)
    
    @State private var position: CGPoint = .zero
    @State private var rotationAngle: Double = 0
    
    var body: some View {
        planet.image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: planetSize, height: planetSize)
            .rotationEffect(.degrees(rotationAngle))
            .position(position)
            .onAppear {
                position = randomPosition()
                withAnimation(
                    .linear(duration: 40)
                    .repeatForever(autoreverses: false)
                ) {
                    rotationAngle = 360
                }
            }
            .onReceive(Timer.publish(every: randomInterval, on: .main, in: .common).autoconnect()) { _ in
                withAnimation(.timingCurve(0.4, 0.0, 0.2, 1.0, duration: randomInterval)) {
                    position = randomPosition()
                }
            }
    }
    
    func randomPosition() -> CGPoint {
        let x = CGFloat.random(in: planetSize/2 ... size.width - planetSize/2)
        let y = CGFloat.random(in: planetSize/2 ... size.height - planetSize/2)
        return CGPoint(x: x, y: y)
    }
}


#Preview {
    MovingPlanet(planet: planets[1], size: CGSize(width: 400, height: 800))
}
