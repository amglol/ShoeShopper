//
//  PurchasedVC.swift
//  ShoeShopper
//
//  Created by Adrian Galecki on 7/23/20.
//  Copyright © 2020 Adrian Galecki. All rights reserved.
//

import UIKit

class PurchasedVC: UIViewController {
    
    @IBOutlet weak var totalPriceLbl: UILabel!
    
    var price: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        //display the total price
        totalPriceLbl.text = "$ \(price)"
    }
    
    //clears the cart item content after pressing the home btn
    func clearCartContent() {
        CartService.cartServiceInstance.clearCartAfterPurchase()
    }
    
    //clear cart content
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        clearCartContent()
        
    }

}
