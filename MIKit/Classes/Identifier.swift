//
//  Identifier.swift
//  TwitSplit-iOS
//
//  Created by MD on 1/31/19.
//  Copyright © 2019 MD. All rights reserved.
//

import Foundation
import UIKit

// MARK: Identifiable protocol
protocol Identifiable {
    static var identifier: String { get }
}

// MARK: Exntension
extension Identifiable {
    static var identifier: String {
        return String(describing: self)
    }
}

// MARK: Conform identifier for UIView and UIViewController
extension UIViewController: Identifiable {}
extension UIView: Identifiable {}
