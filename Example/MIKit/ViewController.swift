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
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.backgroundColor = UIColor.red
        
        self.view.addSubview(view)
        
        let button = UIButton(frame: CGRect(x: 300, y: 200, width: 100, height: 50))
        button.backgroundColor = UIColor.green
        button.addTapGestureRecognizer {
            
            view.fadeOut(animation: false, duration: 0, delay: 0, completion: {_ in
                
            })
        }
        
        self.view.addSubview(button)
        
    }
}

