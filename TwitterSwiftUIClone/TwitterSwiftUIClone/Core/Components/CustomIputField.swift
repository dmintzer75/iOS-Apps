//
//  CustomIputField.swift
//  TwitterSwiftUIClone
//
//  Created by Dario Mintzer on 03/03/2023.
//

import SwiftUI

struct CustomIputField: View {
    let imageName: String
    let placeholderText: String
    @Binding var text: String
    
    var body: some View {
        VStack {
            
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                TextField(placeholderText, text: $text)
            }
            
            Divider()
                .background(Color(.darkGray))
            
        }
    }
}

struct CustomIputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomIputField(imageName: "envelope", placeholderText: "Email", text: .constant(""))
    }
}
