//
//  ModelManager.swift
//  EasyUnitTests
//
//  Created by Federico on 15/04/2022.
//

import Foundation

class ModelManager {
    
    func containsUser(for user: User, in users: [User]) -> Bool {
        return users.contains { $0.id == user.id}
    }
    
    func getUserIndex(for user: User, in users: [User]) -> Int {
        return users.firstIndex { $0.id == user.id } ?? -1
    }
    
    func getUserInfo(for user: User, in users: [User]) -> String {
        if let user = users.first(where: { $0.id == user.id }) {
            return "ID: \(user.id), Name: \(user.name)"
        } else {
           return "No user found..."
        }
    }
    
    func arrangeUsersByName(users: [User]) -> [User] {
        return users.sorted { $0.name < $1.name }
    }
}
