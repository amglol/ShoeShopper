//
//  CategoryCell.swift
//  ShoeShopper
//
//  Created by Adrian Galecki on 7/20/20.
//  Copyright © 2020 Adrian Galecki. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    //update the category table view
    func updateView(_ category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.name
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        //add padding
        let padding = UIEdgeInsets(top: 0, left: 0, bottom: 5, right: 0)
        contentView.frame = contentView.frame.inset(by: padding)
    }

}
