//
//  CustomLabel.swift
//  deliciously
//
//  Created by Cory Barton on 8/24/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {

    //FIRST FUNC TO LOAD
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        defaultSetup()
        
    }
    
    //FIRST REQUIRED TO LOAD
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        defaultSetup()
        
    }
    
    //SET
    func defaultSetup() {
        
        let labelSpace = 1
        let labelAttributedString = NSMutableAttributedString(string: text!)
        labelAttributedString.addAttribute(NSAttributedString.Key.kern, value: labelSpace, range: NSMakeRange(0, labelAttributedString.length))
        attributedText = labelAttributedString
        
    }
    
    //SETS THE SPACING OF TEXT
    func setSpacing(space: CGFloat) {
        
        let labelAttributedString = NSMutableAttributedString(string: text!)
        labelAttributedString.addAttribute(NSAttributedString.Key.kern, value: space, range: NSMakeRange(0, labelAttributedString.length))
        attributedText = labelAttributedString
        
    }
    
}
