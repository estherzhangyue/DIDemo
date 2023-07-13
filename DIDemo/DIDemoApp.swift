//
//  DIDemoApp.swift
//  DIDemo
//
//  Created by estzhang on 2023/7/13.
//

import SwiftUI

@main
struct DIDemoApp: App {
    var body: some Scene {
        WindowGroup {
            // Swift-Dependencies
            // UserListView(model: UserViewModel())

            // Factory
            UserListView()
        }
    }
}
