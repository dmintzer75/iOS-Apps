//
//  ProfileView.swift
//  TwitterSwiftUIClone
//
//  Created by Dario Mintzer on 01/03/2023.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Environment(\.presentationMode) var mode
    @Namespace var animation
    
    var body: some View {
        VStack(alignment: .leading) {

            HeaderView(mode: mode)

            ActionButtons()

            UserInfoDetails()

            tweetFilterBar
            
            tweetsView
         
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}



struct HeaderView: View {
    var mode:  Binding<PresentationMode>
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemCyan)
                .ignoresSafeArea()

            VStack {
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                        .offset(x: 16, y: 10)

                }


                Circle()
                    .frame(width: 72, height: 72)
                    .offset(x: 16, y: 24)
            }

        }
            .frame(height: 100)
    }
}

struct ActionButtons: View {
    var body: some View {
        HStack(spacing: 12) {
            Spacer()

            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 1))

            Button {

            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 1))
            }

        }
            .padding(.trailing)
    }
}

struct UserInfoDetails: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {

            HStack {
                Text("Heath Ledger")
                    .font(.title2).bold()

                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemCyan))
            }

            Text("@joker")
                .font(.subheadline)
                .foregroundColor(.gray)

            Text("Your moms favorite villain")
                .font(.subheadline)
                .padding(.vertical)

            HStack(spacing: 24) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Gotham, NY")
                }

                HStack {
                    Image(systemName: "link")
                    Text("www.thejoker.com")
                }
            }
                .font(.caption)
                .foregroundColor(.gray)

           UserStatsView()


        }
            .padding(.horizontal)
    }
}

extension ProfileView {
    
    var tweetFilterBar: some View {
        HStack {
            ForEach(TweetFilterViewModel.allCases, id: \.rawValue) { item in

                VStack {
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .black : .gray)

                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(Color(.systemCyan))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                        
                    } else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 3)
                          
                    }
                        
                }
                    .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectedFilter = item
                    }
                }

            }
        }
        .overlay(Divider().offset(x: 0, y: 16))
    }
    
    
    var tweetsView: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...9, id: \.self) { _ in
                    TweetRowView()
                     
                }
            }
        }
    }
}
