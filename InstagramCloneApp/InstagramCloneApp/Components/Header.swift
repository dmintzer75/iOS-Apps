//
//  Header.swift
//  InstagramCloneApp
//
//  Created by Dario Mintzer on 28/02/2023.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack {
            Image("logo")

            Spacer()


            HStack(spacing: 20) {
                Image("add")
                Image("heart")
                Image("messenger")
            }

        }
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
    }
}


struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
