//  AppConfigs.swift
//  NationalParlament
//  Created by Muhammad Abdullah Al Mamun on 11/15/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import Foundation
import UIKit


class AppConfigs: NSObject {
    //var window: UIWindow?
    
    static  let registeredEmail = "registeredEmail"
    static  let accessToken = "access_token"
    static  let refreshToken = "refresh_token"
    static  let tokenType = "token_type"
    static  let uid = "uid"
    static  let name = "name"
    static let  checklogin = "checklogin"
    
    
    static func saveOTPNumber(email: String){
        
        let preferences = UserDefaults.standard
        preferences.set(email, forKey: registeredEmail)
        
        let didSave = preferences.synchronize()
        if !didSave {
            print("registeredEmail wasn't saved")
        }
    }
    
    static func getSavedOTPNumber() -> String{
        
        let preferences = UserDefaults.standard
        let email = preferences.string(forKey: registeredEmail) ?? ""
        
        return email
        
    }
    
    static func saveUserID(email: String){
        
        let preferences = UserDefaults.standard
        preferences.set(email, forKey: uid)
        
        let didSave = preferences.synchronize()
        if !didSave {
            print("registeredEmail wasn't saved")
        }
    }
    
    static func getSavedUserID() -> String{
        
        let preferences = UserDefaults.standard
        let email = preferences.string(forKey: uid) ?? ""
        
        return email
        
    }
    
    static func saveAccessToken(token: String){
        
        let preferences = UserDefaults.standard
        preferences.set(token, forKey: accessToken)
        
        let didSave = preferences.synchronize()
        if !didSave {
            print("accessToken wasn't saved")
        }
    }
    
    static func getSavedAccessToken() -> String{
        
        let preferences = UserDefaults.standard
        let email = preferences.string(forKey: accessToken) ?? ""
        
        return email
        
    }
    
    static func saveRefreshToken(token: String){
        
        let preferences = UserDefaults.standard
        preferences.set(token, forKey: refreshToken)
        
        let didSave = preferences.synchronize()
        if !didSave {
            print("refreshToken wasn't saved")
        }
    }
    
    static func getSavedRefreshToken() -> String{
        
        let preferences = UserDefaults.standard
        let email = preferences.string(forKey: refreshToken) ?? ""
        
        return email
        
    }
    
    static func setCheekinLogin(value:Bool?){
        print(value!)
        let defaultval = UserDefaults.standard
        defaultval.set(value, forKey:checklogin)
        let didSave = defaultval.synchronize()
        if !didSave {
            print("check LoginNot saved")
        }
    }
    
    static func getCheekinLogin()->Bool?{
        return UserDefaults.standard.value(forKey: checklogin) as? Bool
    }
    
    static func setViewController(veiwController:String){
       print(veiwController)

        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let customViewController = mainStoryboard.instantiateViewController(withIdentifier: "\(veiwController)")
          //let navigationController = UINavigationController()
          UINavigationController().pushViewController(customViewController, animated: true)
        
    }
    
    
    static func getAlarmView(){
        let alert = UIAlertController(title: "Check Out Successful!", message: "We Will Contact With You Soon", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
            UIAlertAction in
            NSLog("OK Pressed")
            //self.navigationController?.popToRootViewController(animated: true)
            
        }
        // Add the actions
        alert.addAction(okAction)
       //self.present(alert, animated: true, completion: nil)
        ()
    }
    
    
    
 
    
    static func resetDefaults() {
        
        let domain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: domain)
        UserDefaults.standard.synchronize()
        print(Array(UserDefaults.standard.dictionaryRepresentation().keys).count)
    }
}



