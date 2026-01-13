//
//  SlidingWindowTests.swift
//  LeetcodePlayTests
//
//  Created by Tom Manuel on 25/06/24.
//

import XCTest
@testable import LeetcodePlay

final class SlidingWindowTests: XCTestCase {

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
    
    func testMaxAvgSubArray1() {
        let sut = MaxAvgSubArray1()
        let test1 = [1,12,-5,-6,50,3]
        XCTAssertEqual(sut.findMaxAverage(test1, 4), 12.75)
        XCTAssertEqual(sut.findMaxAverage([5], 1), 5)
        XCTAssertEqual(sut.findMaxAverage([-1], 1), -1)
        
        XCTAssertEqual(sut.approachTwo(test1, 4), 12.75)
        XCTAssertEqual(sut.approachTwo([5], 1), 5)
        XCTAssertEqual(sut.approachTwo([-1], 1), -1)
    }
    
    func testMaxVowels() {
        let sut = MaxNumVowelsInSubstring()
        XCTAssertEqual(sut.maxVowels("abciiidef", 3), 3)
        XCTAssertEqual(sut.maxVowels("aeiou", 2), 2)
        XCTAssertEqual(sut.maxVowels("leetcode", 3), 2)
    }
    
    func testMaxConsecutiveOnes() {
        let sut = MaxConsecutiveOnes()
        XCTAssertEqual(sut.findMaxConsecutiveOnes([1,1,1,0,0,0,1,1,1,1,0], k: 2), 6)
        XCTAssertEqual(sut.findMaxConsecutiveOnes([0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1], k: 3), 10)
        XCTAssertEqual(sut.findMaxConsecutiveOnes([0,1,1,0,1,0,1,1,1,1,1], k: 2), 10)
    }
    
    func testLongestSubArrayofOnes() {
        let sut = LongestSubarrayOf1sAfterDeleting()
        XCTAssertEqual(sut.longestSubarray([1,1,0,1]), 3)
        XCTAssertEqual(sut.longestSubarray([0,1,1,1,0,1,1,0,1]), 5)
        XCTAssertEqual(sut.longestSubarray([1,1,1]), 2)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
