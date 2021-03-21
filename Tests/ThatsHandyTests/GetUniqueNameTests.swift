//
//  GetUniqueNameTests.swift
//  
//
//  Created by Kamaal M Farah on 21/03/2021.
//

import XCTest
@testable import ThatsHandy

class GetUniqueNameTests: XCTestCase {

    override func setUpWithError() throws { }

    override func tearDownWithError() throws { }

    func testIfNameDoesNotChange() throws {
        let givenName = "Kamaal"
        let allNames = ["John", "Popper", "Hudson"]
        let uniqueName = ThatsHandy.getUniqueName(givenName: givenName, allNames: allNames)
        XCTAssertEqual(uniqueName, givenName)
    }

    func testIfNameChangesToUniqueName() {
        let givenName = "Kamaal"
        let allNames = ["John", "Kamaal", "Hudson"]
        let uniqueName = ThatsHandy.getUniqueName(givenName: givenName, allNames: allNames)
        XCTAssertEqual(uniqueName, "\(givenName)-2")
    }

    func testIfNameChangesToUniqueNameWith2OfTheSameNames() {
        let givenName = "Kamaal"
        let allNames = ["John", "Kamaal", "Kamaal-2", "Hudson"]
        let uniqueName = ThatsHandy.getUniqueName(givenName: givenName, allNames: allNames)
        XCTAssertEqual(uniqueName, "\(givenName)-3")
    }

}
