//
//  ProfileView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 22/05/2025.
//

import SwiftUI

struct ProfileView: View {
    @State private var username = "Bob Joans"
    @State private var email = "Bob@gmail.com"
    @State private var password = "1234567890"
    
    @State private var isEditing = false
    
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
                isEditing.toggle()
            }, label: {
                Text(isEditing ? "Done" : "Edit Profile")
                    .foregroundStyle(.white)
                    .padding()
                    .frame(width: 120, height: 40)
                    .background(.black)
                    .cornerRadius(20)
            })
        }
        .padding(.bottom, 40)
        
        
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
                .disabled(!isEditing)
                .opacity(isEditing ? 1 : 0.2)
            
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
                .disabled(!isEditing)
                .opacity(isEditing ? 1 : 0.2)
            
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
                .disabled(!isEditing)
                .opacity(isEditing ? 1 : 0.2)
            
            Button(action: {
                // TODO: Execute user profile edititng
            }, label: {
                Text("Log out")
                    .foregroundStyle(.white)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(.black)
                    .cornerRadius(20)
            })
            .padding(.top, 20)
        }

        Spacer()
    }
}

#Preview {
    ProfileView()
}
