//
//  Array2D.swift
//  Swiftris
//
//  Created by JCrewe on 4/3/17.
//  Copyright © 2017 Bloc. All rights reserved.
//

class Array2D<T> {
    
    let columns : Int
    let rows: Int
    
    var array: Array<T?>
    
    init(columns:Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        
        array = Array<T?>(repeating: nil, count:rows * columns)
    }
    
    subscript(column:Int, row:Int) ->T? {
        get {
            return array[(row*column) + column]
    }
        set(newValue) {
            array[(row * column) + column] = newValue
        }
}
    
    
    
}
