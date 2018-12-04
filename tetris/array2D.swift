//
//  array2D.swift
//  tetris
//
//  Created by Jake Doss on 11/29/18.
//  Copyright © 2018 Jake Doss. All rights reserved.
//

import Foundation


class Array2D<T> {
    let columns: Int
    let rows: Int
    
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        
        array = Array<T?>(repeating: nil, count:rows * columns)
    }
    
    
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[(row * columns) + column]
        }
        set(newValue) {
            array[(row * columns) + column] = newValue
        }
    }
}
