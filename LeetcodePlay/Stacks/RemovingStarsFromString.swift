//
//  RemovingStarsFromString.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 13/09/24.
//

import Foundation

/**
 You are given a string s, which contains stars *.

 In one operation, you can:

 Choose a star in s.
 Remove the closest non-star character to its left, as well as remove the star itself.
 Return the string after all stars have been removed.

 Note:

 The input will be generated such that the operation is always possible.
 It can be shown that the resulting string will always be unique.
  

 Example 1:

 Input: s = "leet**cod*e"
 Output: "lecoe"
 Explanation: Performing the removals from left to right:
 - The closest character to the 1st star is 't' in "leet**cod*e". s becomes "lee*cod*e".
 - The closest character to the 2nd star is 'e' in "lee*cod*e". s becomes "lecod*e".
 - The closest character to the 3rd star is 'd' in "lecod*e". s becomes "lecoe".
 There are no more stars, so we return "lecoe".
 Example 2:

 Input: s = "erase*****"
 Output: ""
 Explanation: The entire string is removed, so we return an empty string.
  

 Constraints:

 1 <= s.length <= 105
 s consists of lowercase English letters and stars *.
 The operation above can be performed on s.
 */

class RemovingStarsFromString {
    func removeStars(_ s: String) -> String {
        var returnArray = [Character]()
        let inputArray = s.compactMap({ $0 })
        for char in inputArray {
            if char == "*" {
                returnArray.removeLast()
            } else {
                returnArray.append(char)
            }
        }
        return returnArray.reduce(into: "", { (result, character) in
            result += String(character)
        })
    }
    
    /// `removeLast` and `append` can be directly applied on a `String`.
    /// But I observed that execution time increases while working directly with a string rather than an array.
    func removeStars2(_ s: String) -> String {
        var returnString = ""
        for (index, char) in s.enumerated() {
            if char == "*" {
                returnString.removeLast()
            } else {
                returnString.append(char)
            }
        }
        return returnString
    }
}
