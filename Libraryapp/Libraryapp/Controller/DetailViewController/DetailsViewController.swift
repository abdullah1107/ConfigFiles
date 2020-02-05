//
//  DetailsViewController.swift
//  Libraryapp
//
//  Created by Muhammad Abdullah Al Mamun on 5/2/20.
//  Copyright © 2020 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    lazy var backView: UIView = {
       let view = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 70))
        return view
    }()
    
    lazy var settingImage: UIImageView = {
       let imageView = UIImageView(frame: CGRect(x: 15, y: 5, width: 30, height: 30))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var lbl: UILabel = {
       let lbl = UILabel(frame: CGRect(x: 60, y: 10, width: 210 - 80, height: 30))
        return lbl
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   

}
