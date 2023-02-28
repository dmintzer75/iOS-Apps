//
//  TaskView.swift
//  ToDo
//
//  Created by Dario Mintzer on 27/02/2023.
//

import SwiftUI

struct TaskView: View {
    @EnvironmentObject var realmManager = RealmManager
    var body: some View {

        VStack {

            Text("My Tasks")
                .font(.title3).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()


            List {

            }
        } // VStack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("LightPink"))

    } // Main Body
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
            .environmentObject(RealmManager())
    }
}
