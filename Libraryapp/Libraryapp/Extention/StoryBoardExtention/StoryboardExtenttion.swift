//  StoryboardExtenttion.swift
//  Libraryapp
//  Created by Muhammad Abdullah Al Mamun on 19/2/20.
//  Copyright © 2020 Muhammad Abdullah Al Mamun. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard{
    
    static func storyboardNavigation(storyboard:String, identifier:String) -> UIViewController{
        let sb = UIStoryboard(name: storyboard, bundle: Bundle.main)
        return sb.instantiateViewController(withIdentifier: identifier)
    }
}
