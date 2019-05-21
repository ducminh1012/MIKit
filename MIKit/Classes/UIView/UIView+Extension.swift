//
//  UIView+Extension.swift
//  MIKit
//
//  Created by MD on 2/11/19.
//

import UIKit

public extension UIView {
    
    func fadeIn(animation: Bool = true, duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in }) {
        
        // Without animation
        guard animation else {
            self.alpha = 1.0
            self.isHidden = false
            return
        }
        
        self.alpha = 0.0
        
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.isHidden = false
            self.alpha = 1.0
        }, completion: completion)
    }
    
    func fadeOut(animation: Bool = true, duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in }) {
        
        // Without animation
        guard animation else {
            self.alpha = 0.0
            self.isHidden = true
            return
        }
        
        self.alpha = 1.0
        
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.alpha = 0.0
        }) { (completed) in
            self.isHidden = true
            completion(true)
        }
    }
}

