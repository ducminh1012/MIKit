//
//  UIView+xib.swift
//  MIKit
//
//  Created by MD on 2/5/19.
//

public extension UIView {
    
    class func fromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
    
}
