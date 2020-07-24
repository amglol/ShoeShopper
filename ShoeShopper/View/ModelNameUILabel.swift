//
//  ModelNameUILabel.swift
//  ShoeShopper
//
//  Created by Adrian Galecki on 7/20/20.
//  Copyright © 2020 Adrian Galecki. All rights reserved.
//

import UIKit

@IBDesignable
class ModelNameUILabel: UILabel {

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        layer.borderWidth = 1
        layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5)
        backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4031464041)
        layer.cornerRadius = 5.0
    }

}
