//
//  TimerView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 19/05/2025.
//

import SwiftUI

struct TimerView: View {
    @StateObject private var viewModel = TimerViewModel()
    @State private var showSettings: Bool = false
    
    var body: some View {
        ZStack {
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
                    Image("Planet")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300)
                        .padding(.top, 35)
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
                
                ZStack {
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 380, height: 70)
                        .cornerRadius(30)
                    
                    HStack {
                        Image(systemName: "chart.bar.fill")
                        Image(systemName: "alarm")
                            .padding(.leading, 40)
                        Image(systemName: "house")
                            .padding(.horizontal, 40)
                        Image(systemName: "lock")
                            .padding(.trailing, 40)
                        Image(systemName: "person")
                    }
                    .foregroundStyle(Color.white)
                    .font(.system(size: 20))
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
}
