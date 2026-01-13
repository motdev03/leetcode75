//
//  FindDifferenceOfTwoArraysTests.swift
//  LeetcodePlayTests
//
//  Created by Tom Manuel on 10/09/24.
//

import XCTest
@testable import LeetcodePlay

final class FindDifferenceOfTwoArraysTests: XCTestCase {

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

    func testFindDifference() {
        let sut = FindDifferenceOfTwoArrays()
        XCTAssertEqual(sut.findDifference([1,2,3], [2,4,6]), [[1,3],[4,6]])
        XCTAssertEqual(sut.findDifference([1,2,3,3], [1,1,2,2]), [[3],[]])
    }
    
    func testUniqueNumberOfOccurrences() {
        let sut = UniqueNumberOfOccurrences()
        XCTAssertEqual(sut.uniqueOccurrences([1,2,3,3]), false)
        XCTAssertEqual(sut.uniqueOccurrences([1,1,2,2]), false)
        XCTAssertEqual(sut.uniqueOccurrences([1,2,2,1,1,3]), true)
        XCTAssertEqual(sut.uniqueOccurrences([1,2]), false)
        XCTAssertEqual(sut.uniqueOccurrences([-3,0,1,-3,1,1,1,-3,10,0]), true)
    }
    
    func testStingsAreClose() {
        let sut = DetermineStringsAreClose()
        XCTAssertEqual(sut.closeStrings("abc", "bca"), true)
        XCTAssertEqual(sut.closeStrings("a", "aa"), false)
        XCTAssertEqual(sut.closeStrings("cabbba", "abbccc"), true)
    }
}
