//
//  AuthHeaderView.swift
//  TwitterSwiftUIClone
//
//  Created by Dario Mintzer on 03/03/2023.
//

import SwiftUI

struct AuthHeaderView: View {
    
    let title: String
    let subtitle: String
    
    var body: some View {
        //MARK: - Header
        VStack(alignment: .leading, spacing: 10) {

            HStack { Spacer() }

            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)

            Text(subtitle)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.systemCyan))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight])) // Header
    }
}

struct AuthHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaderView(title: "Hello.", subtitle: "Welcome Back")
    }
}
