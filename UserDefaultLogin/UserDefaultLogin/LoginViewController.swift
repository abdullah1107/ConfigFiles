//
//  LoginViewController.swift
//  UserDefaultLogin
//
//  Created by Muhammad Abdullah Al Mamun on 3/2/20.
//  Copyright © 2020 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    lazy var customview = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        print(UrlManager.baseURL())
        customview = UIView(frame: CGRect(x:0, y:0, width: 150, height: 230))
        customview.backgroundColor = .hellomainPink
        view.addSubview(customview)
        
    }
    
    @IBAction func button1clicked(_ sender: UIButton) {
        button1.backgroundColor = UIColor.red
    }
    
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        
 
        //AppConfigs.setCheekinLogin(value: true)
        AppConfigs.getAlarmView()
        //AppConfigs.setViewController(veiwController: "HomeViewController")
        
        
//        let vc:HomeViewController = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
//
//        navigationController?.pushViewController(vc, animated: true)

    }
    
    
}
