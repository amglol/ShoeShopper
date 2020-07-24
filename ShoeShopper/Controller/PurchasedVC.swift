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
        print("price in cart purchase = \(price)")

        //display the total price
        totalPriceLbl.text = "$ \(price)"
    }
    
    func clearCartContent() {
        CartService.cartServiceInstance.clearCartAfterPurchase()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        clearCartContent()
        
    }

}
