//
//  ContentView.swift
//  DIDemo
//
//  Created by estzhang on 2023/7/13.
//

import SwiftUI
import Dependencies
import Factory

struct UserListView: View {
//    @ObservedObject var model: UserViewModel
    @StateObject var model = resolve(\.contentViewModel)

    var body: some View {
        List {
            ForEach(self.model.users) { user in
                Section {
                    Image("avatar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 64.0, height: 64.0)
                    HStack {
                        Text("Username")
                        Spacer()
                        Text(user.name)
                    }

                    HStack {
                        Text("age")
                        Spacer()
                        Text(String(user.age))
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let _ = Container.shared.userService.register{ MockService() }
        UserListView()
//        UserListView(model: withDependencies({
//            $0.apiClient = .testValue
//        }, operation: {
//            UserViewModel()
//        }))
    }
}
