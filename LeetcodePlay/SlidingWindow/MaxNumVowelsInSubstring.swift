//
//  MaxNumVowelsInSubstring.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 25/06/24.
//

import Foundation

/**
 Given a string s and an integer k, return the maximum number of vowel letters in any substring of s with length k.

 Vowel letters in English are 'a', 'e', 'i', 'o', and 'u'.

 Example 1:
 Input: s = "abciiidef", k = 3
 Output: 3
 Explanation: The substring "iii" contains 3 vowel letters.
 
 Example 2:
 Input: s = "aeiou", k = 2
 Output: 2
 Explanation: Any substring of length 2 contains 2 vowels.
 
 Example 3:
 Input: s = "leetcode", k = 3
 Output: 2
 Explanation: "lee", "eet" and "ode" contain 2 vowels.
  

 Constraints:

 1 <= s.length <= 105
 s consists of lowercase English letters.
 1 <= k <= s.length
 */

class MaxNumVowelsInSubstring {
    /// this is a much more sensible apporach in real practice.
    /// But it is not fast enough that it only beats 24% in leetcode. I think creating an array for vowel and using contains function is slowing it down.
    func maxVowels(_ s: String, _ k: Int) -> Int {
        func isVowel(_ character: Character) -> Bool {
            let vowelsArray: [Character] = ["a", "e", "i", "o", "u"]
            return vowelsArray.contains(character)
        }
        
        let stringArray = Array(s)
        // get the first substring
        var substringVowelOccurance = 0
        for index in 0..<k {
            if isVowel(stringArray[index]) {
                substringVowelOccurance += 1
            }
        }
        var maxVowels = substringVowelOccurance
        for index in k..<stringArray.count {
            if isVowel(stringArray[index - k]) {
                substringVowelOccurance -= 1
            }
            if isVowel(stringArray[index]) {
                substringVowelOccurance += 1
            }
            maxVowels = max(substringVowelOccurance, maxVowels)
        }
        return maxVowels
    }
    
    /// https://leetcode.com/problems/maximum-number-of-vowels-in-a-substring-of-given-length/solutions/3986970/beats-99-cpu-and-99-ram-purrfect-use-of-int8
    func maxVowelsAlternate(_ s: String, _ k: Int) -> Int {
            // Convert the string into a trail of shiny 1s and dull 0s
            let isVowel = s.map { (char: Character) -> Int8 in
                if
                    char == "a" || // == is faster than checking a set
                    char == "e" ||
                    char == "i" ||
                    char == "o" ||
                    char == "u"
                {
                    return 1 // Shiny!
                } else {
                    return 0 // Dull...
                }
            }

            // Calculate the initial sum of shiny numbers for the first k chars
            var sum = isVowel.prefix(k).reduce(Int(0), {$0 + Int($1)})
            var maxSum = sum

            // Use a sliding window to chase the shiny numbers
            var start = 0
            for end in k..<isVowel.count {
                sum += Int(isVowel[end] - isVowel[start])
                maxSum = max(maxSum, sum) // Keep the shiniest count!
                start += 1
            }

            return maxSum
        }
}
