//
//  ProductOfArrayExceptSelf.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 16/09/24.
//

import Foundation
/**
 Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

 You must write an algorithm that runs in O(n) time and without using the division operation.

 Example 1:

 Input: nums = [1,2,3,4]
 Output: [24,12,8,6]
 Example 2:

 Input: nums = [-1,1,0,-3,3]
 Output: [0,0,9,0,0]
  

 Constraints:

 2 <= nums.length <= 105
 -30 <= nums[i] <= 30
 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
  
 Follow up: Can you solve the problem in O(1) extra space complexity? (The output array does not count as extra space for space complexity analysis.)
 */
class ProductOfArrayExceptSelf {
    // Brute force
    // Time complexity = O(n^2)
    // Space complexity = O(n)
    // This failed on submission as it exceeded time limit.
    func productExceptSelfBruteForce(_ nums: [Int]) -> [Int] {
        var productArray: [Int] = []
        for (index, _) in nums.enumerated() {
            var product = 1
            for (innerIndex, innerValue) in nums.enumerated() {
                if innerIndex != index {
                    product *= innerValue
                }
            }
            productArray.append(product)
        }
        return productArray
    }
    
    // https://www.geeksforgeeks.org/a-product-array-puzzle/ - prefix and suffix multiplication
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefix: [Int] = [1]
        var suffix: [Int] = [1]
        var products: [Int] = []
        var index = 1
        while index < nums.count {
            prefix.append(prefix[index - 1] * nums[index - 1])
            index += 1
        }
        index -= 2
        while index >= 0 {
            suffix.insert(suffix[0] * nums[index + 1], at: 0)
            index -= 1
        }
        index = 0
        while index < nums.count {
            products.append(prefix[index] * suffix[index])
            index += 1
        }
        return products
    }
    
    func productExceptSelf2(_ nums: [Int]) -> [Int] {
        var prefix: [Int] = [1]
        var suffix: [Int] = [1]
        var products: [Int] = []
        var startIndex = 1
        var endIndex = nums.count - 2
        while startIndex < nums.count {
            prefix.append(prefix[startIndex - 1] * nums[startIndex - 1])
            suffix.insert(suffix[0] * nums[nums.count - startIndex], at: 0) // ((nums.count - 1) - startIndex) + 1
            startIndex += 1
            endIndex -= 1
        }
        startIndex = 0
        while startIndex < nums.count {
            products.append(prefix[startIndex] * suffix[startIndex])
            startIndex += 1
        }
        return products
    }
    
    func productExceptSelf3(_ nums: [Int]) -> [Int] {
        var product = Array(repeating: 1, count: nums.count)
        var left = 1, right = 1
        for index in 0..<nums.count {
            product[index] *= left
            left *= nums[index]
            product[nums.count - 1 - index] *= right
            right *= nums[nums.count - 1 - index]
        }
        return product
    }
}
