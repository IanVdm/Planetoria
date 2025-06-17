//
//  TimerView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 19/05/2025.
//

import SwiftUI

struct TimerView: View {
    @EnvironmentObject var appState: AppState
//    let planet: Planet
    
    @StateObject private var viewModel: TimerViewModel
    @State private var showSettings: Bool = false
    
//    init(planet: Planet) {
//        self.planet = planet
//        _viewModel = StateObject(wrappedValue: TimerViewModel(planet: planet))
//    }
    
    init() {
        // Initialize with dummy planet; will be reset in onAppear
        _viewModel = StateObject(wrappedValue: TimerViewModel(planet: planets.first!))
    }
    
    var body: some View {
        ZStack {
            if let planet = appState.selectedPlanet {
                VStack {
                    Spacer()
                    
                    ZStack {
                        // Background Circle
                        Circle()
                            .stroke(lineWidth: 30)
                            .opacity(0.3)
                            .foregroundColor(.black)
                        
                        // Progress Circle
                        Circle()
                            .trim(from: 0, to: CGFloat(viewModel.progress))
                            .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round))
                            .foregroundColor(.black)
                            .rotationEffect(.degrees(-90))
                            .animation(.linear, value: viewModel.progress)
                        
                        // Center Image
                        planet.image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 160, height: 160)
                    }
                    .frame(width: 260, height: 260)
                    
                    Spacer()
                    
                    // Timer
                    Text(viewModel.formattedTime)
                        .font(.system(size: 80))
                    
                    Spacer()
                    
                    Button( action: {
                        // Execute timer start
                        viewModel.startTimer()
                    }, label: {
                        Text(viewModel.isRunning ? "Stop" : "Start")
                            .font(.title)
                            .foregroundStyle(Color.white)
                            .padding()
                            .frame(width: 180, height: 60)
                            .background(Color.black)
                            .cornerRadius(20)
                    })
                    .padding(.bottom, 20)
                    
                    Button(action: {
                        // Excute timer settings
                        withAnimation {
                            showSettings = true
                        }
                    }, label: {
                        Image(systemName: "gearshape")
                        Text("Settings")
                    })
                    
                    Spacer()
                }
                .onAppear {
                    viewModel.setPlanet(planet)
                }
            } else {
                VStack {
                    Text("No planet selected")
                        .font(.title2)
                        .foregroundColor(.gray)
                }
        }
        
            if showSettings {
                Color.black.opacity(0.4)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        showSettings = false
                    }

                SettingsView {
                    showSettings = false
                }
                .transition(.scale.combined(with: .opacity))
                .zIndex(1)
            }
        }
        .animation(.easeInOut, value: showSettings)
    }
}

#Preview {
    TimerView()
        .environmentObject(AppState())
}
