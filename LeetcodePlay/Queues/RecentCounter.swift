//
//  RecentCounter.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 14/09/24.
//

import Foundation

/**
 You have a RecentCounter class which counts the number of recent requests within a certain time frame.

 Implement the RecentCounter class:

 RecentCounter() Initializes the counter with zero recent requests.
 int ping(int t) Adds a new request at time t, where t represents some time in milliseconds, and returns the number of requests that has happened in the past 3000 milliseconds (including the new request). Specifically, return the number of requests that have happened in the inclusive range [t - 3000, t].
 It is guaranteed that every call to ping uses a strictly larger value of t than the previous call.
 
 Example 1:

 Input
 ["RecentCounter", "ping", "ping", "ping", "ping"]
 [[], [1], [100], [3001], [3002]]
 Output
 [null, 1, 2, 3, 3]

 Explanation
 RecentCounter recentCounter = new RecentCounter();
 recentCounter.ping(1);     // requests = [1], range is [-2999,1], return 1
 recentCounter.ping(100);   // requests = [1, 100], range is [-2900,100], return 2
 recentCounter.ping(3001);  // requests = [1, 100, 3001], range is [1,3001], return 3
 recentCounter.ping(3002);  // requests = [1, 100, 3001, 3002], range is [2,3002], return 3
  
 Constraints:

 1 <= t <= 109
 Each test case will call ping with strictly increasing values of t.
 At most 104 calls will be made to ping.
 */

class RecentCounter {
    
    var pings: [Int] = []
    
    init() {
        
    }
    
    func ping(_ t: Int) -> Int {
        pings.append(t)
        let start = t - 3000
        pings.trimPrefix(while: { $0 < start})
        return pings.count
    }
}

/// This was almost three times faster. I think trimPrefix is much more slower. 
class RecentCounter1 {
    private var arr: [Int]

    init() {
        arr = [Int]()
    }
    
    func ping(_ t: Int) -> Int {
        arr.append(t)
        
        let newRange = t - 3000
        // Remove elements that are out of the [t - 3000, t] range
        while !arr.isEmpty, let first = arr.first, first < newRange {
            arr.removeFirst()
        }
        
        return arr.count
    }
}
