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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let now = Date()
        
        print("Now is \(now.toString())")
        
        print(nilOrEmptyValue)
        print(nilOrEmptyValue.isNilOrEmpty)
        
        let colorFromHex = UIColor(hex: "#4286f4")
        view.backgroundColor = colorFromHex
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

