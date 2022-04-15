//
//  Mode.swift
//  EasyUnitTests
//
//  Created by Federico on 14/04/2022.
//

import Foundation

struct User: Identifiable, Equatable {
    var id: Int
    var name: String
    
    static var sampleUsers: [User] {
        var tempUsers = [User]()
        let names = ["Mario", "Luigi", "Peach", "Toad"]
        
        for i in 1...4 {
            let user = User(id: i, name: names[i-1])
            tempUsers.append(user)
        }
        
        return tempUsers
    }
}
