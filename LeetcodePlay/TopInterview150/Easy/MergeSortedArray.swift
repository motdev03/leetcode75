//
//  MergeSortedArray.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 11/05/26.
//

import Foundation

/**
 Merge Sorted Array

 Hint
 You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.

 Merge nums1 and nums2 into a single array sorted in non-decreasing order.

 The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.

 Example 1:
 Input: nums1 = [1,4,5,0,0,0], m = 3, nums2 = [2,3,6], n = 3
 Output: [1,2,2,3,5,6]
 Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
 The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from nums1.
 
 Example 2:
 Input: nums1 = [1], m = 1, nums2 = [], n = 0
 Output: [1]
 Explanation: The arrays we are merging are [1] and [].
 The result of the merge is [1].
 
 Example 3:
 Input: nums1 = [0], m = 0, nums2 = [1], n = 1
 Output: [1]
 Explanation: The arrays we are merging are [] and [1].
 The result of the merge is [1].
 Note that because m = 0, there are no elements in nums1. The 0 is only there to ensure the merge result can fit in nums1.

 Constraints:
 nums1.length == m + n
 nums2.length == n
 0 <= m, n <= 200
 1 <= m + n <= 200
 -109 <= nums1[i], nums2[j] <= 109
  
 Follow up: Can you come up with an algorithm that runs in O(m + n) time?
 */

extension TopInterview150 {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var index1 = m - 1
        var index2 = n - 1
        while index2 >= 0 {
            if index1 < 0 { // all nums2 items are lesser than nums1 items and the space for nums2 items are already created.
                nums1[index2] = nums2[index2]
                index2 -= 1
            } else if nums2[index2] > nums1[index1] {
                nums1[index1 + index2 + 1] = nums2[index2]
                index2 -= 1
            } else {
                nums1[index1 + index2 + 1] = nums1[index1]
                index1 -= 1
            }
        }
    }
}
