//
//  main.swift
//  BSTHeight
//
//  Created by Rodrigo Carballo on 3/29/15.
//  Copyright (c) 2015 Rodrigo Carballo. All rights reserved.
//

import Foundation

//Need to implement the testing

//root node
var rootNode : BSTNode = BSTNode(value: 0)
var leftRootNode : BSTNode = BSTNode(value: 1)
var rightRootNode : BSTNode = BSTNode(value: 1)
var leftRootNodeChildLeft : BSTNode = BSTNode(value: 2)
var leftRootNodeChildRight : BSTNode = BSTNode(value: 2)
var rightRootNodeChildLeft : BSTNode = BSTNode(value: 3)

rootNode.left = leftRootNode
rootNode.right = rightRootNode
leftRootNode.left = leftRootNodeChildLeft
leftRootNode.right = leftRootNodeChildRight
rightRootNode.left = rightRootNodeChildLeft

var maxHeight : Int = rootNode.maxHeight(0)
println(maxHeight)

