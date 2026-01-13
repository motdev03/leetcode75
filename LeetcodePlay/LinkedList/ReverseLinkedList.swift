//
//  ReverseLinkedList.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 28/09/24.
//

import Foundation

/**
 Given the head of a singly linked list, reverse the list, and return the reversed list.
 
 Example 1:
 Input: head = [1,2,3,4,5]
 Output: [5,4,3,2,1]
 
 Example 2:
 Input: head = [1,2]
 Output: [2,1]
 
 Example 3:
 Input: head = []
 Output: []
  
 Constraints:
 The number of nodes in the list is the range [0, 5000].
 -5000 <= Node.val <= 5000

 Follow up: A linked list can be reversed either iteratively or recursively. Could you implement both?
 */
// 1->2->3->4->5->nil

// 2->1->nil
class ReverseLinkedList {
    func reverseListIteration(_ head: ListNode?) -> ListNode? {
        var current = head // this would shrink to nil
        var previous: ListNode? = nil // nothing before head to start with.
        while current != nil {
            let next = current?.next // save the next value for the next iteration. This will be set as current at the end of this loop.
            current?.next = previous // reverse the next reference to the previous.
            previous = current // this will be used in the next iteration to reverse the next refernce. Refer to the line above this.
            current = next // set current as the next for the next iteration.
        }
        return previous
    }
    
    func reverseListRecursive(_ head: ListNode?) -> ListNode? {
        return reverse(head: head, previousNode: nil)
    }
    
    func reverse(head: ListNode?, previousNode: ListNode?) -> ListNode? {
        guard head != nil else {
            return previousNode
        }
        let next = head?.next
        head?.next = previousNode
        return reverse(head: next, previousNode: head)
    }
}
