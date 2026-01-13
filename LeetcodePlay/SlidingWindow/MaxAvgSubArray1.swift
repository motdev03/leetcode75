//
//  MaxAvgSubArray1.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 25/06/24.
//

import Foundation

/**
 You are given an integer array nums consisting of n elements, and an integer k.

 Find a contiguous subarray whose length is equal to k that has the maximum average value and return this value. Any answer with a calculation error less than 10-5 will be accepted.

 Example 1:

 Input: nums = [1,12,-5,-6,50,3], k = 4
 Output: 12.75000
 Explanation: Maximum average is (12 - 5 - 6 + 50) / 4 = 51 / 4 = 12.75
 Example 2:

 Input: nums = [5], k = 1
 Output: 5.00000
  

 Constraints:

 n == nums.length
 1 <= k <= n <= 105
 -104 <= nums[i] <= 104
 */

class MaxAvgSubArray1 {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var i = 0
        var maxValue: Double = 0
        // set the baseline max(this can't be zero as the max average could be a negative value as well)
        for index in i...(i + k - 1) {
            maxValue += Double(nums[index])
        }
        while i + k - 1 < nums.count {
            var currentSum: Double = 0
            for index in i...(i + k - 1) {
                currentSum += Double(nums[index])
            }
            if currentSum > maxValue {
                maxValue = currentSum
            }
            i += 1
        }
        return maxValue / Double(k)
    }
    
    /// sliding window approach.
    func approachTwo(_ nums: [Int], _ k: Int) -> Double {
        var firstSum = 0
        for i in 0...(k - 1) {
            firstSum += nums[i]
        }
        var maxSum = firstSum
        
        for i in k..<nums.count {
            firstSum += nums[i] - nums[i - k]
            maxSum = max(maxSum, firstSum)
        }
        return Double(maxSum) / Double(k)
    }
}


// [1,12,-5,-6,50,3]
/**
0 -> 3, first sum = 2
 i = 4
 2 + 50 - 1 = 51
 max = 51
 
 i = 5
 51 + 3 - 12  = 42
max = 51
 */

