//
//  Post.swift
//  InstagramCloneApp
//
//  Created by Dario Mintzer on 28/02/2023.
//

import SwiftUI

struct Post: View {
    var image: String = "profile"
    var description: String = "I missed travelling to Japan"
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            PostHeader()
            PostContent(image: image)

            Text("Liked by Meng and others")
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)

            Text(description)
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)

            HStack(spacing: 7) {
                Image("profile")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .cornerRadius(15)

                Text("Add comment...")
                    .font(.caption)
                    .foregroundColor(.secondary)

                Spacer()
                Text("😍")
                Text("😂")
                Image(systemName: "plus.circle")
                    .foregroundColor(.secondary)
            }
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
        }
    }
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post()
    }
}
