//
//  RandomEasyProblemsTests.swift
//  LeetcodePlayTests
//
//  Created by Tom Manuel on 07/05/26.
//

import XCTest
@testable import LeetcodePlay

final class RandomEasyProblemsTests: XCTestCase {
    
    var sut: RandomEasyProblems!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = RandomEasyProblems()
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

    func testLengthOfLastWord() {
        XCTAssertEqual(sut.lenghtOfLastWord("Hello World"), 5)
        XCTAssertEqual(sut.lenghtOfLastWord("   fly me   to   the moon  "), 4)
        XCTAssertEqual(sut.lenghtOfLastWord("luffy is still joyboy"), 6)
        XCTAssertEqual(sut.lenghtOfLastWord("Today is a nice day"), 3)
    }
    
    func testLenghtOfLastWordOptimised() {
        XCTAssertEqual(sut.lengthOfLastWordOptimised("Hello World"), 5)
        XCTAssertEqual(sut.lengthOfLastWordOptimised("   fly me   to   the moon  "), 4)
        XCTAssertEqual(sut.lengthOfLastWordOptimised("luffy is still joyboy"), 6)
        XCTAssertEqual(sut.lengthOfLastWordOptimised("Today is a nice day"), 3)
    }
}
