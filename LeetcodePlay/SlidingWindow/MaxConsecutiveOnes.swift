//
//  MaxConsecutiveOnes.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 10/04/25.
//

import Foundation

/**
 Given a binary array nums and an integer k, return the maximum number of consecutive 1's in the array if you can flip at most k 0's.

  

 Example 1:

 Input: nums = [1,1,1,0,0,0,1,1,1,1,0], k = 2
 Output: 6
 Explanation: [1,1,1,0,0,1,1,1,1,1,1]
 Bolded numbers were flipped from 0 to 1. The longest subarray is underlined.
 Example 2:

 Input: nums = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1], k = 3
 Output: 10
 Explanation: [0,0,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1]
 Bolded numbers were flipped from 0 to 1. The longest subarray is underlined.
  

 Constraints:

 1 <= nums.length <= 105
 nums[i] is either 0 or 1.
 0 <= k <= nums.length
 */

class MaxConsecutiveOnes {
    // [1,1,1,0,0,0,1,1,1,1,0]
    func findMaxConsecutiveOnes(_ nums: [Int], k: Int) -> Int {
        var maxCount = 0
        var flipsLeft = k 
        var leftPointer = 0, rightPointer = 0
        while rightPointer < nums.count {
            if nums[rightPointer] == 1 {
                rightPointer += 1
                continue
            }
            if flipsLeft != 0 {
                rightPointer += 1
                flipsLeft -= 1
                continue
            }
            
            let newMaxCount = rightPointer - leftPointer
            maxCount = max(maxCount, newMaxCount)
            if nums[leftPointer] == 0 {
                leftPointer += 1
                flipsLeft += 1
            } else {
                leftPointer += 1
            }
        }
        return max(maxCount, rightPointer - leftPointer)
    }
}
