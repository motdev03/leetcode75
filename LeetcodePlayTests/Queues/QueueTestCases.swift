//
//  QueueTestCases.swift
//  LeetcodePlayTests
//
//  Created by Tom Manuel on 14/09/24.
//

import XCTest
@testable import LeetcodePlay

final class QueueTestCases: XCTestCase {

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

    func testRecentCounter() {
        let recentCounter = RecentCounter()
        XCTAssertEqual(recentCounter.ping(1), 1) // requests = [1], range is [-2999,1], return 1
        XCTAssertEqual(recentCounter.ping(100), 2) // requests = [1, 100], range is [-2900,100], return 2
        XCTAssertEqual(recentCounter.ping(3001), 3) // requests = [1, 100, 3001], range is [1,3001], return 3
        XCTAssertEqual(recentCounter.ping(3002), 3) // requests = [1, 100, 3001, 3002], range is [2,3002], return 3
    }
}
