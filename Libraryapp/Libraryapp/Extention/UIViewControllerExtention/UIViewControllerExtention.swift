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
     // }
    
    // Customizing Navigation Bar Items
    
    func customizingNavBarItems(rightNavBarButtonTitle: String?, rightNavBarButtonColor: UIColor?) {
        
        navigationItem.title = "My List"
        
        let editBarButtonItem = UIBarButtonItem(title: rightNavBarButtonTitle, style: .plain, target: self, action: #selector(doSomeActionOnNavigationItemButtonPressed))
        navigationItem.rightBarButtonItem  = editBarButtonItem
        editBarButtonItem.tintColor = rightNavBarButtonColor
        
        let appearance = UINavigationBarAppearance()
        appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        
        navigationItem.standardAppearance = appearance
        navigationItem.scrollEdgeAppearance = appearance
    }
    
    @objc func doSomeActionOnNavigationItemButtonPressed() {
        //
    }
    
    
    
    
    // Alert the user
    
    func alertUser(alertTitle: String, alertMessage: String, actionTitle: String) {
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        let action = UIAlertAction(title: actionTitle, style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    
    
    // Redirect user to youtube
    
    func playInYoutube(youtubeId: String) {
        
        //        Don't forget to add youtube scheme to LSApplicationQueriesSchemes in Info.plist (otherwise canOpenURL will always fail)
        //        <key>LSApplicationQueriesSchemes</key>
        //        <array>
        //            <string>youtube</string>
        //        </array>
        
        if let youtubeURL = URL(string: "youtube://\(youtubeId)"),
            UIApplication.shared.canOpenURL(youtubeURL) {
            // redirect to app
            UIApplication.shared.open(youtubeURL, options: [:], completionHandler: nil)
        } else if let youtubeURL = URL(string: "https://www.youtube.com/watch?v=\(youtubeId)") {
            // redirect through safari
            UIApplication.shared.open(youtubeURL, options: [:], completionHandler: nil)
        }
    }
    
    
    
    
    // register scheduled local notification
    func registerLocalNotification(hour: String, minute: String, contentTitle: String, contentBody: String, UniqueIdentifier: String) {
        
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .badge, .sound], completionHandler: { granted , error in
            
            if granted {
                // means user wants to get notification
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                    let trigger = UNCalendarNotificationTrigger(dateMatching: DateComponents(calendar: .current, hour: Int(hour), minute: Int(minute)), repeats: true)
                        
                    let center = UNUserNotificationCenter.current()
                        let content = UNMutableNotificationContent()
                        
                        content.title = contentTitle
                        content.body = contentBody
                        content.sound = .default
                         
                        center.add(UNNotificationRequest(identifier: UniqueIdentifier, content: content, trigger: trigger))
                }
            }
            else {
                // means user don't want to get notified
                print("User declined local notification.")
            }
        })
    }
    
    
    
    // Round any object. Just pass the object outlet variable.
    func roundObject(object: AnyObject) {
        
        object.layer.cornerRadius = (object.frame?.size.width)! / 2
        object.layer?.masksToBounds = true
    }
    
    
    
}
