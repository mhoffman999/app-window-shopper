//
//  ViewController.swift
//  window-shopper
//
//  Created by Michael Hoffman on 12/16/18.
//  Copyright © 2018 Here We Go. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hourLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Programmatically creating a button
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9854259201, green: 0.5716714298, blue: 0.01267880112, alpha: 1)
        //For UIButton, use "setTtile" NEVER "titleLabel"
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        //Target for when calcBtn is pressed
        //calling "#selector" is an Obj-C feature and requires adding "@objc" to the func because it is an Obj-C runtime function
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        //Sets the created button as an accessory view whenever the 2 text fields are accessed from the app
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        //The resultsLbl and hourLbl will load as hidden
        resultLbl.isHidden = true
        hourLbl.isHidden = true
    }
    
    //See above for ".addTarget", using "#selector" requires adding "@objc" to the func
    @objc func calculate() {
        //print("Working like a charm!")
        //naming a variable within a func with the same name as an outside variable will not reference the outside variable
        //The local scope of the func's variable is maintained
        
        //Says, "calculate" will only work if the text fields are not nil
        //If they are not nil, store them in the respective variablesof the "if let"
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            //Casting the text from the fields into Doubles
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                //Dismiss the keyboard
                view.endEditing(true)
                resultLbl.isHidden = false
                hourLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hourLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
}

