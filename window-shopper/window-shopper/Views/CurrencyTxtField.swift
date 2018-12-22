//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Michael Hoffman on 12/16/18.
//  Copyright © 2018 Here We Go. All rights reserved.
//

import UIKit

@IBDesignable //used to show code changes in this class to show in Storyboard view
//*** MUST run additional function prepareForInterfaceBuilder ***
class CurrencyTxtField: UITextField {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    //**** DO NOT EVER CALL DRAW_RECT AND LEAVE IT EMPTY ***
    //This will cause performance issues with the app
    override func draw(_ rect: CGRect) {
        //NEVER call super on draw rect
        let size: CGFloat = 20 //Must call CGFloat, otherwise it will default to Double, which cannot be used for drawing
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size)) //sets the position & size to the text field
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.8)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        
        //MUST set cliptobounds whenever using draw_rect because it takes off the feature
        //And it must be added back to any other functions that require clipping as well
        currencyLbl.clipsToBounds = true
        
        //setting locator for correct currency symbol
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        //current location of the device
        formatter.locale = .current //this is default behavior but shows it can be set
        //OR can set to a specific location, such as: "en_GB", "ja_JP", "es_ES_PREEURO"
        //formatter.locale = Locale(identifier: "fr_FR")
        currencyLbl.text = formatter.currencySymbol //sets the symbol to the label
        addSubview(currencyLbl) //adds this view to the text field
    }
    
    //Runs code to show these changes in Interface Builder
    //However, the awakeFromNib function needs to run at runtime
    //Therefore, a func needs to be created so that the code can be shared and run by both override functions as needed.
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        customizeView()
    }
 
    
/*
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25) //Choose "Color Literal" double-click for color/opacity options
        layer.cornerRadius = 5.0
        textAlignment = .center
     }
 */
 
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
    
/*
        //The commented out block of code above works as expected
        //Below is a cleaner way of writing the same coed
        
        if let p = placeholder {
            //"p" can replace "placeholder!" from above code because if "p" is nil, none of this code will run
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
*/
    
        func customizeView() {
            backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25) //Choose "Color Literal" double-click for color/opacity options
            layer.cornerRadius = 5.0
            textAlignment = .center
            
            clipsToBounds = true //added after calling draw_rect above
            
            if let p = placeholder {
                //"p" can replace "placeholder!" from above code because if "p" is nil, none of this code will run
                let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
                attributedPlaceholder = place
                textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            }
        }
    

}
