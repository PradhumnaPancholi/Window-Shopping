//
//  ViewController.swift
//  Window Shopper
//
//  Created by user148657 on 1/8/19.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //for calculate button
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        calcBtn.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
    }
    
    @objc func calculate() {
        print("It works")
    }


}

