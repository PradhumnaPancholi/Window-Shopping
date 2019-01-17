//
//  CurrencyTxtField.swift
//  WindowShopper
//
//  Created by user148657 on 1/16/19.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {

    //to apply code in storyboard(in development)
    override func prepareForInterfaceBuilder() {
       customizeTextField()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeTextField()        
    }
    
    func customizeTextField(){
        backgroundColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6)
        textAlignment = .center
        
        //for placeholder//
        if let p = placeholder {
            //if empty, run following//
            let placeHolderText = NSAttributedString(string: p)
            attributedText = placeHolderText
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
