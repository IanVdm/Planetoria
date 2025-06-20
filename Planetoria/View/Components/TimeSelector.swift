//
//  TimeSelector.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 19/06/2025.
//

import SwiftUI

struct TimeSelector: View {
    @State private var showPicker = false

    @State private var startHour = 9
    @State private var startMinute = 0
    @State private var startPeriod = "AM"

    @State private var endHour = 5
    @State private var endMinute = 0
    @State private var endPeriod = "PM"

    let hours = Array(1...12)
    let minutes = Array(0..<60)
    let periods = ["AM", "PM"]

    var formattedStartTime: String {
        String(format: "%d:%02d %@", startHour, startMinute, startPeriod)
    }

    var formattedEndTime: String {
        String(format: "%d:%02d %@", endHour, endMinute, endPeriod)
    }

    var body: some View {
        ZStack {
            VStack {
                Button(action: {
                    withAnimation {
                        showPicker = true
                    }
                }) {
                    ZStack {
                        Rectangle()
                            .frame(width: 320, height: 80)
                            .foregroundStyle(.white)
                            .cornerRadius(20)
                            .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 5)

                        VStack {
                            Text("Select Time Range")
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                                .foregroundColor(.black)

                            Text("\(formattedStartTime) – \(formattedEndTime)")
                                .font(.title3)
                                .foregroundColor(.black.opacity(0.7))
                        }
                    }
                }
            }

            // Fullscreen Overlay
            if showPicker {
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation {
                            showPicker = false
                        }
                    }

                VStack (spacing: 20) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundStyle(.white)
                            .frame(width: 380, height: 750)
                            .shadow(radius: 10)

                        VStack(spacing: 20) {
                            Text("Set Time Range")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .padding(.top)

                            TimePickerSection(title: "Start Time",
                                              hour: $startHour,
                                              minute: $startMinute,
                                              period: $startPeriod,
                                              hours: hours,
                                              minutes: minutes,
                                              periods: periods)

                            TimePickerSection(title: "End Time",
                                              hour: $endHour,
                                              minute: $endMinute,
                                              period: $endPeriod,
                                              hours: hours,
                                              minutes: minutes,
                                              periods: periods)

                            Button(action: {
                                withAnimation {
                                    showPicker = false
                                }
                            }) {
                                Text("Done")
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(.black)
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .cornerRadius(12)
                            }
                            .padding(.horizontal)
                            .padding(.bottom)
                        }
                        .padding()
                    }
                }
                .transition(.move(edge: .bottom))
                .zIndex(1)
            }
        }
    }
}

struct TimePickerSection: View {
    var title: String
    @Binding var hour: Int
    @Binding var minute: Int
    @Binding var period: String

    let hours: [Int]
    let minutes: [Int]
    let periods: [String]

    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 320, height: 200)
                .foregroundStyle(.white)
                .cornerRadius(20)
                .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 5)

            VStack {
                Text(title)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .padding(.bottom, 20)

                HStack(spacing: 0) {
                    Picker("Hour", selection: $hour) {
                        ForEach(hours, id: \.self) { h in
                            Text("\(h)")
                                .font(.system(size: 32))
                                .tag(h)
                        }
                    }
                    .frame(width: 80)
                    .clipped()

                    Text(":")
                        .font(.system(size: 32))
                        .frame(width: 20)

                    Picker("Minute", selection: $minute) {
                        ForEach(minutes, id: \.self) { m in
                            Text(String(format: "%02d", m))
                                .font(.system(size: 32))
                                .tag(m)
                        }
                    }
                    .frame(width: 80)
                    .clipped()

                    Picker("Period", selection: $period) {
                        ForEach(periods, id: \.self) { p in
                            Text(p)
                                .font(.system(size: 32))
                                .tag(p)
                        }
                    }
                    .frame(width: 80)
                    .clipped()
                }
                .pickerStyle(.wheel)
            }
            .padding(.bottom, 50)
        }
    }
}


#Preview {
    TimeSelector()
}
