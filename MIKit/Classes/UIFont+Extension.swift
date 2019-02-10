//
//  UIFont+Extension.swift
//  MIKit
//
//  Created by MD on 2/5/19.
//

public extension UIFont {
    static func printFonts() {
        for name in UIFont.familyNames {
            print(UIFont.fontNames(forFamilyName: name))
        }
    }
}
