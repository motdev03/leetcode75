//
//  ReverseVowelsOfString.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 29/07/24.
//

import Foundation

/**
 Given a string s, reverse only all the vowels in the string and return it.
 The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.

 Example 1:
 Input: s = "hello"
 Output: "holle"
 
 Example 2:
 Input: s = "leetcode"
 Output: "leotcede"
 */

class ReverseVowelsOfString {
    func reverseVowels(_ s: String) -> String {
        var sArray = Array(s)
        var start = 0
        var end = sArray.count - 1
        while start < end {
            if isVowel(c: sArray[start]) && isVowel(c: sArray[end]) {
                sArray.swapAt(start, end)
                start += 1
                end -= 1
            } else if isVowel(c: sArray[start]) {
                end -= 1
            } else if isVowel(c: sArray[end]) {
                start += 1
            } else {
                start += 1
                end -= 1
            }
        }
        return String(sArray)
    }
    
    private func isVowel(c: Character) -> Bool {
        ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"].contains(c)
    }
}
