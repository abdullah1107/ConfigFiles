//
//  TextModifier.swift
//  Libraryapp
//
//  Created by Fahim Rahman on 15/2/20.


import Foundation
import UIKit

class TextModifier {
    
    // Remove any unwanted character from a string. Just pass the string and the character.
    
    static func removingCharacterFromTheString(charFromRemove:String, charToRemove: String) -> String {
        let removedCharacterFromTheString = charFromRemove.filter({ !"\(charToRemove)".contains($0) } )
        
        return removedCharacterFromTheString
    }
    
    // Char to Ascii converter
    
    static func asciiOfTheChar(char: String) -> String {
        
        let value = String(Character(char).asciiValue!)
        
        return value
    }
}
