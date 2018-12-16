//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Michael Hoffman on 12/16/18.
//  Copyright © 2018 Here We Go. All rights reserved.
//

import UIKit

class CurrencyTxtField: UITextField {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25) //Choose "Color Literal" double-click for color/opacity options
        layer.cornerRadius = 5.0
        textAlignment = .center
 
/*
        //Creating custom color for placeholder (not available without coding)
        //Setting placeholder to an empty string in case nothing is there
        if placeholder == nil {
            placeholder = " "
        }
        //This is a check to prevent a crash from the next portion of code...
        //This code is force unwrapping "placeholder"
        //In order for the custom color code to work, placeholder MUST contain something, even an empty string
        //If placeholder was not set to an empty string, the app would crash
        let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
*/
        //The commented out block of code above works as expected
        //Below is a cleaner way of writing the same coed
        
        if let p = placeholder {
            //"p" can replace "placeholder!" from above code because if "p" is nil, none of this code will run
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }

}
