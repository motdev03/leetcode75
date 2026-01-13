//
//  MaxNumKSumPairsTests.swift
//  LeetcodePlayTests
//
//  Created by Tom Manuel on 02/08/24.
//

import XCTest
@testable import LeetcodePlay

final class MaxNumKSumPairsTests: XCTestCase {
    let sut = MaxNumKSumPairs()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testMaxOperations() {
        XCTAssertEqual(sut.maxOperations([1,2,3,4], 5), 2)
        XCTAssertEqual(sut.maxOperations([3,1,3,4,3], 6), 1)
    }
}
