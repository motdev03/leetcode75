//
//  ArrayRelated.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 29/09/24.
//

import Foundation


/**
Question:
Given an array of integers, write a Swift function to find all unique triplets in the array that sum up to a given target value. The triplets should be returned in ascending order, and no duplicate triplets should appear in the output.

Input:
An integer array arr of size n (1 <= n <= 1000).
A target sum T.
Output:
A list of unique triplets [a, b, c] where a + b + c = T.
Example:
Example 1:
Input:
arr = [-1, 0, 1, 2, -1, -4]
T = 0

Output:
[[-1, -1, 2], [-1, 0, 1]]

Example 2:
Input:
arr = [1, 2, 3, 4, 5, 6, 7]
T = 12

Output:
[[1, 4, 7], [2, 3, 7], [3, 4, 5]]
*/

func findTriplets(nums: [Int], target: Int) -> [[Int]] {
  let sortedNums = nums.sorted()
  var returnArray = [[Int]]()
  var currentIndex = 0
  while currentIndex < nums.count {
    if currentIndex != 0 && sortedNums[currentIndex] == sortedNums[currentIndex - 1] {
      currentIndex += 1
        continue
    }
    var left = currentIndex + 1
    var right = nums.count - 1
    while left < right {
      let currentValue = sortedNums[currentIndex]
      let leftValue = sortedNums[left]
      let rightValue = sortedNums[right]
      let sum = currentValue + leftValue + rightValue
      if sum == target {
        returnArray.append([currentValue, leftValue, rightValue])
        left += 1
        right -= 1
      } else if sum < target {
        left += 1
      } else {
        right -= 1
      }
    }
    currentIndex += 1
  }
  return returnArray
}

/**
Problem: "Wave Array"
Given an array of integers, rearrange the array into a "wave" form. In wave form, the elements are arranged such that arr[0] >= arr[1] <= arr[2] >= arr[3] <= arr[4] ... (i.e., a greater element is followed by a smaller one, and a smaller element is followed by a greater one).
*/
// [1,2,0,4,5]
// func arrangeInWave(nums: [Int]) -> [Int] {
//   guard nums.count > 1 else {
//     return nums
//   }
//   var nums = nums
//   for index in 0..<nums.count - 1 {
//     if index % 2 == 0 {
//       if (nums[index + 1] > nums[index]) {
//         nums.swapAt(index, index + 1)
//       }
//     } else {
//       if (nums[index + 1] < nums[index]) {
//         nums.swapAt(index, index + 1)
//       }
//     }
//   }
//   return nums
// }

// dump(arrangeInWave(nums: [1,2,3,4,5,6,7,8]))

// map function using generics
extension Array {
  func customMap<T>(block: (Element) -> (T)) -> [T] {
    var newArray = [T]()
    self.forEach({ element in
      newArray.append(block(element))
    })
    return newArray
  }
}

let newArray = [1, 2, 3].customMap(block: { element in
  if element == 1 {
    return "One"
  } else if element == 2 {
    return "Two"
  } else if element == 3 {
    return "Three"
  } else {
    return "Not implemented"
  }
})
