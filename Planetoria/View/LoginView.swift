//
//  LoginView.swift
//  Planetoria
//
//  Created by Ian Van der Merwe on 20/05/2025.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        Image("AstronautV3")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 214, height: 244)
            .padding(.bottom, 60)
        
        VStack(alignment: .leading) {
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
            
            HStack {
                Text("Don't have an account yet?")
                    .padding(.leading, 10)
                
                Button(action: {
                    // Execute go to sign-up screen
                }, label: {
                    Text("Sign-up")
                        .foregroundStyle(.blue)
                        .underline()
                })
            }
        }
        .padding(.bottom, 40)
        
        
        Button(action: {
            // Execute user login
        }, label: {
            Text("Log in")
                .font(.system(size: 18))
                .frame(width: 300, height: 50)
                .foregroundStyle(Color.white)
                .background(Color.black)
                .cornerRadius(20)
        })
    }
}

#Preview {
    LoginView()
}

