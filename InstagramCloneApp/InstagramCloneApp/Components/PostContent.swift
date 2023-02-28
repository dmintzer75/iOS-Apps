//
//  PostContent.swift
//  InstagramCloneApp
//
//  Created by Dario Mintzer on 28/02/2023.
//

import SwiftUI

struct PostContent: View {
    var image: String = "profile"
    var body: some View {
        VStack(spacing: 0.0) {
            Image(image)
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(contentMode: .fit)

            HStack(spacing: 10) {
                Image("heart")
                Image("comment")
                Image("share")
                Spacer()
                Image("bookmark")
            }
                .padding(10)

        }
    }
}

struct PostContent_Previews: PreviewProvider {
    static var previews: some View {
        PostContent()
    }
}
