//
//  CustomCollectionViewCell.swift
//  VentunoFontApp
//
//  Created by Ventuno Technologies on 27/03/19.
//  Copyright © 2019 Ventuno Technologies. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var mLabel: UILabel!
    @IBOutlet weak var mBtnTitle: UIButton!
    
    @IBOutlet weak var mLabel64: UILabel!
    @IBOutlet weak var mBtnTitle64: UIButton!
    
    @IBOutlet weak var mRawTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let size1:CGFloat = 48;
        let size2:CGFloat = 64;
        
        mLabel?.font = UIFont(name: "ventuno", size: size1)
        mBtnTitle.titleLabel?.font =  UIFont(name: "ventuno", size: size1)
        
        mLabel64?.font = UIFont(name: "ventuno", size: size2)
        mBtnTitle64.titleLabel?.font =  UIFont(name: "ventuno", size: size2)
       
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font names: \(names)")
        }   
        
    }
    
    public func setText(_ str:String)
    {
        mLabel?.text = str
        mLabel64?.text = str
        mRawTitle?.text = str
        
        mBtnTitle?.setTitle(str, for: .normal)
        mBtnTitle64?.setTitle(str, for: .normal)
    }
    
}
