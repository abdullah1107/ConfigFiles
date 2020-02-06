//  ColorConfigure.swift
//  UserDefaultLogin
//  Created by Muhammad Abdullah Al Mamun on 5/2/20.
//  Copyright © 2020 Muhammad Abdullah Al Mamun. All rights reserved.
//

import Foundation
import UIKit

//#######################################
//lazy var customview = UIView()
//customview.backgroundColor = .customPink
//############################################
extension UIColor {

    static var customPink = UIColor(red: 232/255, green: 68/255, blue: 133/255, alpha: 1)
    static var black = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
    
    public convenience init(hex: Int, alpha: CGFloat = 1.0) {
         let r = CGFloat((hex & 0xFF0000) >> 16) / 255.0
         let g = CGFloat((hex & 0x00FF00) >> 8) / 255.0
         let b = CGFloat(hex & 0x0000FF) / 255.0
         self.init(red: r, green: g, blue: b, alpha: alpha)
     }
}
