//
//  LoginView.swift
//  TwitterSwiftUIClone
//
//  Created by Dario Mintzer on 03/03/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {

        //MARK: - Parent Container
        VStack {
            
            AuthHeaderView(title: "Hello.", subtitle: "Welcome Back")

            //MARK: - Text fields
            VStack(spacing: 40) {

                CustomIputField(imageName: "envelope", placeholderText: "Email", text: $email)
                CustomIputField(imageName: "lock", placeholderText: "Password", text: $password)

            }
                .padding(.horizontal, 32)
                .padding(.vertical, 44) // Text Fields


            HStack {
                Spacer()

                NavigationLink {
                    Text("Reset password view...")
                } label: {
                    Text("Forgot Password?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemCyan))
                        .padding(.trailing, 24)

                }

            }

            Button {
                print("Sign in here ...")
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemCyan))
                    .clipShape(Capsule())
                    .padding()
            }
                .shadow(color: .gray.opacity(0.5), radius: 10, x: 2, y: 4)


            Spacer()

            NavigationLink {
                RegistrationView()
                    .toolbar(.hidden)
            } label: {
                HStack {
                    Text("Don't have an account?")
                        .font(.footnote)

                    Text("Sign Up")
                        .font(.footnote)
                        .fontWeight(.semibold)

                }
            }
                .padding(.bottom, 43)
                .foregroundColor(Color(.systemCyan))


        }
            .ignoresSafeArea()
            .navigationBarHidden(true) // Parent Container
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
