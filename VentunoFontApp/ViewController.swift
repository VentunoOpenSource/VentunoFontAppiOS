//
//  ViewController.swift
//  VentunoFontApp
//
//  Created by Ventuno Technologies on 27/03/19.
//  Copyright © 2019 Ventuno Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
   
    
    let reuseIdentifier = "cell_id"
   
    var items:[Character]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildItems()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CustomCollectionViewCell
        
        let text = String(self.items?[indexPath.item] ?? "a")
        cell.setText(text)
        
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }


}
extension ViewController {
    
    func buildItems()
    {
        var constructedItem =  iterateSmallCaseLetters()
        constructedItem += iterateUpperCaseLetters()
        
        items = constructedItem
    }
    
    func iterateSmallCaseLetters() -> [Character]
    {
        let letters:[Character] = (0..<26).map({Character(UnicodeScalar("a".unicodeScalars.first!.value + $0) ?? "a")})
        print(letters)
       
        return letters
    }
    
    func iterateUpperCaseLetters() -> [Character]
    {
        let letters:[Character] = (0..<26).map({Character(UnicodeScalar("A".unicodeScalars.first!.value + $0) ?? "Z")})
        print(letters)
        
        return letters
        
    }
    
    
    
    
}

