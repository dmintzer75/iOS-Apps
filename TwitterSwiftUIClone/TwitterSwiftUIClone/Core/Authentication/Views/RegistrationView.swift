//
//  RegistrationView.swift
//  TwitterSwiftUIClone
//
//  Created by Dario Mintzer on 03/03/2023.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var userName = ""
    @State private var fullName = ""
    @State private var password = ""


    var body: some View {
        VStack {
            AuthHeaderView(title: "Get Started", subtitle: "Create your account")
            
            
            //MARK: - Text Field
            VStack(spacing: 40)  {
 
                CustomIputField(imageName: "envelope", placeholderText: "Email", text: $email)
                CustomIputField(imageName: "person", placeholderText: "Username", text: $userName)
                CustomIputField(imageName: "person", placeholderText: "Full name", text: $userName)
                CustomIputField(imageName: "lock", placeholderText: "Password", text: $password)

            }
            .padding(32) // Text Fields


            Spacer()
        }
            .ignoresSafeArea()

    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
