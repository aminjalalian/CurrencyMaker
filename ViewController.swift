//
//  ViewController.swift
//  Currency Maker
//
//  Created by amin jalalian on 5/22/1397 AP.
//  Copyright © 1397 Amin.Jalalian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showLabel: UILabel!
    @IBOutlet weak var numberTF: UITextField!

    

    @IBAction func buttonAction(_ sender: Any) {
        if !(numberTF.text?.isEmpty)! {
            let number = Int(numberTF.text!)
            showLabel.text = currencyMaker(price: number! as NSNumber)
        }
    }
    
    
    func currencyMaker(price: NSNumber) -> String {
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        numberFormatter.groupingSeparator = ","
        let formattedNumber = numberFormatter.string(from: price)
        
        return formattedNumber!
    }
}

