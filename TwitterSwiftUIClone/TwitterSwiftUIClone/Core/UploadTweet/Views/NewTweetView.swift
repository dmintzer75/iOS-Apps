//
//  NewTweetView.swift
//  TwitterSwiftUIClone
//
//  Created by Dario Mintzer on 02/03/2023.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        VStack {

            HStack {
                Button {
                    print("dismiss view")
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemCyan))
                }

                Spacer()

                Button {
                    print("Tweet")
                } label: {
                    Text("Tweet")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemCyan))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
            }
                .padding()
             
             
            HStack(alignment: .top) {
                Circle()
                    .frame(width: 64, height: 64)
                TextArea(text: $caption, "Whats Happening?")
            }
            .padding()
            
         
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
