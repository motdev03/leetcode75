//
//  MaxNumKSumPairs.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 25/06/24.
//

import Foundation

/**
 You are given an integer array nums and an integer k.
 In one operation, you can pick two numbers from the array whose sum equals k and remove them from the array.
 Return the maximum number of operations you can perform on the array.

 Example 1:
 Input: nums = [1,2,3,4], k = 5
 Output: 2
 Explanation: Starting with nums = [1,2,3,4]:
 - Remove numbers 1 and 4, then nums = [2,3]
 - Remove numbers 2 and 3, then nums = []
 There are no more pairs that sum up to 5, hence a total of 2 operations.
 
 Example 2:
 Input: nums = [3,1,3,4,3], k = 6
 Output: 1
 Explanation: Starting with nums = [3,1,3,4,3]:
 - Remove the first two 3's, then nums = [1,4,3]
 There are no more pairs that sum up to 6, hence a total of 1 operation.
 */
class MaxNumKSumPairs {
    func maxOperations(_ nums: [Int], _ k: Int) -> Int { // This was working fine with most of the test cases. But then time exceeded error was returned for a overly big input.
        var numberArray = nums
        var operations = 0
        var i = 0
        var j = i + 1
        while j < numberArray.count {
            if numberArray[i] + numberArray[j] == k {
                operations += 1
                numberArray.remove(at: j) // first remove the right end item, otherwise the index will get corrupted after removing `i`th element.
                numberArray.remove(at: i)
                i = 0
                j = i + 1
            } else {
                j += 1
                if j == numberArray.count { // this iteration is over, remove 'i'th element and start over the next iteration
                    numberArray.remove(at: i)
                    i = 0
                    j = i + 1
                }
            }
        }
        return operations
    }
    
    /**
     Time complexity: O(n)
     Space complexity: O(n)
     This does the job in a single iteration by using a dictionary to keep track of available sums to match with the future items. It's a brilliant approach.
     */
    func approachTwo(_ nums: [Int], _ k: Int) -> Int {
        var unpaired = [Int: Int]()
        var result = 0
        for num in nums {
            let pair = k - num
            if let count = unpaired[pair], count > .zero {
                result += 1
                unpaired[pair] = count - 1
            } else {
                unpaired[num, default: .zero] += 1
            }
        }
        return result
    }
    
    /// Two pointer approach. For this to work the array has to be sorted first.
    /// But the complexity of sorted is O(n log n). And then there is another iteration through array which should be of complexity less than O(n).
    /// Anyways this approach was faster than approach two.
    func approachThree(_ nums: [Int], _ k: Int) -> Int {
        var sortedNums = nums.sorted()
        var left = 0
        var right = nums.count - 1
        var count = 0

        while left < right {
            let sum = sortedNums[left] + sortedNums[right]
            if sum == k  {
                count += 1
                left += 1
                right -= 1

            } else {
                // if sum is greater than k, then reduce the right handside. This is becuase if I increase the left handside I would only get a greater sum than earlier.
                if sum >= k {
                    right -= 1
                } else {
                    left += 1
                }
            }
        }
        return count
    }
}
