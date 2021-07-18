//
//  InjectionTests.swift
//  InjectionTests
//
//  Created by Kevinho Morales on 17/7/21.
//

import XCTest
@testable import Injection

class InjectionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let mockHomeManager = MockHomeManager()
        let homeViewModel = HomeViewModel(manager: mockHomeManager)
        XCTAssertEqual(homeViewModel.homeCount, 6)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}


class MockHomeManager: NetworkManagerProtocol {
    func retrieveData(completion: @escaping ([HomeModel]) -> ()) {
        let homeModel = [HomeModel(name: "Kevinho"),
                         HomeModel(name: "Jimena"),
                         HomeModel(name: "Madison"),
                         HomeModel(name: "Freddy"),
                         HomeModel(name: "Nataly"),
                         HomeModel(name: "Jimena")]
        completion(homeModel)
    }
}
