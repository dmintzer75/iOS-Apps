//
//  ContentView.swift
//  ToDo
//
//  Created by Dario Mintzer on 27/02/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView = false

    var body: some View {


        ZStack(alignment: .bottomTrailing) {

            TaskView()
                .environmentObject(realmManager)
       

            SmallAddButton()
                .padding()
                .onTapGesture {
                showAddTaskView.toggle()
            }
        }
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView()
                .environmentObject(realmManager)
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .background(Color("LightPink"))



    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
