//
//  UIViewExtention.swift
//  Libraryapp
//  Created by Muhammad Abdullah Al Mamun on 7/2/20.
//  Copyright © 2020 Muhammad Abdullah Al Mamun. All rights reserved.
//

import Foundation
import UIKit
#if canImport(UIKit)

extension UIView{
    
    
    // MARK:- PopUp Presentation Animation
    func animInpopupView(popUpView:UIView) {
        popUpView.isHidden = false
        popUpView.transform = CGAffineTransform.init(scaleX: 0.7, y: 0.7)
        UIView.animate(withDuration: 0.3) {
            popUpView.alpha = 1
            popUpView.transform = CGAffineTransform.identity
        }
    }
    
    // MARK:-FILL SUPERVIEW
    func fillSuperview() {
        print("this is inside fillSuperView")
        guard let superview = self.superview else { return }
        //superview.backgroundColor = .green
        translatesAutoresizingMaskIntoConstraints = superview.translatesAutoresizingMaskIntoConstraints
        if translatesAutoresizingMaskIntoConstraints {
            autoresizingMask = [.flexibleWidth, .flexibleHeight]
            frame = superview.bounds
        } else {
            NSLayoutConstraint.activate([
                topAnchor.constraint(equalTo: superview.topAnchor),
                bottomAnchor.constraint(equalTo: superview.bottomAnchor),
                leftAnchor.constraint(equalTo: superview.leftAnchor),
                rightAnchor.constraint(equalTo: superview.rightAnchor)
            ])
        }
   
    }
    //MARK:- TAKE SCREEN SHORT
     func takeScreenshot() -> UIImage? {
         UIGraphicsBeginImageContextWithOptions(bounds.size, false, UIScreen.main.scale)
         drawHierarchy(in: bounds, afterScreenUpdates: true)
         let image = UIGraphicsGetImageFromCurrentImageContext()
         UIGraphicsEndImageContext()

         return image
     }
    
}#endif // canImport(UIKit)
