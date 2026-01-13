//
//  AsteriodCollision.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 05/06/25.
//

import Foundation

/**
 We are given an array asteroids of integers representing asteroids in a row. The indices of the asteriod in the array represent their relative position in space.

 For each asteroid, the absolute value represents its size, and the sign represents its direction (positive meaning right, negative meaning left). Each asteroid moves at the same speed.

 Find out the state of the asteroids after all collisions. If two asteroids meet, the smaller one will explode. If both are the same size, both will explode. Two asteroids moving in the same direction will never meet.

 Example 1:
 Input: asteroids = [5,10,-5]
 Output: [5,10]
 Explanation: The 10 and -5 collide resulting in 10. The 5 and 10 never collide.
 
 [5, 10, ]
 
 Example 2:
 Input: asteroids = [8,-8]
 Output: []
 Explanation: The 8 and -8 collide exploding each other.
 
 Example 3:
 Input: asteroids = [10,2,-5]
 Output: [10]
 Explanation: The 2 and -5 collide resulting in -5. The 10 and -5 collide resulting in 10.
  
 Constraints:

 2 <= asteroids.length <= 104
 -1000 <= asteroids[i] <= 1000
 asteroids[i] != 0
 */

class AsteriodCollision {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack: [Int] = []
        var index = 0
        while index < asteroids.count {
            let asteroid = asteroids[index]
            guard let topElement = stack.last else {
                stack.append(asteroid)
                index += 1
                continue
            }
            guard !isSameSign(asteroid, topElement) else {
                stack.append(asteroid)
                index += 1
                continue
            }
            guard asteroid < 0 else {
                stack.append(asteroid)
                index += 1
                continue
            }
            guard abs(asteroid) != abs(topElement) else {
                stack.removeLast()
                index += 1
                continue
            }
            guard abs(asteroid) > abs(topElement) else {
                index += 1
                continue
            }
            stack.removeLast()
        }
        return stack
    }
    
    func isSameSign(_ a: Int, _ b: Int) -> Bool {
        a >= 0 && b >= 0 || a < 0 && b < 0
    }
}
