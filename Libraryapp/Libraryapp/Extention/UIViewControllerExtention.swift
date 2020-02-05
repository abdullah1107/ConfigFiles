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
    
    func backToPreviusController() {
        
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    func hideCurrentViewController() {
        
        self.dismiss(animated: true, completion: nil)
    }
    
   
    func nextViewController(viewController:String){
       print(viewController)
        //let controller = UIViewController(coder: viewController)
        let vc = self.storyboard?.instantiateViewController(identifier: "\(viewController)")
        
        navigationController?.pushViewController(vc!, animated: true)

    }
    
    func displayAlertView(title:String,className:UIViewController) {
        let alert = UIAlertController(title: title, message: "", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action:UIAlertAction!) in
            //print("you have pressed the Cancel button")
        }))
        className.present(alert, animated: true, completion: nil)
    }
}
