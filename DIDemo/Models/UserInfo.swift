//
//  UserInfo.swift
//  DIDemo
//
//  Created by estzhang on 2023/7/13.
//

import Foundation

public struct User: Equatable, Identifiable, Codable {
    public let id: Int
    public var name = ""
    public var age = 22
}
