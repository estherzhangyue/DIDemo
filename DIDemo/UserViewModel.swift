//
//  UserViewModel.swift
//  DIDemo
//
//  Created by estzhang on 2023/7/13.
//

import Combine
import Foundation
import Dependencies

@MainActor
class UserViewModel: ObservableObject {
    @Published var users: [User]

    @Dependency(\.apiClient) var apiClient

    init(
    ) {
        self.users = []
        do {
            self.users = try self.apiClient.fetchUsers()
        } catch {
        }
    }
}
