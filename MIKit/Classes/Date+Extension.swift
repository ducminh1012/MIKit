//
//  Date+Extension.swift
//  MIKit
//
//  Created by MD on 10/20/18.
//

import Foundation

extension Date {
    public func toString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy" //Your date format
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT+0:00")
        let string = dateFormatter.string(from: self)
        
        return string
    }
    
    public func toISOString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let string = dateFormatter.string(from: self)
        
        return string
    }
    
    public func toString(_ format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format //Your date format
        let string = dateFormatter.string(from: self)
        
        return string
    }
}

