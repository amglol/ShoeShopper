//
//  DetailedVC.swift
//  ShoeShopper
//
//  Created by Adrian Galecki on 7/20/20.
//  Copyright © 2020 Adrian Galecki. All rights reserved.
//

import UIKit

class DetailedVC: UIViewController {
    
    var shoe: Shoe!
    var cart: Cart!
    
    @IBOutlet weak var brandName: UILabel!
    @IBOutlet weak var modelName: UILabel!
    @IBOutlet weak var shoePrice: UILabel!
    @IBOutlet weak var shoeImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let shoe = shoe {
            brandName.text = shoe.brandName
            modelName.text = shoe.modelName
            shoePrice.text = "$\(shoe.price)"
            shoeImage.image = UIImage(named: shoe.imageName)
        }
    }

    @IBAction func addToCartBtnTapped(_ sender: Any) {
        if let shoe = shoe {
//            let myCart = Cart(shoe: shoe, quantity: 1, totalPrice: shoe.price)
//            print(myCart)
//
//            let cartArray = [myCart]
            CartService.cartServiceInstance.addToCart(incomingShoe: shoe)
        }
    }
}
