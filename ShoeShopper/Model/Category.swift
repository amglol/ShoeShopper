//
//  Category.swift
//  ShoeShopper
//
//  Created by Adrian Galecki on 7/19/20.
//  Copyright © 2020 Adrian Galecki. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var name: String
    private(set) public var imageName: String
    
    init(name: String, imageName: String) {
        self.name = name
        self.imageName = imageName
    }
}
