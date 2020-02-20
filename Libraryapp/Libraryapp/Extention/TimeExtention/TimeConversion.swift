//
//  TimeConversion.swift
//  Libraryapp
//
//  Created by Fahim Rahman on 15/2/20.
//

import UIKit

extension DateFormatter {
    
    // 12 to 24 hour conversion. Just pass hour minute and time formate.
    
    static  func timeConversion12to24(hour: String, minute: String, formateAMorPM: String) -> String {
        
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "h:mm a"
            let dateAs12 = dateFormatter.date(from: "\(hour):\(minute) \(formateAMorPM)")
            dateFormatter.dateFormat = "HH:mm"
            let dateAs24 = dateFormatter.string(from: dateAs12!)
        
            return dateAs24
    }
    
    
    // 24 to 12 hour conversion. Just pass hour and minute.
    static  func timeConversion24to12(hour: String, minute: String) -> String {
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "HH:mm"
        let dateAs24 = dateFormatter.date(from: "\(hour):\(minute)")
        dateFormatter.dateFormat = "h:mm a"
        let dateAs12 = dateFormatter.string(from: dateAs24!)
        
        return dateAs12
    }
    
    
    // Pass you birth day like this -> "dd/mm/yyyy"
    
    static func gettingAgeFrom(dateOfBirth: String) -> (String) {

        // formatting the date of birth
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "dd/MM/yyyy"
        let dob = dateFormater.date(from: dateOfBirth)

        // getting the current calender
        let calender = Calendar.current

        // getting the range from date of birth to the current calender
        let dateComponent = calender.dateComponents([.day, .month, .year], from:
        dob!, to: Date())

        let ageTuple = (dateComponent.day!, dateComponent.month!, dateComponent.year!)
        
        let day = String(ageTuple.0)
        let month = String(ageTuple.1)
        let year = String(ageTuple.2)
        
        let ageNow = day + " days " + month + " months " + year + " years"
        
        return ageNow
    }
}


