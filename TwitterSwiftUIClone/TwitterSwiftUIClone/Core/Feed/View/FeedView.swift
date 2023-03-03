//
//  FeedView.swift
//  TwitterSwiftUIClone
//
//  Created by Dario Mintzer on 01/03/2023.
//

import SwiftUI

struct FeedView: View {

    @State private var showNewTweetView: Bool = false

    var body: some View {

        ZStack (alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0...20, id: \.self) { _ in
                        TweetRowView()
                    }
                }
            }

            Button {
                print("Show new tweet vire...")
                showNewTweetView.toggle()
            } label: {
                Image("quill")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 40, height: 40)
                    .padding(.trailing, 4)
            }
                .frame(width: 60, height: 60)
                .background(Color(.systemCyan))
                .foregroundColor(.white)
                .clipShape(Circle())
                .padding()
                .fullScreenCover(isPresented: $showNewTweetView) {
                NewTweetView()
            }
        }


    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
