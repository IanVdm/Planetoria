//
//  TimerView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 19/05/2025.
//

import SwiftUI

struct TimerView: View {
    var progress: Double
    
    var body: some View {
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
                    .trim(from: 0, to: progress)    // show part of the circle
                    .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round))
                    .foregroundColor(.black)
                    .rotationEffect(.degrees(-90))  // start from top
                    .animation(.linear, value: progress)
                
                // Percentage Text
                Image("Planet")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                    .padding(.top, 35)
            }
            .frame(width: 260, height: 260)
            
            Spacer()
            
            Text("00:00")
                .font(.system(size: 80))
            
            Spacer()
            
            Button( action: {
                // Execute timer start
            }, label: {
                Text("Start")
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
    }
}

#Preview {
    TimerView(progress: 0.65)
}
