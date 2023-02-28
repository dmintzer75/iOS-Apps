//
//  Stories.swift
//  InstagramCloneApp
//
//  Created by Dario Mintzer on 28/02/2023.
//

import SwiftUI

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                Story()
                Story(image: "profile2", name: "Dario Mintzer")
                Story(image: "profile3", name: "Dario  dag")
                Story(image: "profile4", name: "Dario  gfr")
                Story(image: "profile5", name: "asdfgf aswerr")
                Story(image: "profile2", name: "Dario Mintzer")
                Story(image: "profile3", name: "Dario  dag")
                Story(image: "profile4", name: "Dario  gfr")
                Story(image: "profile5", name: "asdfgf aswerr")
            }
                .padding(.horizontal, 8)
        }
            .padding(.vertical, 10)
    }
}

struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Stories()
    }
}
