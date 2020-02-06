//
//  PopUpViewController.swift
//  Libraryapp
//
//  Created by Muhammad Abdullah Al Mamun on 7/2/20.
//  Copyright © 2020 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {
    
    lazy var pUView = UIView()
    //var object = PopUpViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    
      override func viewDidAppear(_ animated: Bool) {
          super.viewDidAppear(animated)
          setupUI()
      }
      



}
extension PopUpViewController{
    
    // MARK: UI SETUP
    func setupUI() {
        addShadow()
        pUView.isHidden = true
        pUView.layer.cornerRadius = 5
    }
    
 
}
