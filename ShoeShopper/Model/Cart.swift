//
//  Cart.swift
//  ShoeShopper
//
//  Created by Adrian Galecki on 7/19/20.
//  Copyright © 2020 Adrian Galecki. All rights reserved.
//

import Foundation

struct Cart {
    var shoe: Shoe?
    var quantity: Int?
    var totalPrice: Int?
    
    init(shoe: Shoe?, quantity: Int?, totalPrice: Int?) {
        self.shoe = shoe
        self.quantity = quantity
        self.totalPrice = totalPrice
    }
}
