//
//  TraversalTryOut.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 24/09/24.
//

import Foundation

/// I'm going to write a tree and do a pre-order traversal on it

class TreeNode<Value: CustomStringConvertible> {
    var value: Value
    var leftNode: TreeNode<Value>?
    var rightNode: TreeNode<Value>?
    
    init(value: Value, leftNode: TreeNode<Value>?, rightNode: TreeNode<Value>?) {
        self.value = value
        self.leftNode = leftNode
        self.rightNode = rightNode
    }
    
    //static func p
}



let node = TreeNode(
    value: 1,
    leftNode: .init(
        value: 3,
        leftNode: .init(
            value: 8,
            leftNode: .init(
                value: 9,
                leftNode: nil,
                rightNode: nil
            ),
            rightNode: .init(
                value: 11,
                leftNode: nil,
                rightNode: nil
            )
        ), rightNode: .init(
            value: 6,
            leftNode: .init(
                value: 13,
                leftNode: nil,
                rightNode: nil
            ), rightNode: .init(
                value: 16,
                leftNode: nil,
                rightNode: nil
            )
        )
    ),
    rightNode: .init(
        value: 5,
        leftNode: .init(
            value: 3,
            leftNode: nil,
            rightNode: nil
        ),
        rightNode: .init(
            value: 4,
            leftNode: .init(
                value: 5,
                leftNode: nil,
                rightNode: nil
            ),
            rightNode: .init(
                value: 6,
                leftNode: nil,
                rightNode: nil
            )
        )
    )
)

//preOrderTraversal(treeNode: node)
