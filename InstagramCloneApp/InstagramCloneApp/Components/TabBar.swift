//
//  TabBar.swift
//  InstagramCloneApp
//
//  Created by Dario Mintzer on 28/02/2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                Image("home")
            }

            SearchView(text: "")
                .tabItem {
                Image("search")
            }

            Image("reels")
                .tabItem {
                Image("reels")
            }

            Image("shop")
                .tabItem {
                Image("shop")
            }

            Image("profile")
                .resizable()
                .frame(width: 25, height: 25)
                .cornerRadius(40)
                .tabItem {
                Image(systemName: "person")
            }

        }
           
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
