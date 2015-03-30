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
    var left : BSTNode?
    var right : BSTNode?
    
    init(value : Int) {
        self.value = value
    }
    
    
    func maxHeight(currentHeight: Int) -> Int {
        
        if (self.left == nil && self.right == nil){
            return currentHeight
        }
        
        var nextHeight : Int = currentHeight + 1
        println("Next height is \(nextHeight)")
        
        if (self.left == nil) {
            return self.right!.maxHeight(nextHeight)
        }
        else if (self.right == nil) {
            return self.left!.maxHeight(nextHeight)
        }
        
        var leftHeight : Int? = self.left?.maxHeight(nextHeight)
        var rightHeight : Int? = self.right?.maxHeight(nextHeight)
        

        return max(leftHeight!, rightHeight!)
}
    
}


