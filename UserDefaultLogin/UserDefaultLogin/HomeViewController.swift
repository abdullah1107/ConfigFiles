//
//  ViewController.swift
//  UserDefaultLogin
//
//  Created by Muhammad Abdullah Al Mamun on 3/2/20.
//  Copyright © 2020 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

   //var window: UIWindow?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
        navigationItem.setHidesBackButton(true, animated: true)
        // Do any additional setup after loading the view.
    }

    
    @IBAction func LogoutClicked(_ sender: UIBarButtonItem) {
        AppConfigs.setCheekinLogin(value: false)
        navigationController?.popToRootViewController(animated: true)
      
    }
    

}

