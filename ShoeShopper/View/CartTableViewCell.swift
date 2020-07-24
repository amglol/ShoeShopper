//
//  CartTableViewCell.swift
//  ShoeShopper
//
//  Created by Adrian Galecki on 7/21/20.
//  Copyright © 2020 Adrian Galecki. All rights reserved.
//

import UIKit

class CartTableViewCell: UITableViewCell {
    var currentCart: Cart!
    var parentTableViewDelegate: ParentTableViewControllerDelegate?

    @IBOutlet weak var cartImageName: UIImageView!
    @IBOutlet weak var cartShoeName: UILabel!
    @IBOutlet weak var cartShoePrice: UILabel!
    @IBOutlet weak var cartQuantityNum: UILabel!

    func updateView(cart: Cart) {
        cartImageName.image = UIImage(named: cart.shoe.imageName)
        cartShoeName.text = "\(cart.shoe.brandName) \(cart.shoe.modelName)"
        cartShoePrice.text = "$ \(cart.shoe.price)"
        cartQuantityNum.text = "\(cart.quantity)"
        
        //assign the incoming cart to the currentCart for this VC
        currentCart = cart
    }
    
    @IBAction func addQuantityTapped(_ sender: UIButton) {
        CartService.cartServiceInstance.handleCartItemQuantity(addCart: currentCart, addCartItemAction: 1)
    
        parentTableViewDelegate?.requestReloadTableViewData()
    }
    
    @IBAction func subtractQuantityTapped(_ sender: Any) {
        CartService.cartServiceInstance.handleCartItemQuantity(addCart: currentCart, addCartItemAction: 0)
        
            parentTableViewDelegate?.requestReloadTableViewData()
    }
}
