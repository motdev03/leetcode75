//
//  IsSubsequence.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 20/05/24.
//

import Foundation

/**
 Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

 A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

 Example 1:
 Input: s = "abc", t = "ahbgdc"
 Output: true
 
 Example 2:
 Input: s = "axc", t = "ahbgdc"
 Output: false
  
 Constraints:
 0 <= s.length <= 100
 0 <= t.length <= 104
 s and t consist only of lowercase English letters.
  

 Follow up: Suppose there are lots of incoming s, say s1, s2, ..., sk where k >= 109, and you want to check one by one to see if t has its subsequence. In this scenario, how would you change your code?
 */
class IsSubsequence {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        guard s.count <= t.count else {
            return false
        }
        let sArray = Array(s)
        var tArray = Array(t)
        
        var index = 0
        while index < sArray.count && index < tArray.count {
            guard sArray[index] != tArray[index] else {
                index += 1
                continue
            }
            tArray.remove(at: index)
            while index < tArray.count {
                guard sArray[index] != tArray[index] else {
                    break
                }
                
                tArray.remove(at: index)
            }
            index += 1
        }
        if tArray.count > sArray.count {
            tArray = tArray.dropLast(tArray.count - sArray.count)
        }
        return sArray == tArray || sArray.count == 0 // An empty string is a subsequence of any other string.
    }
    
    // Two pointer approach
    func isSubSequenceApproachTwo(_ s: String, _ t: String) -> Bool {
        guard s.count <= t.count else {
            return false
        }
        guard !s.isEmpty else {
            return true // an empty string is always a substring of any other string
        }
        let sArray = Array(s)
        let tArray = Array(t)
        
        var i = 0
        var j = 0
        while i < sArray.count, j < tArray.count {
            guard sArray[i] != tArray[j] else {
                if i == sArray.count - 1 { return true }
                i += 1
                j += 1
                continue
            }
            j += 1
        }
        return false
    }
}

