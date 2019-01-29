//
//  Random+Extension.swift
//  SegmentTableView
//
//  Created by MD on 12/13/18.
//  Copyright © 2018 MD. All rights reserved.
//

import Foundation

public extension Int
{
    static func random(range: Range<Int> ) -> Int
    {
        var offset = 0
        
        if range.startIndex < 0   // allow negative ranges
        {
            offset = abs(range.startIndex)
        }
        
        let mini = UInt32(range.startIndex + offset)
        let maxi = UInt32(range.endIndex   + offset)
        
        return Int(mini + arc4random_uniform(maxi - mini)) - offset
    }
}
