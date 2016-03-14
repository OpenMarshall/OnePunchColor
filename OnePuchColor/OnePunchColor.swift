//
//  OnePunchColor.swift
//  OnePuchColor
//
//  Created by 徐开源 on 16/3/14.
//  Copyright © 2016年 徐开源. All rights reserved.
//

import UIKit

extension UIView {
    func punch() {
        self.backgroundColor = UIColor.onePunchColor()
    }
    
    func punchWithInterval (interval:NSTimeInterval) {
        UIView.animateWithDuration (interval, animations: {
            self.punch()
        })
    }
}


extension UIColor {
    class func onePunchColor() -> UIColor {
        let diceFaceCount: UInt32 = UInt32(onePunchColors.count)
        let randomRoll = Int(arc4random_uniform(diceFaceCount))
        return onePunchColors[randomRoll]
    }
}


private let onePunchColors = [
    UIColor(red:0.55, green:0.27, blue:0.64, alpha:1),
    UIColor(red:0.34, green:0.16, blue:0.86, alpha:1),
    UIColor(red:0, green:1, blue:0.4, alpha:1),
    UIColor(red:0.99, green:0.32, blue:0, alpha:1),
    UIColor(red:0.15, green:0.49, blue:0.89, alpha:1),
    UIColor(red:0.99, green:0.72, blue:0, alpha:1),
    UIColor(red:0.06, green:0.2, blue:0.49, alpha:1),
    UIColor(red:0.74, green:0.13, blue:0.11, alpha:1),
    UIColor(red:0.82, green:0.14, blue:0.07, alpha:1),
    UIColor(red:0.1, green:0.07, blue:0.52, alpha:1),
    UIColor(red:0.2, green:0.85, blue:0.72, alpha:1),
    UIColor(red:0.21, green:0.86, blue:0.44, alpha:1),
    UIColor(red:0, green:0.95, blue:0.91, alpha:1),
    UIColor(red:1, green:0.1, blue:0.17, alpha:1),
    UIColor(red:1, green:0.8, blue:0.16, alpha:1),
    UIColor(red:0.98, green:0.58, blue:0.77, alpha:1),
    UIColor(red:1, green:0.35, blue:0.4, alpha:1),
    UIColor(red:0, green:0.58, blue:0.29, alpha:1),
    UIColor(red:0, green:0.78, blue:0.6, alpha:1),
    UIColor(red:0.51, green:0.15, blue:0.99, alpha:1),
    UIColor(red:1, green:0.22, blue:0, alpha:1),
    UIColor(red:0.99, green:0.89, blue:0, alpha:1)]