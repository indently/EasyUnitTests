//
//  UsersTests.swift
//  EasyUnitTestsTests
//
//  Created by Federico on 14/04/2022.
//

import XCTest

class UsersTests: XCTestCase {
    var sut: ViewModel!

    override func setUpWithError() throws {
        sut = ViewModel()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func test_marioInList_returnsTrue() throws {
        let mario = User(id: 0, name: "Mario")
        let luigi = User(id: 1, name: "Luigi")
        let users = [mario, luigi]
        
        let result = sut.containsUser(for: mario, in: users)
        
        XCTAssertTrue(result)
    }
    
    func test_marioInList_returnsFalse() throws {
        let mario = User(id: 0, name: "Mario")
        let luigi = User(id: 1, name: "Luigi")
        let peach = User(id: 2, name: "Peach")
        let users = [luigi, peach]
        
        let result = sut.containsUser(for: mario, in: users)
        
        XCTAssertFalse(result)
    }
    
    func test_LuigiIndex_returnsOne() throws {
        let mario = User(id: 0, name: "Mario")
        let luigi = User(id: 1, name: "Luigi")
        let peach = User(id: 2, name: "Peach")
        let users = [mario, luigi, peach]
        
        let actual = sut.getUserIndex(for: luigi, in: users)
        let expected = 1
        
        XCTAssertEqual(actual, expected)
    }
    
    func test_NoUserFound_returnsMinusOne() throws {
        let mario = User(id: 0, name: "Mario")
        let luigi = User(id: 1, name: "Luigi")
        let peach = User(id: 2, name: "Peach")
        let randomUser = User(id: 20, name: "Random")
        let users = [mario, luigi, peach]
        
        let actual = sut.getUserIndex(for: randomUser, in: users)
        let expected = -1
        
        XCTAssertEqual(actual, expected)
    }
    
    func test_getMarioInfo_returnsString() throws {
        let mario = User(id: 0, name: "Mario")
        let users = [mario]
        
        let actual = sut.getUserInfo(for: mario, in: users)
        let expected = "ID: 0, Name: Mario"
        
        XCTAssertEqual(actual, expected)
    }
    
    func test_userNotInList_returnsErrorString() throws {
        let mario = User(id: 0, name: "Mario")
        let luigi = User(id: 1, name: "Luigi")
        let users = [luigi]
        
        let actual = sut.getUserInfo(for: mario, in: users)
        let expected = "No user found..."
        
        XCTAssertEqual(actual, expected)
    }
    

}
