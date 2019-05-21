//
//  ViewController.swift
//  MIKit
//
//  Created by Duc Minh on 09/06/2018.
//  Copyright (c) 2018 Duc Minh. All rights reserved.
//

import UIKit
import MIKit

class ViewController: UIViewController {

    var nilOrEmptyValue: String?
    var nil2: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let arr = [1,2,3,4]
        arr[safe: 1]
    }
}

