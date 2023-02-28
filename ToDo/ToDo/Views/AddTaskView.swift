//
//  AddTaskView.swift
//  ToDo
//
//  Created by Dario Mintzer on 27/02/2023.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManager = RealmManager
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Create a new task")
                .font(.title3).bold()
                .frame(maxWidth: .infinity, alignment: .leading)

            TextField("Enter your task here", text: $title)
                .textFieldStyle(.roundedBorder)

            Button {
                if title != ""{
                    print("task added")
                    realmManager.addTask(taskTile: title)
                }

                dismiss()
            } label: {
                Text("Add Task")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(.pink)
                    .cornerRadius(30)

            }
            Spacer()

        }
            .padding(.top, 80)
            .padding(.horizontal)
            .background(Color("LightPink"))
            .ignoresSafeArea()

    }

}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmManager())
    }
}
