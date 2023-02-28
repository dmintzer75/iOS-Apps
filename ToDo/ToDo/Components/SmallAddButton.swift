//
//  SmallAddButton.swift
//  ToDo
//
//  Created by Dario Mintzer on 27/02/2023.
//

import SwiftUI

struct SmallAddButton: View {
    var body: some View {
        ZStack {
            
            Circle()
                .frame(width: 50)
                .foregroundColor(.pink)
            Image(systemName: "plus")
                .font(.title).bold()
                .foregroundColor(.white)
            
           
        }
        .frame(height: 50)
    }
}

struct SmallAddButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallAddButton()
    }
}
