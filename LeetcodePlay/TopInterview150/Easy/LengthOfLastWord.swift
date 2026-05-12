//
//  LengthOfLastWord.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 07/05/26.
//

import Foundation

/**
 58. Length of Last Word
 
 Given a string s consisting of words and spaces, return the length of the last word in the string.

 A word is a maximal substring consisting of non-space characters only.

 Example 1:
 Input: s = "Hello World"
 Output: 5
 Explanation: The last word is "World" with length 5.
 
 Example 2:
 Input: s = "   fly me   to   the moon  "
 Output: 4
 Explanation: The last word is "moon" with length 4.
 Example 3:

 Input: s = "luffy is still joyboy"
 Output: 6
 Explanation: The last word is "joyboy" with length 6.
  
 Constraints:
 1 <= s.length <= 104
 s consists of only English letters and spaces ' '.
 There will be at least one word in s.
 */

extension TopInterview150 {
    func lenghtOfLastWord(_ string: String) -> Int {
        var lastWordLength = 0
        let stringArray = Array(string.trimmingCharacters(in: .whitespaces))
        var currentIndex = stringArray.count - 1
        while currentIndex >= 0, stringArray[currentIndex] != " " {
            lastWordLength += 1
            currentIndex -= 1
        }
        return lastWordLength
    }
    
    func lengthOfLastWordOptimised(_ string: String) -> Int {
        var length = 0
        for char in string.reversed() {
            if char != " " {
                length += 1
            } else if length > 0 {
                return length
            }
        }
        return length
    }
}
