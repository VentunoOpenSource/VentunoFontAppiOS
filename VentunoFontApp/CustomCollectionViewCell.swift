//
//  CustomCollectionViewCell.swift
//  VentunoFontApp
//
//  Created by Ventuno Technologies on 27/03/19.
//  Copyright © 2019 Ventuno Technologies. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var mBtnTitle: UIButton!
    
    @IBOutlet weak var mLabel: UILabel!
    @IBOutlet weak var mLabel64: UILabel!
    
    @IBOutlet weak var mBtnTitle64: UIButton!
    
    @IBOutlet weak var mRawTitle: UILabel!
    
     public static let vf_home:String        = "\u{f015}"
    
    public enum FONT: String {
        case
        VENTUNO = "ventuno"
        , VENTUNO_PLAYER_SDK = "ventuno-mobile"
        , AWESOME_FONT_SOLID = "FontAwesome5FreeSolid"
        , AWESOME_FONT_REGULAR = "FontAwesome5FreeRegular"
        , AWESOME_FONT_LEGACY = "FontAwesome"
    }
    
    public static func getFont(_ fontType:FONT, size:CGFloat) -> UIFont
    {
        return UIFont(name: fontType.rawValue, size: size)!
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let size1:CGFloat = 48;
        let size2:CGFloat = 64;
        
        
        //mLabel64?.font = CustomCollectionViewCell.getFont(.AWESOME_FONT_SOLID, size: 64)
       // mBtnTitle64.titleLabel?.font =  CustomCollectionViewCell.getFont(.AWESOME_FONT_SOLID, size: 64)
        
        
        mLabel?.font = UIFont(name: "ventuno", size: size1)
        mBtnTitle.titleLabel?.font =  UIFont(name: "ventuno", size: size1)
        
        
        //Working
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
        mLabel64.text = str
      //  mLabel64?.text = CustomCollectionViewCell.vf_home
        mRawTitle?.text = str
        
        mBtnTitle?.setTitle(str, for: .normal)
    mBtnTitle64?.setTitle(str, for: .normal)
       // mBtnTitle64?.setTitle(CustomCollectionViewCell.vf_home, for: .normal)
    }
    
}
