//
//  Image.swift
//  Libraryapp
//  Created by Md Zahidul Islam Mazumder on 6/2/20.
//  Copyright © 2020 Muhammad Abdullah Al Mamun. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    //Fetch image from url
    public func setimage(urlString: String) {
        guard let url = URL(string: urlString) else {
            
            return
        }
        let theTask = URLSession.shared.dataTask(with: url) {
            data, response, error in
            if let response = data {
                DispatchQueue.main.async {
                    self.image = UIImage(data: response)
                }
            }
        }
        theTask.resume()
    }
}
