//
//  CustomButton.swift
//  deliciously
//
//  Created by Cory Barton on 8/24/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    //FIRST LOADING FUNC
    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultSetup()
    }
    
    //FIRST REQUIRED LOADING FUNC
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultSetup()
    }
    
    //CUSTOMIZES THE BUTTON TO ORANGE BACKGROUND COLOR
    func defaultSetup() {
        
        let orange = CustomColor(withFrame: frame).getOrangeColor()
        
        layer.backgroundColor = orange.cgColor
        layer.cornerRadius = layer.frame.height/2
        layer.masksToBounds = true
        
        //SPACING
        let spacing = 1.5
        let buttonAtrributedString = NSMutableAttributedString(string: (titleLabel?.text)!)
        buttonAtrributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSMakeRange(0, buttonAtrributedString.length))
        self.setAttributedTitle(buttonAtrributedString, for: .normal)
        
    }
    
    func makeCustomWhiteButton() {
        
        let orange = CustomColor(withFrame: frame).getOrangeColor()
        
        //SIGN UP BUTTON
        layer.borderWidth = 2
        backgroundColor = .white
        layer.borderColor = orange.cgColor
        layer.cornerRadius = layer.frame.height/2
        layer.masksToBounds = true
        
        //SPACING FOR SIGN UP BUTTON
        let signUpSpacing = 1.5
        let signUpSpacingButtonAtrributedString = NSMutableAttributedString(string: (titleLabel?.text)!)
        signUpSpacingButtonAtrributedString.addAttribute(NSAttributedString.Key.kern, value: signUpSpacing, range: NSMakeRange(0, signUpSpacingButtonAtrributedString.length))
        self.setAttributedTitle(signUpSpacingButtonAtrributedString, for: .normal)
        
    }
    
}
