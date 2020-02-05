//
//  AppDelegate.swift
//  UserDefaultLogin
//
//  Created by Muhammad Abdullah Al Mamun on 3/2/20.
//  Copyright © 2020 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //
        //    let accesstoken = AppConfigs.getSavedAccessToken()
        //    print(accesstoken)
        //checkLogin()
        return true
    }
    
//    func checkLogin() {
//
//        print("inside checklogin")
//        if #available(iOS 13.0, *) {
//            print("inside checklogin 13.2")
//            if let userdefault = UserDefaults.standard.getValueofLogin(){
//
//                //print(userdefault)
//
//                if userdefault == true{
//                    let vc = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
//                    let navVC = UINavigationController(rootViewController: vc)
//                    let share = UIApplication.shared.delegate as? AppDelegate
//                    share?.window?.rootViewController = navVC
//                    share?.window?.makeKeyAndVisible()
//                }
//
//            }
//
//
//
//        }
//        else {
//            print("inside Else")
//            // Fallback on earlier versions
//        }
        
        // MARK: UISceneSession Lifecycle
        
        func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
            // Called when a new scene session is being created.
            // Use this method to select a configuration to create the new scene with.
            return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
        }
        
        func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
            // Called when the user discards a scene session.
            // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
            // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
        }
        
        
    }
    


