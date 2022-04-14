//
//  ViewModel.swift
//  EasyUnitTests
//
//  Created by Federico on 14/04/2022.
//

import Foundation

final class ViewModel: ObservableObject {
    private let converter = Converters()
    
    @Published var text = "" {
        didSet {
            self.convertedText = converter.convertEuroToUSD(euro: text)
        }
    }
    
    @Published var convertedText = "$0"
    @Published var users = [User]()
    
    init() {
        self.users = User.sampleUsers
    }
    
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
    
    
}
