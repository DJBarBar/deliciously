//
//  CustomTextField.swift
//  deliciously
//
//  Created by Cory Barton on 9/6/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {
    
    //First loading func
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewProperties()
    }
    
    //First loading required func
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViewProperties()
    }
    
    //Makes the textfield border thin with
    //color and moves the placeholder to the
    //right with color
    func setupViewProperties(){
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 1
        
        self.layer.borderColor = UIColor(hexString: "E0E0E0", withAlpha: 1).cgColor
        self.attributedPlaceholder = NSAttributedString(string: placeholder!, attributes:[NSAttributedString.Key.foregroundColor : UIColor(hexString: "9E9E9E")])
        
        self.layer.sublayerTransform = CATransform3DMakeTranslation(12, 0, 0)
    }
    
}
