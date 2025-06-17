//
//  TimerViewModel.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 22/05/2025.
//

import Foundation

class TimerViewModel: ObservableObject {
    @Published var currentTime: Int = 0
    @Published var progress: Float = 0.0
    @Published var isRunning: Bool = false
    @Published var totalTime: Int = 0
    
    private var timer: Timer?
    
    var planet: Planet
    
    init(planet: Planet) {
        self.planet = planet
        self.totalTime = Int(planet.travelTime)
        self.currentTime = self.totalTime
    }
    
    var formattedTime: String {
        let min = currentTime / 60
        let sec = currentTime % 60
        return String(format: "%02d:%02d", min, sec)
    }
    
    func setPlanet(_ newPlanet: Planet) {
        self.planet = newPlanet
        self.totalTime = Int(newPlanet.travelTime)
        self.currentTime = totalTime
        self.progress = 0
        self.isRunning = false
    }
    
    func startTimer() {
          if isRunning {
              stopTimer()
              return
          }

          isRunning = true
          timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
              guard let self = self else { return }

              self.currentTime -= 1
              self.progress = 1.0 - Float(self.currentTime) / Float(self.totalTime)

              if self.currentTime <= 0 {
                  self.stopTimer()
                  // TODO: Unlock the planet here if desired
              }
          }
      }

      func stopTimer() {
          timer?.invalidate()
          timer = nil
          isRunning = false
          currentTime = totalTime
          progress = 0.0
      }

      func pauseTimer() {
          timer?.invalidate()
          timer = nil
          isRunning = false
      }

      func resumeTimer() {
          startTimer()
      }
}
