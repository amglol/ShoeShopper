//
//  ProductsVC.swift
//  ShoeShopper
//
//  Created by Adrian Galecki on 7/23/20.
//  Copyright © 2020 Adrian Galecki. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productsCollectionView: UICollectionView!
    
    private(set) public var shoes = [Shoe]()
    
    var category: Category!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        productsCollectionView.delegate = self
        productsCollectionView.dataSource = self

        //show the shoes from the selected category
        if let incomingCategory = category {
            initializeProducts(category: incomingCategory)
        }
        
    }
    
    //setup the collection view
    func initializeProducts(category: Category) {
        print("myCategory = \(category)")
        shoes = ShoeService.shoeServiceInstance.getShoes(categoryTitle: category.name)
        
        navigationItem.title = category.name
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return shoes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCollectionViewCell {
            let product = shoes[indexPath.row]

            cell.updateView(shoe: product)
            return cell
        }
        else {
            return ProductCollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedShoe = shoes[indexPath.row]
        performSegue(withIdentifier: "detailedShoe", sender: selectedShoe)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailedVC = segue.destination as? DetailedVC {
            detailedVC.shoe = sender as? Shoe
        }
    }
}
