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
    
    //code for curreny symbol based on users location//
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - (size/2)	, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.6470385342, green: 0.6470385342, blue: 0.6470385342, alpha: 0.8028169014)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)        
    }

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
