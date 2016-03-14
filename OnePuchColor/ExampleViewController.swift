//
//  ExampleViewController.swift
//  OnePuchColor
//
//  Created by 徐开源 on 16/3/14.
//  Copyright © 2016年 徐开源. All rights reserved.
//

import UIKit

class ExampleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        UIView.animateWithDuration (2, animations: {
            self.view.backgroundColor = UIColor.onePunchColor()
        })
    }
}

