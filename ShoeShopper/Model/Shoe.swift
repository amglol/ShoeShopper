//
//  Shoe.swift
//  ShoeShopper
//
//  Created by Adrian Galecki on 7/19/20.
//  Copyright © 2020 Adrian Galecki. All rights reserved.
//

import Foundation

struct Shoe {
    private(set) public var imageName: String
    private(set) public var brandName: String
    private(set) public var modelName: String
    private(set) public var price: Int
    
    init(imageName: String, brandName: String, modelName: String, price: Int) {
        self.imageName = imageName
        self.brandName = brandName
        self.modelName = modelName
        self.price = price
    }
}
