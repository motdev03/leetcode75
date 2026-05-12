//
//  Boyer-MooreVotingAlgorithm.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 12/05/26.
//

# Boyer-Moore Majority Vote Algorithm

The Boyer-Moore Majority Vote Algorithm is used to find the element that appears more than `n / 2` times in an array.

## Complexity

- Time Complexity: `O(n)`
- Space Complexity: `O(1)`

## Core Idea

If we pair and cancel out different elements, the majority element will still remain because it appears more than half the time.

The algorithm maintains:

- `candidate` → possible majority element
- `count` → tracking balance

Rules:

1. If `count == 0`, choose current element as candidate.
2. If current element matches candidate, increment count.
3. Otherwise, decrement count.

---

# Swift Implementation

```swift
func majorityElement(_ nums: [Int]) -> Int {
    var candidate = 0
    var count = 0

    for num in nums {

        if count == 0 {
            candidate = num
        }

        if num == candidate {
            count += 1
        } else {
            count -= 1
        }
    }

    return candidate
}
