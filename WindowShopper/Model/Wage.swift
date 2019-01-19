//
//  Wage.swift
//  WindowShopper
//
//  Created by user148657 on 1/19/19.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import Foundation

class Wage{
    class func getHours(forWage wage: Double, forPrice price: Double ) -> Int{
        return Int(ceil(price/wage))
    }
}
