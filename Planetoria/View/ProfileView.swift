//
//  ProfileView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 22/05/2025.
//

import SwiftUI

struct ProfileView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            // User profile
            Image(systemName: "person")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding(.bottom, 10)
                .padding(.top, 30)
            
            // User name and email
            Text("Bob Joans")
                .font(.title)
                .padding(.bottom, 2)
            Text("bobjoans@gmail.com")
                .padding(.bottom, 20)
            
            Button(action: {
                // Execute user profile edititng
            }, label: {
                Text("Edit Profile")
                    .foregroundStyle(.white)
                    .padding()
                    .frame(width: 120, height: 40)
                    .background(.black)
                    .cornerRadius(20)
            })
        }
        
        Spacer()
        
        VStack(alignment: .leading) {
            // Username input box
            Text("Username")
               .padding(.leading, 20)
           
            TextField("" ,text: $username)
                .padding(.horizontal, 20)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .frame(width: 300, height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1)
                )
                .padding(.bottom, 10)
            
            // Email input box
            Text("Email")
                .padding(.leading, 20)
            
            TextField("" ,text: $email)
                .padding(.horizontal, 20)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .frame(width: 300, height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1)
                )
                .padding(.bottom, 10)
            
            // Password input box
            Text("Password")
                .padding(.leading, 20)
            
            SecureField("" ,text: $password)
                .padding(.horizontal, 20)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .frame(width: 300, height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1)
                )
                .padding(.bottom, 10)
        }
        .padding(.bottom, 20)
        
        Button(action: {
            // Execute user profile edititng
        }, label: {
            Text("Log out / Complete")
                .foregroundStyle(.white)
                .padding()
                .frame(width: 300, height: 50)
                .background(.black)
                .cornerRadius(20)
        })
        
        Spacer()
    }
}

#Preview {
    ProfileView()
}
