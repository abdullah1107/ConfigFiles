//  UrlSessionExtention.swift
//  Libraryapp
//  Created by Muhammad Abdullah Al Mamun on 6/2/20.
//  Copyright © 2020 Muhammad Abdullah Al Mamun. All rights reserved.

//#######################################################################
//let apiUrl = "http://127.0.0.1:8000/api/v1/account/1"
//print(apiUrl)
//fetchDatawithNSDictionary(apitype: "GET", urlString: apiUrl, baseURL: "") { (jsonDict) in
//    print(jsonDict)
//
//}
//######################################################################

import Foundation
import UIKit

var token:String = "685dc509e52d34adbb8df473d8ab959a35fd7ba5"

//################################################################################
//----->GET----->[if data comes that formation]
//################################################################################
func fetchDatawithNSDictionary(apitype: String, urlString: String, baseURL: String, completion: @escaping (NSDictionary) -> Void){
    
    guard let urlStr=urlString.addingPercentEncoding( withAllowedCharacters: .urlQueryAllowed) else {return}
    guard let url : URL = URL(string: urlStr) else {return}
    var request: URLRequest = URLRequest(url:url)
    //var request: URLRequest = URLRequest(url:url)
    
    if token == ""{
        print("token is null")
    }else{
        request.setValue("Token \(String(describing: token))", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
    }
    
    let config = URLSessionConfiguration.default
    config.timeoutIntervalForRequest = TimeInterval(60)
    
    let session = URLSession(configuration: config)
    let task = session.dataTask(with: request) { (data, response, error) in
        //having error
        if(error != nil) {
            print(error?.localizedDescription ?? "")
            DispatchQueue.main.async {
                completion([:])
            }
        }//end of error section
            /// #############################################################
        else  {
            do {
                let jsonDict:NSDictionary = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! NSDictionary
                DispatchQueue.main.async {
                    completion(jsonDict)
                }
            }
            catch {
                print(error.localizedDescription)
                DispatchQueue.main.async {
                    completion([:])
                }
            }
        }
    }
    task.resume()
}

func fetchDatawithNSArray(apitype: String, urlString: String, baseURL: String, completion: @escaping (NSArray) -> Void){
    
    guard let urlStr=urlString.addingPercentEncoding( withAllowedCharacters: .urlQueryAllowed) else {return}
    guard let url : URL = URL(string: urlStr) else {return}
    var request: URLRequest = URLRequest(url:url)
    
    //mark: TOken must be check in (nil)
    if token != ""{
        request.setValue("Token \(String(describing: token))", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
    }
    
    let config = URLSessionConfiguration.default
    config.timeoutIntervalForRequest = TimeInterval(60)
    
    let session = URLSession(configuration: config)
    let task = session.dataTask(with: request) { (data, response, error) in
        //having error
        if(error != nil) {
            print(error?.localizedDescription ?? "")
            DispatchQueue.main.async {
                completion([])
            }
        }//end of error section
            /// #############################################################
        else  {
            do {
                let jsonDict:NSArray = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! NSArray
                DispatchQueue.main.async {
                    completion(jsonDict)
                }
            }
            catch {
                print(error.localizedDescription)
                DispatchQueue.main.async {
                    completion([])
                }
            }
        }
    }
    task.resume()
    
}

//################################################################################
//--------->POST -----> without token
// let apiUrl = "http://127.0.0.1:8000/api/v1/account/login"
//    var param:[String:Any] = [:]
//    param["username"] = "abc@gmail.com"
//    param["password"] = "mamun54"
//
//
//    print(apiUrl)
//    postDatawithNSDictionary(urlString:apiUrl,parameters:param,baseURL: "") { (jsonDict) in
//
//        print(jsonDict)
//
//    }
//}

//################################################################################


func postDatawithNSDictionary(urlString: String, parameters:[String:Any], baseURL: String, completion: @escaping (NSDictionary) -> Void) {
    
    
    guard let gitUrl = URL(string: urlString) else { return }
    //print(gitUrl)
    
    let request = NSMutableURLRequest(url: gitUrl)
    
    let session = URLSession.shared
    request.httpMethod = "POST"
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    request.addValue("application/json", forHTTPHeaderField: "Accept")
    request.httpBody = try! JSONSerialization.data(withJSONObject: parameters, options: [])
    
    //
    //        guard let data = data else { return }
    let task = session.dataTask(with: request as URLRequest) { data, response, error in
        
        if(error != nil){
            print(error?.localizedDescription ?? "")
            DispatchQueue.main.async {
                completion([:])
            }
        }
        else  {
            
            do {
                let jsonDict:NSDictionary = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! NSDictionary
                
                DispatchQueue.main.async {
                    completion(jsonDict)
                }
            }
            catch {
                print(error.localizedDescription)
                DispatchQueue.main.async {
                    completion([:])
                }
            }
        }
    }
    task.resume()
}

//################################################################################
//--------->POST -----> with token
//################################################################################
func postDatawithNSDictionarywithToken(urlString: String, parameters:[String:Any], baseURL: String, completion: @escaping (NSDictionary) -> Void) {
    
    
    guard let gitUrl = URL(string: urlString) else { return }
    //print(gitUrl)
    
    let request = NSMutableURLRequest(url: gitUrl)
    
    let session = URLSession.shared
    request.httpMethod = "POST"
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    request.addValue("application/json", forHTTPHeaderField: "Accept")
    request.addValue("Token \(String(describing: token))", forHTTPHeaderField: "Authorization")
    
    request.httpBody = try! JSONSerialization.data(withJSONObject: parameters, options: [])
    
    //
    //        guard let data = data else { return }
    let task = session.dataTask(with: request as URLRequest) { data, response, error in
        
        if(error != nil){
            print(error?.localizedDescription ?? "")
            DispatchQueue.main.async {
                completion([:])
            }
        }
        else  {
            
            do {
                let jsonDict:NSDictionary = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! NSDictionary
                
                DispatchQueue.main.async {
                    completion(jsonDict)
                }
            }
            catch {
                print(error.localizedDescription)
                DispatchQueue.main.async {
                    completion([:])
                }
            }
        }
    }
    task.resume()
}

//################################################################################
//--------->PUT -----> with token

//let apiUrl = "http:/127.0.0.1:8000/api/v1/account/notificationupdate/1"
//       var param:[String:Any] = [:]
//       param["status"] = "true"
//       print(apiUrl)
//       putDatawithNSDictionarywithToken(urlString:apiUrl,parameters:param,baseURL: "") { (jsonDict) in
//
//           print(jsonDict)
//
//       }
//################################################################################
func putDatawithNSDictionarywithToken(urlString: String, parameters:[String:Any], baseURL: String, completion: @escaping (NSDictionary) -> Void) {
    
    
    guard let gitUrl = URL(string: urlString) else { return }
    //print(gitUrl)
    
    let request = NSMutableURLRequest(url: gitUrl)
    
    let session = URLSession.shared
    request.httpMethod = "PUT"
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    request.addValue("application/json", forHTTPHeaderField: "Accept")
    request.addValue("Token \(String(describing: token))", forHTTPHeaderField: "Authorization")
    
    request.httpBody = try! JSONSerialization.data(withJSONObject: parameters, options: [])
    
    //
    //        guard let data = data else { return }
    let task = session.dataTask(with: request as URLRequest) { data, response, error in
        
        if(error != nil){
            print(error?.localizedDescription ?? "")
            DispatchQueue.main.async {
                completion([:])
            }
        }
        else  {
            
            do {
                let jsonDict:NSDictionary = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! NSDictionary
                
                DispatchQueue.main.async {
                    completion(jsonDict)
                }
            }
            catch {
                print(error.localizedDescription)
                DispatchQueue.main.async {
                    completion([:])
                }
            }
        }
    }
    task.resume()
}

func checkValueTypeNSArray(value:AnyObject?) -> NSArray {
    if value is NSNull || value == nil {
        return []
    }
    else {
        return value as! NSArray
    }
}
func checkValueTypeNSDict(value:AnyObject?) -> NSDictionary {
    if value is NSNull || value == nil {
        return [:]
    }
    else {
        return value as! NSDictionary
    }
}

func checkValueType(value:AnyObject?) -> String {
    if value is NSNull || value == nil {
        return ""
    }
    else {
        return "\(value!)"
    }
}

func checkValueTypeInt(value:AnyObject?) -> Int {
    if value is NSNull || value == nil {
        return 0
    }
    else {
        return value as! Int
    }
}

