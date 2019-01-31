//
//  Extension.swift
//  TabataTimer
//
//  Created by Nikhil Modi on 1/31/19.
//  Copyright © 2019 Nikhil Dhavale. All rights reserved.
//

import Foundation
import UIKit
extension UIView{
    @IBInspectable var borderWidth : CGFloat {
        set {
            layer.borderWidth = newValue
        }
        
        get {
            return layer.borderWidth
        }
    }
    
    
    @IBInspectable  var borderColor:UIColor
        {
        set{
            self.layer.borderColor = newValue.cgColor
        }
        
        get{
            if layer.borderColor == nil {
                return UIColor.clear
            }
            return UIColor(cgColor: layer.borderColor!)
        }
        
        
    }
    @IBInspectable var borderRadius:CGFloat {
        set{
            layer.cornerRadius = newValue
        }
        get{
            return layer.cornerRadius
        }
    }

    
}
