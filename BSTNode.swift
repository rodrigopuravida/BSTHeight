//
//  BSTNode.swift
//  BSTHeight
//
//  Created by Rodrigo Carballo on 3/29/15.
//  Copyright (c) 2015 Rodrigo Carballo. All rights reserved.
//

import Foundation

class BSTNode {
    
    var value : Int = 0
    var left : BSTNode? = BSTNode()
    var right : BSTNode? = BSTNode()
    
    
    func maxHeight(currentHeight: Int) -> Int {
        if (self.left == nil && self.right == nil){
            return currentHeight
        }
        
        var nextHeight : Int = currentHeight + 1
        
        if (self.left == nil) {
            return self.right!.maxHeight(currentHeight)
        }
        else if (self.right == nil) {
            return self.left!.maxHeight(currentHeight)
        }
        
        var leftHeight : Int = self.maxHeight(nextHeight)
        var rightHeight : Int = self.maxHeight(nextHeight)
        

        return max(leftHeight, rightHeight)
}
    
}


