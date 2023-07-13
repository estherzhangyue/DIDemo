//
//  APIClient.swift
//  DIDemo
//
//  Created by estzhang on 2023/7/13.
//

import Dependencies
import Foundation

struct APIClient {
    var fetchUsers: () throws -> [User]
}

extension APIClient: DependencyKey {
    static var liveValue: APIClient {
        return APIClient (
            fetchUsers: {
                [
                    User(id: 1, name: "Lucy", age: 88),
                    User(id: 2, name: "Kral", age: 77),
                    User(id: 3, name: "Jack", age: 66),
                ]
            }
        )
    }
}

extension DependencyValues {
    var apiClient: APIClient {
        get { self[APIClient.self] }
        set { self[APIClient.self] = newValue }
    }
}

extension APIClient: TestDependencyKey {
    static var testValue = Self(
        fetchUsers: {
            [
                User(id: 1, name: "Ann", age: 87),
                User(id: 2, name: "Ben", age: 86),
                User(id: 3, name: "Cral", age: 85),
            ]
        }    )

    static let previewValue = Self(
        fetchUsers: {
            [
                User(id: 1, name: "Dan", age: 97),
                User(id: 2, name: "Eric", age: 96),
                User(id: 3, name: "Finn", age: 95),
            ]
        }
    )
}

