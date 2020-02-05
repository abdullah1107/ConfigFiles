//  MainViewController.swift
//  Libraryapp
//  Created by Muhammad Abdullah Al Mamun on 5/2/20.
//  Copyright © 2020 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    lazy var customView = UIView()
    lazy var custombutton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designView()
        
        //updated data
        getDictionaryData()
        getpostDictionaryData()
        getupdateData()
        // Do any additional setup after loading the view.
    }
    
    func designView(){
        functioncustomViewdesign()
        buttonDesign()
    }
    
    
}
extension MainViewController{
    
    func functioncustomViewdesign(){
        print("inside functioncustomViewDesign!!!")
        
        customView = UIView(frame: CGRect(x: 0, y: 0, width:view.frame.width, height:view.frame.height/2))
        
        customView.backgroundColor = .customPink
        //view.addSubview(customView)
    }
}
extension MainViewController{
    
    func buttonDesign(){
        print("Button Clicked!!!")
        custombutton = UIButton(frame: CGRect(x:130, y:130, width: 105, height: 130))
        custombutton.backgroundColor = .green
        custombutton.setTitle("Button", for: UIControl.State.normal)
        custombutton.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        view.addSubview(custombutton)
        
    }
    @objc func buttonClicked(sender:UIButton!)
    {
        print("It Works!!!")
        // self.nextViewController(viewController: "DetailsViewController")
    }
}

extension MainViewController{
    
    func getDictionaryData() {
        let apiUrl = "http://127.0.0.1:8000/api/v1/account/1"
        print(apiUrl)
        fetchDatawithNSDictionary(apitype: "GET", urlString: apiUrl, baseURL: "") { (jsonDict) in
            print(jsonDict)
            
        }
    }
}
extension MainViewController{
    
    func getpostDictionaryData() {
        let apiUrl = "http://127.0.0.1:8000/api/v1/account/login"
        var param:[String:Any] = [:]
        param["username"] = "fahim@gmail.com"
        param["password"] = "fahim54"
        
        
        print(apiUrl)
        postDatawithNSDictionary(urlString:apiUrl,parameters:param,baseURL: "") { (jsonDict) in
            
            print(jsonDict)
            
        }
    }
}


extension MainViewController{
    func getupdateData(){
        let apiUrl = "http:/127.0.0.1:8000/api/v1/account/notificationupdate/1"
        var param:[String:Any] = [:]
        param["status"] = "false"
        print(apiUrl)
        putDatawithNSDictionarywithToken(urlString:apiUrl,parameters:param,baseURL: "") { (jsonDict) in
            
            print(jsonDict)
            
        }
    }
}
