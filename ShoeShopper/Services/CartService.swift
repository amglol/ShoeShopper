//
//  CartService.swift
//  ShoeShopper
//
//  Created by Adrian Galecki on 7/21/20.
//  Copyright © 2020 Adrian Galecki. All rights reserved.
//

import Foundation

class CartService {
    
    static let cartServiceInstance = CartService()
    private(set) var cart: Cart!
    private(set) var cartItem = [Cart]()
    
    func getCart() -> [Cart] {
        //return the current cart item array
        return cartItem
    }
    
    //add a shoe to the cart
    func addToCart(incomingShoe: Shoe?) {
        if let shoe = incomingShoe {
            //create a shoe
            cart = Cart(shoe: shoe, quantity: 1, totalPrice: shoe.price)
            
            //check if the incoming shoe is already in the cart
            if cartItem.contains(cart) {
                //add quantity to cart item
                handleCartItemQuantity(addCart: cart, addCartItemAction: 1)
            }
            else {
                //its not in the cart - add the shoe
                cartItem.append(cart)
            }
        }
    }
    
    //handle adding or subtracting a cart items quantity
    func handleCartItemQuantity(addCart cartInput: Cart, addCartItemAction action: Int) {
        
        //get the index of the cart item array
        if let indexOfCartToAddQuantityTo = cartItem.firstIndex(of: cartInput) {
            //assign the content of the incoming cartInput array to cart
            cart = cartInput
            //get the current quantity of the cart item
            var quantity = cartItem[indexOfCartToAddQuantityTo].quantity
            
            //add 1 to quantity
            if action == 1 {
                quantity += 1
            }
            //subtract 1 from quantity
            else if action == 0 {
                quantity -= 1
                
                //check if quantity is zero
                if quantity == 0 {
                    //remove the item from the cart if it is
                    cartItem.remove(at: indexOfCartToAddQuantityTo)
                    //exit out of function
                    return
                }
            }
            //set the new quantity to the cart item quantity
            cart.quantity = quantity
            //update the cart item array with the new cart array
            cartItem[indexOfCartToAddQuantityTo] = cart
        }
    }
    
    func clearCartAfterPurchase() {
        cartItem.removeAll()
    }
}
