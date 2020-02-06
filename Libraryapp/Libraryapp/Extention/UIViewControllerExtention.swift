//
//  UIViewControllerExtention.swift
//  Libraryapp
//  Created by Muhammad Abdullah Al Mamun on 5/2/20.
//  Copyright © 2020 Muhammad Abdullah Al Mamun. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    // MARK: BACK TO PREVIOUSVIEWCONTROLLER
    func backToPreviusController() {
        
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    // MARK: HIDE CURRENT VIEWCONTROLLER
    func hideCurrentViewController() {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    // Navigate to next viewController
    // MARK:NEXT VIEWCONTROLLER WITHOUT STORYBOARDID
    func nextViewController(viewController: String) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "\(viewController)")
        
        navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    // Navigate to next viewController with custom storyboard id
    // MARK: NEXT VIEWCONTROLLER
    func nextVCwithStoryboardID(storyboardID: String, viewController: String) {
        let storyboard = UIStoryboard(name: storyboardID, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "\(viewController)")
        navigationController?.pushViewController(vc, animated: true)
    }
    
    // Setting any viewController as root view controller
    // MARK: SETROOTVIEW CONTROLLER
    func setAsRootViewController(storyboardID: String, viewController: String) {
        
        let storyboard = UIStoryboard(name: storyboardID, bundle:nil)
        let vc = storyboard.instantiateViewController(withIdentifier: viewController)
        UIApplication.shared.windows.first?.rootViewController = vc
        UIApplication.shared.windows.first?.makeKeyAndVisible()
        
    }
    
    
    // Activity indicator (Full Screen)
    
    /*
     where you want to start animating
     
     activityIndicator()
     indicator.startAnimating()
     indicator.backgroundColor = .white
     
     
     For stop:
     
     indicator.stopAnimating()
     indicator.hidesWhenStopped = true
     */
    
    // MARK: ADD ACTIVITY INDECATOR
    func activityIndicator() {
        
        var indicator = UIActivityIndicatorView()
        
        indicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        indicator.style = UIActivityIndicatorView.Style.medium
        indicator.center = self.view.center
        self.view.addSubview(indicator)
    }
      
      // MARK: ADD SHADOW TO BACKGROUND
      func addShadow() {
          let shadowView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
          shadowView.backgroundColor = .black
          shadowView.alpha = 0.7
          self.view.insertSubview(shadowView, at: 0)
      }
    
//    func animInpopupView1(popUpView:UIView, viewControler:UIViewController) {
//          popUpView.isHidden = false
//          popUpView.transform = CGAffineTransform.init(scaleX: 0.7, y: 0.7)
//          UIView.animate(withDuration: 0.3) {
//            self.popUpView.alpha = 1
//            viewControler.popUpView.transform = CGAffineTransform.identity
//          }
      }
    
    
    
}
