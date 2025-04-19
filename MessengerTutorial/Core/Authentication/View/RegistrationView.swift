//
//  RegistrationView.swift
//  MessengerTutorial
//
//  Created by Gaurav Bhatt on 25/12/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var txtEmail = ""
    @State private var txtFullname = ""
    @State private var txtPassword = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            Image("Messager_img")
                .resizable()
                .scaledToFit()
                .frame(width: 180, height: 180)
                .padding()
            
            VStack {
                TextField("Enter your email", text: $txtEmail)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                TextField("Enter your fullname", text: $txtFullname)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                SecureField("Enter your password", text: $txtPassword)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }
          
            
            Button {
                
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
                
            }
            .padding(.vertical)
            Spacer()
            Divider()
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    RegistrationView()
}
