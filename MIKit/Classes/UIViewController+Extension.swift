//
//  UIViewController+Extension.swift
//  MIKit
//
//  Created by MD on 2/10/19.
//

import Foundation

public extension UIViewController {
    func showSharePopup(image: UIImage?, text: String? = nil) {
        // set up activity view controller
        var items = [image, text].compactMap({$0})
        
        let activityVC = UIActivityViewController(activityItems: items, applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view // so that iPads won't crash
        
        // present the view controller
        present(activityVC, animated: true, completion: nil)
    }
}
