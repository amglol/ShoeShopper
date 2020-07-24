//
//  ProductCollectionViewCell.swift
//  ShoeShopper
//
//  Created by Adrian Galecki on 7/23/20.
//  Copyright © 2020 Adrian Galecki. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productModelName: UILabel!
    
    func updateView(shoe: Shoe) {
        self.contentView.isUserInteractionEnabled = false
        productImage.image = UIImage(named: shoe.imageName)
        productName.text = shoe.brandName
        productModelName.text = shoe.modelName
    }
}
