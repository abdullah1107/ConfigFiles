//
//  DateFormateExtention.swift
//  Libraryapp
//  Created by Muhammad Abdullah Al Mamun on 5/2/20.
//  Copyright © 2020 Muhammad Abdullah Al Mamun. All rights reserved.
//

import Foundation

extension DateFormatter {
    
    static var ymdDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }
    
    static var mdyDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM-dd-yyyy"
        return formatter
    }
    
    static var dmyDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        return formatter
    }
}
