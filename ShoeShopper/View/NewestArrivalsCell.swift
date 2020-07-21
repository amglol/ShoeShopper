//
//  NewestArrivalsCell.swift
//  ShoeShopper
//
//  Created by Adrian Galecki on 7/20/20.
//  Copyright © 2020 Adrian Galecki. All rights reserved.
//

import UIKit

class NewestArrivalsCell: UICollectionViewCell {
    
    @IBOutlet weak var shoeImageName: UIImageView!
    @IBOutlet weak var showModelName: UILabel!
    
    //update the new arrivals table view
    func updateView(shoe: Shoe) {
        shoeImageName.image = UIImage(named: shoe.imageName)
        showModelName.text = shoe.modelName
    }
}
