//
//  MajorityElement.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 12/05/26.
//

import Foundation

/**
 Majority Element

 Given an array nums of size n, return the majority element.

 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

 Example 1:
 Input: nums = [3,2,3]
 Output: 3
 
 Example 2:
 Input: nums = [2,2,1,1,1,2,2]
 Output: 2
  
 Constraints:

 n == nums.length
 1 <= n <= 5 * 104
 -109 <= nums[i] <= 109
 The input is generated such that a majority element will exist in the array.
  
 Follow-up: Could you solve the problem in linear time and in O(1) space?
 */

extension TopInterview150 {
    func majorityElement(_ nums: [Int]) -> Int {
        var countDict = [Int: Int]()
        for num in nums {
            countDict[num, default: 0] += 1
            if countDict[num]! > nums.count / 2 {
                return num
            }
        }
        return 0
    }
    
    func majorityElementBoyerMoore(_ nums: [Int]) -> Int {
        var candidate: Int?
        var count: Int = 0
        for num in nums {
            if count == 0 {
                candidate = num
            }
            
            if candidate == num {
                count += 1
            } else {
                count -= 1
            }
        }
        return candidate!
    }
}
