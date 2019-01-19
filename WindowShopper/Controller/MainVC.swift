//
//  ViewController.swift
//  WindowShopper
//
//  Created by user148657 on 1/16/19.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var itemPriceTxt: CurrencyTxtField!
    
    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var hoursTxt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //for calculate button//
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        //for adding calcBtn as accessory view//
        wageTxt.inputAccessoryView = calcBtn
        itemPriceTxt.inputAccessoryView = calcBtn
        
        //for keeping hoursLbl and hoursTxt hidden//
        hoursTxt.isHidden = true
        hoursLbl.isHidden = true
    }

    @objc func calculate() {
        //validation and logic for calculation//
        if let wageTxt = wageTxt.text, let itemPriceTxt = itemPriceTxt.text{
            if let wage = Double(wageTxt), let itemPrice = Double(itemPriceTxt){
                view.endEditing(true)
                        hoursTxt.isHidden = false
                        hoursLbl.isHidden = false
                        hoursLbl.text = "\(Wage.getHours(forWage: wage, forPrice: itemPrice))"
            }
        }
    }

    @IBAction func clearCalcPressed(_ sender: Any) {
        hoursLbl.isHidden = true
        hoursTxt.isHidden = true
        wageTxt.text = ""
        itemPriceTxt.text = ""
    }
}

