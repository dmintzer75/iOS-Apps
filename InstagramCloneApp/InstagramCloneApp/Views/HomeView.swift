//
//  HomeView.swift
//  InstagramCloneApp
//
//  Created by Dario Mintzer on 28/02/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0.0) {

            //MARK: - Stories
            Header()

            //MARK: - Main Content Scrollable
            ScrollView(.vertical, showsIndicators: false) {
                Stories()

                Divider()

                Post()
                Post(image: "dog", description: "I love dogs!")
                Post(image: "dog", description: "I love dogs!")
                Post()
            }
            
            Divider()
       
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
