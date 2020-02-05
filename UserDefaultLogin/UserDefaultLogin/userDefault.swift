//
//  userDefault.swift
//  UserDefaultLogin
//
//  Created by Muhammad Abdullah Al Mamun on 3/2/20.
//  Copyright © 2020 Muhammad Abdullah Al Mamun. All rights reserved.
//

import Foundation


extension UserDefaults{
    
 func setValueForLogin(value:Bool?){
        
        if value != nil{
            
            UserDefaults.standard.set(value, forKey: "email")
        }
        else{
            
            UserDefaults.standard.removeObject(forKey: "email")
        }
        
        UserDefaults.standard.synchronize()
    }
    
    
    func getValueofLogin()->Bool?{
        return UserDefaults.standard.value(forKey: "email") as? Bool
    }
}

