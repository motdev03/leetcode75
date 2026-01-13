//
//  ContainerWithMostWater.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 15/06/24.
//

import Foundation

/**
 You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

 Find two lines that together with the x-axis form a container, such that the container contains the most water.

 Return the maximum amount of water a container can store.

 Notice that you may not slant the container.
 */

class ContainerWithMostWater {
    func maxArea(_ height: [Int]) -> Int {
        var maxArea = 0
        var i = 0
        var j = height.count - 1
        while i < j {
            let width = j - i
            maxArea = max(
                maxArea,
                min(height[i], height[j]) * width
            )
            if height[i] > height[j] {
                j -= 1
            } else {
                i += 1
            }
        }
        return maxArea
    }
}

/**
 Discussion - https://leetcode.com/problems/container-with-most-water/description/comments/1567057
 The proof of why the solution works is important to understand. Following is its summary:
 
 Consider we start with i = 0 and j = height.size() - 1. That is, i points to the first column and j points to the last column.
 Now suppose that h(i)>h(j) (we are not loosing generality by this assumption)
 We calculate the water capacity for the i, j. It will be h(j)*(j-i).
 Now see that if we fix j at height.size() - 1 and vary i, we cannot get a greater water capacity. Why?
 capacity = min of both heights * width between them. Since capacity is the product of these two terms, we will look at each term individually.
 - First about the width. It is easy to see that for all other i's (i = 1, 2,... ,height.size()-2) we will have a lesser width.
 - Second, the height will be the minimum of the column at i and at j, i.e. min(h(i),h(j)). But this value will be always less than h(j)
 - So both factors in the calculation of the capacity will be smaller and hence we can skip considering all the cases where i = 1, 2, 3, ..., height.size()-2 and j = height.size()-1
 Which basically means that we can simply move j to j-1.
 This is how I understood it and I hope this explanation makes it easy to understand.
 */
