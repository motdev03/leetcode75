//
//  LongestSubarrayOf1sAfterDeleting.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 15/04/25.
//

import Foundation

/**
 Given a binary array nums, you should delete one element from it.

 Return the size of the longest non-empty subarray containing only 1's in the resulting array. Return 0 if there is no such subarray.
 
 Example 1:
 Input: nums = [1,1,0,1]
 Output: 3
 Explanation: After deleting the number in position 2, [1,1,1] contains 3 numbers with value of 1's.
 
 Example 2:
 Input: nums = [0,1,1,1,0,1,1,0,1]
 Output: 5
 Explanation: After deleting the number in position 4, [0,1,1,1,1,1,0,1] longest subarray with value of 1's is [1,1,1,1,1].
 Example 3:

 Input: nums = [1,1,1]
 Output: 2
 Explanation: You must delete one element.
  
 Constraints:

 1 <= nums.length <= 105
 nums[i] is either 0 or 1.
 */

class LongestSubarrayOf1sAfterDeleting {
    func longestSubarray(_ nums: [Int]) -> Int {
        var maxLength = 0
        // Number of times 0 can be swapped with 1.
        var binarySwapLeft = 1
        var left = 0, right = 0
        while right < nums.count {
            if nums[right] == 1 {
                right += 1
                continue
            }
            if binarySwapLeft > 0 {
                binarySwapLeft -= 1
                right += 1
                continue
            } else {
                print("maxLength: \(maxLength)")
                print("left: \(left)")
                print("right: \(right)")
                print(binarySwapLeft)
                // calculate the new max length
                maxLength = max(maxLength, right - left)
            }
            // Find the previously swapped position and then increase `binarySwapLeft`
            if nums[left] == 0 {
                left += 1
                binarySwapLeft += 1
            } else {
                left += 1
            }
        }
        // subtract one to account for the deletion of zero. The above approach considers replacing 0 with one.
        return max(maxLength - 1, right - left - 1)
    }
}
