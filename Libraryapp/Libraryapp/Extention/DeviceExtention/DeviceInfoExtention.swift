//
//  DeviceInfoExtention.swift
//  Libraryapp
//  Created by Muhammad Abdullah Al Mamun on 20/2/20.
//  Copyright © 2020 Muhammad Abdullah Al Mamun. All rights reserved.
//

import Foundation
import UIKit

class DeviceInfo:NSObject{
    // Getting user ip address
    
    static func gettingUserIPAddress() -> String {
        
        let url = URL(string: "https://api6.ipify.org")
        var userIP = String()
        do {
            if let url = url {
                userIP = try String(contentsOf: url)
            }
        }
        catch
            let error {
                print(error)
        }
        
        return userIP
    }
    
    
    // Getting device's mac address
    static func getDeviceMacAddress() -> String {
        
        let macAddress = (UIDevice.current.identifierForVendor?.uuidString)!

        return macAddress
    }
}
