//
//  WindowShopperTests.swift
//  WindowShopperTests
//
//  Created by user148657 on 1/18/19.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import XCTest

class WindowShopperTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    //to test logic from Model.Wage.swift
    func testGethours() {
        XCTAssert(Wage.getHours(forWage: 13, forPrice: 700) == 54 )
    }

}
