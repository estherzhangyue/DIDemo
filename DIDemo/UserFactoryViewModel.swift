//
//  UserFactoryViewModel.swift
//  DIDemo
//
//  Created by estzhang on 2023/7/13.
//

import Combine
import Foundation
import Factory

class UserFactoryViewModel: ObservableObject {
    @Published var users: [User]

    @Injected(\.userService) var userService

    init(
    ) {
        self.users = []
        do {
            self.users = try self.userService.fetchUsers()
        } catch {
        }
    }
}
