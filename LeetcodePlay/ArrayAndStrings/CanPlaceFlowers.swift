//
//  CanPlaceFlowers.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 20/05/24.
//

import Foundation
/**
 You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.

 Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return true if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule and false otherwise.

 Example 1:

 Input: flowerbed = [1,0,0,0,1], n = 1
 Output: true
 Example 2:

 Input: flowerbed = [1,0,0,0,1], n = 2
 Output: false
  
 Constraints:

 1 <= flowerbed.length <= 2 * 104
 flowerbed[i] is 0 or 1.
 There are no two adjacent flowers in flowerbed.
 0 <= n <= flowerbed.length
 */

class CanPlaceFlowers {
    // Brute force - calculate the number of possible pots available for planting.
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var flowers = flowerbed
        var possiblePots = 0
        var index = 0
        while index < flowers.count {
            if flowers[index] == 1 {
                index += 1
            } else {
                var isPreviousPlotEmpty: Bool = true
                var isNextPlotEmpty: Bool = true
                if index != 0 {
                    isPreviousPlotEmpty = flowers[index - 1] == 0
                }
                if index != (flowers.count - 1) {
                    isNextPlotEmpty = flowers[index + 1] == 0
                }
                if isPreviousPlotEmpty && isNextPlotEmpty {
                    flowers[index] = 1
                    possiblePots += 1
                }
            }
            index += 1
        }
        return n <= possiblePots
    }
    
    // A better approach avoiding the extra variables and array manipulation
    // bur for some wierd reason, this took more memory.
    func canPlaceFlowersAlternateApproach(_ flowerbed: [Int], _ n: Int) -> Bool {
        var possiblePots = 0
        var wasZero = true // bool to track previous position state
        for index in 0..<flowerbed.count {
            if flowerbed[index] == 0 {
                if wasZero && (index == (flowerbed.count - 1) || flowerbed[index + 1] == 0) {
                    possiblePots += 1
                    wasZero = false
                } else {
                    wasZero = true
                }
            } else {
                wasZero = false
            }
        }
        
        return n <= possiblePots
    }
}

// 1 0 0 1 0 0 0 1 0 1 0 1
