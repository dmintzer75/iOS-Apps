//
//  Labels.swift
//  InstagramCloneApp
//
//  Created by Dario Mintzer on 28/02/2023.
//

import SwiftUI

struct Labels: View {
    var body: some View {
    
        ScrollView(.horizontal, showsIndicators: false) {
         
            HStack(spacing: 8) {
                Label(text: "Design")
                Label(text: "Code")
                Label(text: "UI")
                Label(text: "Travel")
                Label(text: "Food")
                Label(text: "Dogs")
            }
            .padding(.horizontal, 16)
            .frame(width: .infinity, height: 40)
            
        }
        
    }
}

struct Labels_Previews: PreviewProvider {
    static var previews: some View {
        Labels()
    }
}
