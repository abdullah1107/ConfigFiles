//
//  UrlManager.swift
//  NationalParlament
//  Created by Muhammad Abdullah Al Mamun on 02/05/20.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import Foundation

class UrlManager: NSObject {
    
    private static let DEV_BASE_URL = "http://127.0.0.1:8000/" //"http://192.168.0.114:8000/" //"192.168.0.114:8000" // "http://parliament.itracker71.com"
     
    
    class func baseURL()->String {
        return DEV_BASE_URL
    }
     
}
