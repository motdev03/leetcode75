//
//  IsSubsequence.swift
//  LeetcodePlayTests
//
//  Created by Tom Manuel on 14/06/24.
//

import XCTest
@testable import LeetcodePlay

final class IsSubsequenceTests: XCTestCase {
    let sut = IsSubsequence()

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

    func testIsSubsequence() {
        XCTAssertTrue(sut.isSubsequence("abc", "ahbgdc"), "Hurray they are equal")
        XCTAssertFalse(sut.isSubsequence("axc", "ahbgdc"), "Hurray they are not equal")
        XCTAssertFalse(sut.isSubsequence("acb", "ahbgdc"), "acb is not subsequence of ahbgdc")
        XCTAssertFalse(sut.isSubsequence("b", "c"), "b is not a subsequence of c")
        XCTAssertTrue(sut.isSubsequence("b", "abc"), "b should be a subsequence of abc")
        XCTAssertTrue(sut.isSubsequence("", "abc"), "b should be a subsequence of abc")
    }
    
    func testIsSubSequenceApproachTwo() {
        XCTAssertTrue(sut.isSubSequenceApproachTwo("abc", "ahbgdc"), "Hurray they are equal")
        XCTAssertFalse(sut.isSubSequenceApproachTwo("axc", "ahbgdc"), "Hurray they are not equal")
        XCTAssertFalse(sut.isSubSequenceApproachTwo("acb", "ahbgdc"), "acb is not subsequence of ahbgdc")
        XCTAssertFalse(sut.isSubSequenceApproachTwo("b", "c"), "b is not a subsequence of c")
        XCTAssertTrue(sut.isSubSequenceApproachTwo("b", "abc"), "b should be a subsequence of abc")
        XCTAssertTrue(sut.isSubSequenceApproachTwo("", "abc"), "b should be a subsequence of abc")
    }
}
