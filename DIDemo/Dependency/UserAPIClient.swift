//
//  APIClient+Factory.swift
//  DIDemo
//
//  Created by estzhang on 2023/7/13.
//

import Foundation
import Factory

extension Container {
    public var userService: Factory<UserServiceType> { self { UserService() } }
}

public protocol UserServiceType {
    func fetchUsers() throws -> [User]
}

public class UserService: UserServiceType {
    public init() {}
    public func fetchUsers() throws -> [User] {
        [
            User(id: 1, name: "Dan", age: 97),
            User(id: 2, name: "Eric", age: 96),
            User(id: 3, name: "Finn", age: 95),
        ]
    }
}

public class MockService: UserServiceType {
    public init() {}
    public func fetchUsers() throws -> [User] {
        [
            User(id: 1, name: "Lucy", age: 88),
            User(id: 2, name: "Kral", age: 77),
            User(id: 3, name: "Jack", age: 66),
        ]
    }
}

extension Container {
    var contentViewModel: Factory<UserFactoryViewModel> { self { UserFactoryViewModel() } }
}
