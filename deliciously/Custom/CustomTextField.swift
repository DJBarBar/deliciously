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
        defaultSetUp()
    }
    
    //First required
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultSetUp()
    }
    
    //Sets up textfield to custom
    func defaultSetUp() {
        
        //Textfield
        layer.borderWidth = 1
        layer.borderColor = UIColor(hexString: "E0E0E0").cgColor
        
        attributedPlaceholder = NSAttributedString(string: placeholder!, attributes: [NSAttributedString.Key.foregroundColor : UIColor(hexString: "9E9E9E")])
        layer.sublayerTransform = CATransform3DMakeTranslation(12, 0, 0)
        
        
    }
    
}
