//
//  UrlManager.swift
//  NationalParlament
//  Created by Muhammad Abdullah Al Mamun on 02/05/20.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import Foundation

class UrlManager: NSObject {
    
    private static let DEV_BASE_URL = "http://127.0.0.1:8000/" 

    class func baseURL()->String {
        return DEV_BASE_URL
    }
    
    func findRepositories( pathwithOutq:String, matching query: String)-> URL {
          let api = UrlManager.baseURL()
          let endpoint = "\(pathwithOutq)?q=\(query)"
          let url = (URL(string: api + endpoint) ?? URL(string: "https://www.google.com"))!
          return url
      }
     
}
