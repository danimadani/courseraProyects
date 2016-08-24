//
//  UIButton_Border.swift
//  TWAIF
//
//  Created by Raúl López Gutiérrez on 7/6/16.
//  Copyright © 2016 TWAIF. All rights reserved.
//

import UIKit
@IBDesignable
class UIButton_Border: UIButton {

    @IBInspectable var cornerRadius : CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderColor : UIColor {
        get {
            return UIColor(CGColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue.CGColor
        }
    }
    
    @IBInspectable var borderWidth : CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        /*self.layer.borderColor = self.borderColor.CGColor
        self.layer.borderWidth = self.borderWidth
        self.layer.cornerRadius = cornerRadius*/
    }
    

}
