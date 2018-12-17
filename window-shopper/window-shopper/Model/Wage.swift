//
//  Wage.swift
//  window-shopper
//
//  Created by Michael Hoffman on 12/16/18.
//  Copyright © 2018 Here We Go. All rights reserved.
//

import Foundation
//*** If you add the Unit Test after creating your program, the code files will not recognize it
//*** Find "Target Membership" in the right Inspector panel and check the Unit Test file name
class Wage {
    
    //"forWage" is the parameter name, "wage" is the variable name
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        //"ceil" is a math term menaing round up ti the next whole number
        return Int(ceil(price / wage))
    }
}





