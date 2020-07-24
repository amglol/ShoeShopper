//
//  CartVC.swift
//  ShoeShopper
//
//  Created by Adrian Galecki on 7/20/20.
//  Copyright © 2020 Adrian Galecki. All rights reserved.
//

import UIKit

class CartVC: UIViewController, UITableViewDelegate, UITableViewDataSource, ParentTableViewControllerDelegate {
    
    @IBOutlet weak var cartTotalItemCountLbl: UILabel!
    @IBOutlet weak var cartTotalPriceLbl: UILabel!
    @IBOutlet weak var cartTableView: UITableView!
    
    var cartItems = CartService.cartServiceInstance.getCart()
    var totalPrice: Int = 0
    var itemTotalPrice: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cartTableView.delegate = self
        cartTableView.dataSource = self
        
        updateTotalPriceOfCart()
    }
    
    func updateTotalPriceOfCart() {
        totalPrice = 0
        //loop through the cart array
        for item in cartItems {
            itemTotalPrice = item.quantity * item.totalPrice
            totalPrice += itemTotalPrice
        }
        cartTotalPriceLbl.text = "$ \(totalPrice)"
    }
    
    @IBAction func purchaseBtnTapped(_ sender: Any) {
        //performSegue(withIdentifier: "purchaseVC", sender: totalPrice)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CartTableViewCell", for: indexPath) as? CartTableViewCell {
            let cartProduct = cartItems[indexPath.row]
            
            print("cartProduct in tableViewCellForRowAt = \(cartProduct)")
            
            cell.updateView(cart: cartProduct)
            cell.parentTableViewDelegate = self
            return cell
        }
        else {
            return CartTableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected cart item at index: \(indexPath.row)")
    }
    
    func requestReloadTableViewData() {
        cartItems = CartService.cartServiceInstance.getCart()
        updateTotalPriceOfCart()
        cartTableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let purchasedVC = segue.destination as? PurchasedVC {
            purchasedVC.price = totalPrice
        }
    }
}

protocol ParentTableViewControllerDelegate {
    func requestReloadTableViewData()
}
