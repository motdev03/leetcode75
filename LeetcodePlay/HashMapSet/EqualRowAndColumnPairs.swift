//
//  EqualRowAndColumnPairs.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 02/07/25.
//

import Foundation
/**
Given a 0-indexed n x n integer matrix grid, return the number of pairs (ri, cj) such that row ri and column cj are equal.
A row and column pair is considered equal if they contain the same elements in the same order (i.e., an equal array).
 
Example 1:
Input: grid = [[3,2,1],[1,7,6],[2,7,7]]
Output: 1
Explanation: There is 1 equal row and column pair:
- (Row 2, Column 1): [2,7,7]
 
Example 2:
Input: grid = [[3,1,2,2],[1,4,4,5],[2,4,2,2],[2,4,2,2]]
Output: 3
Explanation: There are 3 equal row and column pairs:
- (Row 0, Column 0): [3,1,2,2]
- (Row 2, Column 2): [2,4,2,2]
- (Row 3, Column 2): [2,4,2,2]
 
Constraints:

n == grid.length == grid[i].length
1 <= n <= 200
1 <= grid[i][j] <= 105
                                                
*/
class EqualRowAndColumnPairs {
    func equalPairsBruteForce(_ grid: [[Int]]) -> Int {
        var equalPairCount = 0
        var row = 0
        while row < grid.count {
            var rowColumn = 0
            var column = 0
            while column < grid.count {
                if grid[row][column] == grid[column][row] {
                    column += 1
                }
            }
            row += 1
        }
        return equalPairCount
    }
    
    func equalPairs(_ grid: [[Int]]) -> Int {
        var rowMap = [[Int]: Int]()
        var columnMap = [[Int]: Int]()
        var matchingPairCount = 0
        for rowIndex in 0..<grid.count {
            rowMap[grid[rowIndex], default: 0] += 1
            var column: [Int] = []
            for columnIndex in 0..<grid.count {
                column.append(grid[columnIndex][rowIndex])
            }
            columnMap[column, default: 0] += 1
        }
        for key in rowMap.keys {
            if columnMap[key, default: 0] > 0 {
                matchingPairCount += rowMap[key, default: 0] * columnMap[key, default: 0]
            }
        }
        return matchingPairCount
    }
}
