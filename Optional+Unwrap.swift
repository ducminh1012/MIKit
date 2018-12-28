//
//  Optional+Unwrap.swift
//  MIKit
//
//  Created by MD on 12/28/18.
//

import Foundation

public extension Optional where Wrapped: Collection {
    var isNilOrEmpty: Bool {
        return self?.isEmpty ?? true
    }
}
