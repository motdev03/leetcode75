//
//  RemovingStarsFromStringTests.swift
//  LeetcodePlayTests
//
//  Created by Tom Manuel on 13/09/24.
//

import XCTest
@testable import LeetcodePlay

final class RemovingStarsFromStringTests: XCTestCase {

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
    
    func testRemovingStarsFromString() {
        let sut = RemovingStarsFromString()
        
        let inputString1 = "leet**cod*e"
        let inputString2 = "erase*****"
        XCTAssertEqual(sut.removeStars(inputString1), "lecoe")
        XCTAssertEqual(sut.removeStars(inputString2), "")
    }
    
    func testAsteroidCollision() {
        let sut = AsteriodCollision()
        
        XCTAssertEqual(sut.asteroidCollision([5,10,-5]), [5,10])
        XCTAssertEqual(sut.asteroidCollision([8,-8]), [])
        XCTAssertEqual(sut.asteroidCollision([10,2,-5]), [10])
    }
}
