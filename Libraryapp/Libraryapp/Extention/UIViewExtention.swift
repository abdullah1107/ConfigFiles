//
//  UIViewExtention.swift
//  Libraryapp
//
//  Created by Muhammad Abdullah Al Mamun on 7/2/20.
//  Copyright © 2020 Muhammad Abdullah Al Mamun. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    
    
    // MARK: PopUp Presentation Animation
      func animInpopupView(popUpView:UIView) {
            popUpView.isHidden = false
            popUpView.transform = CGAffineTransform.init(scaleX: 0.7, y: 0.7)
            UIView.animate(withDuration: 0.3) {
              popUpView.alpha = 1
              popUpView.transform = CGAffineTransform.identity
            }
        }

      
    
}
