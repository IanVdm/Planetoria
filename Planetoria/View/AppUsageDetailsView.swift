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
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Text("Dailly usage past week")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                
                // TODO: Week usage graph
                
                HStack (spacing: 20) {
                    VStack {
                        ZStack {
                            Rectangle()
                                .fill(Color.black)
                                .frame(width: 165, height: 195)
                                .cornerRadius(30)
                            
                            VStack(spacing: 12) {
                                Text("Average daily usage this week")
                                    .foregroundStyle(.white)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(3)
                                    .minimumScaleFactor(0.7)
                                    .padding(.horizontal)
                                    .offset(y: -20)
                                    
                                
                                Text("90 min")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 35))
                                    .fontWeight(.bold)
                            }
                        }
                    }
                    
                    VStack {
                        ZStack {
                            Rectangle()
                                .fill(Color.black)
                                .frame(width: 165, height: 195)
                                .cornerRadius(30)
                            
                            VStack {
                                Text("Average daily visits this week")
                                    .foregroundStyle(.white)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(3)
                                    .minimumScaleFactor(0.7)
                                    .padding(.horizontal)
                                    .offset(y: -20)
                                
                                Text("2 h")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 35))
                                    .fontWeight(.bold)
                            }
                        }
                    }
                }
                .padding()
            }
            .padding()
            .navigationTitle(app.name)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Visits")
                    .fontWeight(.semibold)
                
                HStack(spacing: 80) {
                    VStack {
                        Text("5")
                        Text("Today")
                    }
                    VStack {
                        Text("5")
                        Text("Week")
                    }
                    VStack {
                        Text("5")
                        Text("Month")
                    }
                }
                
                Text("Time usage")
                    .fontWeight(.semibold)
                
                HStack(spacing: 80) {
                    VStack {
                        Text("5")
                        Text("Today")
                    }
                    VStack {
                        Text("5")
                        Text("Week")
                    }
                    VStack {
                        Text("5")
                        Text("Month")
                    }
                }
            }
            .padding(.bottom, 30)
            
            VStack(alignment: .center, spacing: 20) {
                Text("Blacklisted app usage")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
                
                HStack(spacing: 20) {
                    VStack {
                        ZStack {
                            Rectangle()
                                .fill(Color.black)
                                .frame(width: 170, height: 195)
                                .cornerRadius(30)
                            
                            VStack(spacing: 12) {
                                Text("Average daily usage this week")
                                    .foregroundStyle(.white)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(3)
                                    .minimumScaleFactor(0.7)
                                    .padding(.horizontal)
                                    .offset(y: -20)
                                    
                                
                                Text("90 min")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 35))
                                    .fontWeight(.bold)
                            }
                        }
                    }
                    
                    VStack {
                        ZStack {
                            Rectangle()
                                .fill(Color.black)
                                .frame(width: 170, height: 195)
                                .cornerRadius(30)
                            
                            VStack {
                                Text("Average daily visits this week")
                                    .foregroundStyle(.white)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(3)
                                    .minimumScaleFactor(0.7)
                                    .offset(y: -24)
                                
                                Text("2 h")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 35))
                                    .fontWeight(.bold)
                            }
                        }
                    }
                    
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    AppUsageDetailsView(app: AppUsage(name: "Instagram"))
}
