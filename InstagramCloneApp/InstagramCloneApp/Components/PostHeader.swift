//
//  PostHeader.swift
//  InstagramCloneApp
//
//  Created by Dario Mintzer on 28/02/2023.
//

import SwiftUI

struct PostHeader: View {
    var body: some View {
        HStack {

            Image("profile")
                .resizable()
                .frame(width: 30, height: 30, alignment: .top)
                .cornerRadius(40)

            Text("Dario Mintzer")
                .font(.caption)
                .fontWeight(.bold)

            Spacer()

            Image("more")
        }
            .padding(.vertical, 10)
            .padding(.horizontal, 10)
    }
}

struct PostHeader_Previews: PreviewProvider {
    static var previews: some View {
        PostHeader()
    }
}
