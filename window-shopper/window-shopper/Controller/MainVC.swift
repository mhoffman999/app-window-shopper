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
    }
    
    //See above for ".addTarget", using "#selector" requires adding "@objc" to the func
    @objc func calculate() {
        print("Working like a charm!")
    }


}

