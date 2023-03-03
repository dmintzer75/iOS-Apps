//
//  SideMenuView.swift
//  TwitterSwiftUIClone
//
//  Created by Dario Mintzer on 02/03/2023.
//

import SwiftUI

struct SideMenuView: View {

    var body: some View {

        VStack (alignment: .leading, spacing: 32) {


            VStack (alignment: .leading, spacing: 4) {
                Circle()
                    .frame(width: 50, height: 50)

                Text("Bruce Wayne")
                    .font(.headline).bold()

                Text("@batman")
                    .font(.caption)
                    .foregroundColor(.gray)

                UserStatsView()

            }
                .padding(.leading)
                .padding(.top, 20)



            ForEach(SideMenuViewModel.allCases, id: \.rawValue) {
                item in

                if item == .profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuRowView(viewModel: item)
                    }
                } else if item == .logout {
                   
                    Button {
                        print("handle logout here...")
                    } label: {
                        SideMenuRowView(viewModel: item)
                    }
                } else {
                    SideMenuRowView(viewModel: item)
                }

            }

            Spacer()

        }

    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}

//
//else if item == .logout {
//    print("Should logout!====")
//    SideMenuRowView()
//} else {
//    SideMenuRowView()
//}
