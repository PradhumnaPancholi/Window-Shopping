//
//  CurrencyTextFiled.swift
//  Window Shopper
//
//  Created by user148657 on 1/8/19.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    // to impliment custom code in interface buider//
    override func prepareForInterfaceBuilder() {
        customizeTextField()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeTextField()
    }
    
    func customizeTextField() {
        //for input field//
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2535211268)
        textAlignment = .center
        
        //to check if placeholder isn't empty
        if let p = placeholder{
            //if not, run following
            let placeHolderText = NSAttributedString(string: p)
            attributedText = placeHolderText
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
