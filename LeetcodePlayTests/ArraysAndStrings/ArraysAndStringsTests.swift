//
//  ReverseVowelsOfStringTests.swift
//  LeetcodePlayTests
//
//  Created by Tom Manuel on 30/07/24.
//

import XCTest
@testable import LeetcodePlay

final class ArraysAndStringsTests: XCTestCase {
    
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

    func testLargestAltitude() {
        let sut = ReverseVowelsOfString()
        XCTAssertEqual(sut.reverseVowels("leetcode"), "leotcede")
        XCTAssertEqual(sut.reverseVowels("hello"), "holle")
    }
    
    func testProductExceptSelfBruteForce() {
        let sut = ProductOfArrayExceptSelf()
        XCTAssertEqual(sut.productExceptSelfBruteForce([1,2,3,4]), [24,12,8,6])
        XCTAssertEqual(sut.productExceptSelfBruteForce([-1,1,0,-3,3]), [0,0,9,0,0])
    }
    
    func testProductExceptSelf() {
        let sut = ProductOfArrayExceptSelf()
        XCTAssertEqual(sut.productExceptSelf([1,2,3,4]), [24,12,8,6])
        XCTAssertEqual(sut.productExceptSelf([-1,1,0,-3,3]), [0,0,9,0,0])
    }
    
    func testProductExceptSelf2() {
        let sut = ProductOfArrayExceptSelf()
        XCTAssertEqual(sut.productExceptSelf2([1,2,3,4]), [24,12,8,6])
        XCTAssertEqual(sut.productExceptSelf2([-1,1,0,-3,3]), [0,0,9,0,0])
    }
    
    func testProductExceptSelf3() {
        let sut = ProductOfArrayExceptSelf()
        XCTAssertEqual(sut.productExceptSelf3([1,2,3,4]), [24,12,8,6])
        XCTAssertEqual(sut.productExceptSelf3([-1,1,0,-3,3]), [0,0,9,0,0])
    }
}
