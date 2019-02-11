//
//  UIScrollView+refreshing.swift
//  MIKit
//
//  Created by MD on 2/11/19.
//

import UIKit

public extension UIScrollView {
    func addPullToRefresh(title: String = "Pull to refresh", action: @escaping () -> Void ) {
        let refreshControl = UIRefreshControl()
        refreshControl.attributedTitle = NSAttributedString(string: title)
        refreshControl.addAction(for: .valueChanged, action)
        if #available(iOS 10.0, *) {
            self.refreshControl = refreshControl
        } else {
            // Fallback on earlier versions
            self.addSubview(refreshControl)
        }
    }
}
