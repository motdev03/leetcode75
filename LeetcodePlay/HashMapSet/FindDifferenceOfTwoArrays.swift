//
//  FindDifferenceOfTwoArrays.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 04/09/24.
//

import Foundation

/**
 Given two 0-indexed integer arrays nums1 and nums2, return a list answer of size 2 where:
 
 answer[0] is a list of all distinct integers in nums1 which are not present in nums2.
 answer[1] is a list of all distinct integers in nums2 which are not present in nums1.
 Note that the integers in the lists may be returned in any order.

 Example 1:

 Input: nums1 = [1,2,3], nums2 = [2,4,6]
 Output: [[1,3],[4,6]]
 Explanation:
 For nums1, nums1[1] = 2 is present at index 0 of nums2, whereas nums1[0] = 1 and nums1[2] = 3 are not present in nums2. Therefore, answer[0] = [1,3].
 For nums2, nums2[0] = 2 is present at index 1 of nums1, whereas nums2[1] = 4 and nums2[2] = 6 are not present in nums2. Therefore, answer[1] = [4,6].
 Example 2:

 Input: nums1 = [1,2,3,3], nums2 = [1,1,2,2]
 Output: [[3],[]]
 Explanation:
 For nums1, nums1[2] and nums1[3] are not present in nums2. Since nums1[2] == nums1[3], their value is only included once and answer[0] = [3].
 Every integer in nums2 is present in nums1. Therefore, answer[1] = [].
  
 Constraints:

 1 <= nums1.length, nums2.length <= 1000
 -1000 <= nums1[i], nums2[i] <= 1000
 */

class FindDifferenceOfTwoArrays {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var nums1Dict = nums1.reduce(into: [Int: Int](), { (result, num) in
            result[num] = 1
        })
        // [1:0, 2:1, 3:0]
        var nums2Dict = nums2.reduce(into: [Int: Int](), { (result, num) in
            result[num] = 1
        })
        //[2:1, 4:0, 6:1]
        let num1UniqueArray = nums1.reduce(into: [Int](), { (result, num) in
            if nums2Dict[num] == nil, nums1Dict[num, default: 0] > 0 {
                result.append(num)
                nums1Dict[num] = 0 // to avoid duplicate values
            }
        })
        let num2UniqueArray = nums2.reduce(into: [Int](), { (result, num) in
            if nums1Dict[num] == nil, nums2Dict[num, default: 0] > 0 {
                result.append(num)
                nums2Dict[num] = 0 // to avoid duplicate values
            }
        })
        return [num1UniqueArray, num2UniqueArray]
    }
}
// nums1 = [1,2,3], nums2 = [2,4,6]
// [[1, 3], []]") is not equal to ("[[1, 3], [4, 6]]
/// [[1, 2], []]
