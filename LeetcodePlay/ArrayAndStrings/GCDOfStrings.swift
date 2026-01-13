//
//  GCDOfStrings.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 15/05/24.
//

import Foundation

/**
 For two strings s and t, we say "t divides s" if and only if s = t + t + t + ... + t + t (i.e., t is concatenated with itself one or more times).

 Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.

 Example 1:

 Input: str1 = "ABCABC", str2 = "ABC"
 Output: "ABC"
 Example 2:

 Input: str1 = "ABABAB", str2 = "ABAB"
 Output: "AB"
 Example 3:

 Input: str1 = "LEET", str2 = "CODE"
 Output: ""
  
 Constraints:

 1 <= str1.length, str2.length <= 1000
 str1 and str2 consist of English uppercase letters.
 */
class GCDOfStrings {
    // Brute force approach
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        var smallerString: String
        var biggerString: String
        if str1.count < str2.count {
            smallerString = str1
            biggerString = str2
        } else {
            smallerString = str2
            biggerString = str1
        }
        var divisor = smallerString
        while divisor.count > 0 {
            if biggerString.replacingOccurrences(of: divisor, with: "").isEmpty &&
                smallerString.replacingOccurrences(of: divisor, with: "").isEmpty {
                return divisor
            } else {
                divisor.removeLast()
            }
        }
        return divisor
    }
    
    /// Euklid’s Algorithm to find the GCD of two integers.
    /// https://www.tutorialspoint.com/swift-program-to-find-the-gcd-of-two-given-numbers-using-recursion
    private func getGCDUsingEuklidsAlgorithm(_ int1: Int, int2: Int) -> Int {
        if int2 == 0 {
            return int1
        } else {
            return getGCDUsingEuklidsAlgorithm(int2, int2: (int1 % int2))
        }
    }
    
    func gcdOfStringApproach2(_ str1: String, _ str2: String) -> String {
        guard str1 + str2 == str2 + str1 else {
            return ""
        }
        return str1.prefix(getGCDUsingEuklidsAlgorithm(str1.count, int2: str2.count)).description
    }
}
