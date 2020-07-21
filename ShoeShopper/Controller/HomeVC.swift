//
//  HomeVC.swift
//  ShoeShopper
//
//  Created by Adrian Galecki on 7/20/20.
//  Copyright © 2020 Adrian Galecki. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var newArrivalsCollectionView: UICollectionView!
    @IBOutlet weak var categoryTableView: UITableView!
    
    private(set) public var newArrivalShoes = [Shoe]()
    private(set) public var categories = [Category]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //assign collection view delegate and dataSource
        newArrivalsCollectionView.delegate = self
        newArrivalsCollectionView.dataSource = self
        
        //assign tablie view dataSource and delegate
        categoryTableView.delegate = self
        categoryTableView.dataSource = self
        
        categoryTableView.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        categoryTableView.layer.borderWidth = 2
        
        //get the new arrival shoes from Shoe Service
        newArrivalShoes = ShoeService.shoeServiceInstance.getNewArrivals()
        
        //get the categories from the Shoe Service
        categories = ShoeService.shoeServiceInstance.getCategories()

    }
    
    @IBAction func heartAddToCartAction(_ sender: Any) {
        
    }
    
    @IBAction func detailsBtnTapped(_ sender: Any) {
        
    }
    
    //COLLECTION VIEW DATA
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newArrivalShoes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "newArrivalCell", for: indexPath) as? NewestArrivalsCell {
            let newArrivalShoe = newArrivalShoes[indexPath.row]
            
            cell.updateView(shoe: newArrivalShoe)
            return cell
        }
        else {
            return NewestArrivalsCell()
        }
    }
    //END COLLECTION VIEW DATA

    //TABLE VIEW DATA
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as? CategoryCell {
            let category = categories[indexPath.row]
            
            cell.updateView(category)
            return cell
        }
        else {
            return CategoryCell()
        }
    }
    
}
