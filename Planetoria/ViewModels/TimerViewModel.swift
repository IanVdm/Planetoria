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
    
    private var timer: Timer?
    private let totalTime: Int = 20
    
    var formattedTime: String {
        let min = currentTime / 60
        let sec = currentTime % 60
        return String(format: "%02d:%02d", min, sec)
    }
    
    func startTimer() {
        if !isRunning {
            currentTime = 0
            progress = 0.0
            isRunning = true
            
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
                guard let self = self else { return }
                
                self.currentTime += 1
                self.progress = Float(self.currentTime) / Float(self.totalTime)
                
                if self.currentTime >= self.totalTime {
                    self.timer?.invalidate()
                    self.isRunning = false
                }
            }
        } else {
            timer?.invalidate()
            isRunning = false
            currentTime = 0
            progress = 0
        }
    }
}
