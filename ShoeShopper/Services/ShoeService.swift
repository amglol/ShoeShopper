//
//  ShoeService.swift
//  ShoeShopper
//
//  Created by Adrian Galecki on 7/19/20.
//  Copyright © 2020 Adrian Galecki. All rights reserved.
//

import Foundation

class ShoeService {
    //create an instance for singleton
    static let shoeServiceInstance = ShoeService()
    
    private let categories = [
        Category(name: "Running", imageName: "categoryRunning.png"),
        Category(name: "Casual", imageName: "categoryCasual.png"),
        Category(name: "Boots", imageName: "categoryBoots.png")
    ]
    
    private let newestArrivalShoes = [
        Shoe(imageName: "newbalanceNewest.png", brandName: "New Balance", modelName: "REVone", price: 75),
        Shoe(imageName: "nikeBlueNewest.png", brandName: "Nike", modelName: "Shock V5", price: 125),
        Shoe(imageName: "nikeRedNewest.png", brandName: "Nike", modelName: "Free Flow V2", price: 135),
        Shoe(imageName: "vansNewest.png", brandName: "Vans", modelName: "Journeymen", price: 55)
    ]
    
    private let bootShoes = [
        Shoe(imageName: "timsBoots.png", brandName: "Timberland", modelName: "Trailhawk", price: 100),
        Shoe(imageName: "yellowBoots", brandName: "Saks", modelName: "Vera", price: 175),
        Shoe(imageName: "waterproofBoots", brandName: "Uggs", modelName: "Classics", price: 140),
        Shoe(imageName: "brownBoots.png", brandName: "Aldo", modelName: "Walkmen Elite", price: 105)
    ]
    
    private let casualShoes = [
        Shoe(imageName: "converseCasuals.png", brandName: "Converse", modelName: "Retro", price: 65),
        Shoe(imageName: "nikeBrownCasual", brandName: "Nike", modelName: "Hyper Comfort", price: 80),
        Shoe(imageName: "nikePinkCasual.png", brandName: "Nike", modelName: "AirMaxx", price: 115),
        Shoe(imageName: "nikeRedCasuals", brandName: "Nike", modelName: "Hightop Classic", price: 150)
    ]
    
    private let runningShoes = [
        Shoe(imageName: "adidasBlueRunning.png", brandName: "Adidas", modelName: "Boost", price: 125),
        Shoe(imageName: "nikeBlackRunning.png", brandName: "Nike", modelName: "SpeedX", price: 115),
        Shoe(imageName: "nikeWhiteRunning.png", brandName: "Nike", modelName: "Glide 2", price: 85),
        Shoe(imageName: "nikeYellowRunning.png", brandName: "Nike", modelName: "HyperX Speed", price: 150)
    ]
    
    //retreive the categories
    func getCategories() -> [Category] {
         return categories
    }
    
    //retreive new arrivals
    func getNewArrivals() -> [Shoe] {
        return newestArrivalShoes
    }
    
    //retreive casual shoes
    func getCasualShoes() -> [Shoe] {
        return casualShoes
    }
    
    //retreive running shoes
    func getRunningShoes() -> [Shoe] {
        return runningShoes
    }
    
    //retreive boots
    func getBoots() -> [Shoe] {
        return bootShoes
    }
    
    //get shoe array for the correct category
    func getShoes(categoryTitle: String) -> [Shoe] {
        switch categoryTitle {
        case "RUNNING":
            return getRunningShoes()
        case "CASUAL":
            return getCasualShoes()
        case "BOOTS":
            return getBoots()
        default:
            return getRunningShoes()
        }
    }
    
    
    
    
}
