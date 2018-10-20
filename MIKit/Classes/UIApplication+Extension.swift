//
//  UIApplication+Extension.swift
//  MIKit
//
//  Created by MD on 10/17/18.
//
import Foundation

extension UIApplication {
    public static func topViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return topViewController(base: nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(base: selected)
            }
        }
        if let presented = base?.presentedViewController {
            return topViewController(base: presented)
        }
        return base
    }
    
    public static func showModal(view: UIView) {
        guard let rootVC = UIApplication.topViewController() else { return }
        
        let v = UIView(frame: rootVC.view.frame)
        v.backgroundColor = UIColor(white: 0, alpha: 0.5)
        v.alpha = 0
        v.addSubview(view)
        view.center = rootVC.view.center
        rootVC.view.addSubview(v)
        
        UIView.animate(withDuration: 0.3, animations: {
            v.alpha = 1.0
        })
        
    }
    
//    public static func showModal(controller: UIViewController) {
//        guard let rootVC = UIApplication.topViewController() else { return }
//
//        let v = UIView(frame: rootVC.view.frame)
//        v.backgroundColor = UIColor(white: 0, alpha: 0.5)
//        v.alpha = 0
//        v.addSubview(view)
//        view.center = rootVC.view.center
//        rootVC.view.addSubview(v)
//
//        UIView.animate(withDuration: 0.3, animations: {
//            v.alpha = 1.0
//        })
//
//    }
}
