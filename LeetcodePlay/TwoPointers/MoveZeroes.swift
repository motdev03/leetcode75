//
//  MoveZeroes.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 15/05/24.
//

import Foundation
/**
 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
 Note that you must do this in-place without making a copy of the array.

 Example 1:
 Input: nums = [0,1,0,3,12]
 Output: [1,3,12,0,0]
 
 Example 2:
 Input: nums = [0]
 Output: [0]
  
 Constraints:
 1 <= nums.length <= 104
 -231 <= nums[i] <= 231 - 1
  
 Follow up: Could you minimize the total number of operations done?
 */
class MoveZeroes {
    func moveZeroes(_ nums: inout [Int]) {
        let count = nums.count
        nums.append(contentsOf: nums.filter({ $0 != 0}))
        nums.append(contentsOf: nums.filter({ $0 == 0}))
        nums.removeFirst(count)
    }
    
    /// Two-pointer approach
    func moveZeroesApproach2(_ nums: inout [Int]) {
        var i = 0
        var j = i + 1
        while j < nums.count {
            if nums[i] == 0 && nums[j] != 0 {
                nums[i] = nums[j]
                nums[j] = 0
                i += 1
                j += 1
            } else if nums[i] == 0 && nums[j] == 0 {
                j += 1
            } else {
                i += 1
                j += 1
            }
        }
    }
}
