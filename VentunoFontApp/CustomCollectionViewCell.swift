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
    
    @IBOutlet weak var mTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        mLabel?.font = UIFont(name: "ventuno", size: 40)
    }
    
}
