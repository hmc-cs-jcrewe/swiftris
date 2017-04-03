//
//  Block.swift
//  Swiftris
//
//  Created by JCrewe on 4/3/17.
//  Copyright © 2017 Bloc. All rights reserved.
//

import SpriteKit

let NumberOfColors: UInt32 = 6

enum BlockColor: Int, CustomStringConvertible {
    
    case Blue = 0, Orange, Purple, Red, Teal, Yellow
    
    var spriteName: String{
        
        switch self {
            
        case .Blue:
            
            return "blue"
            
        case .Orange:
            
            return "orange"
            
        case .Purple:
            
            return "purple"
            
        case .Red:
            
            return "red"
            
        case .Teal:
            
            return "teal"
            
        case .Yellow:
            
            return "yellow"
            
        }
    }
    
    var description: String {
        
        return self.spriteName
        
    }
    
    static func random() -> BlockColor {
    
    return BlockColor(rawValue:Int(arc4random_uniform(NumberOfColors)))!
    
    }
}
