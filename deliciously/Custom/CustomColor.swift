//
//  CustomColor.swift
//  deliciously
//
//  Created by Cory Barton on 8/22/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import Foundation
import Chameleon
import UIKit

//This is a custom class to return orange color
//gradient
struct CustomColor {
    
    var customOrange: UIColor!
    
    init(withFrame: CGRect) {
        
        let firstColor = UIColor(hexString: "FF8C2B", withAlpha: 1)
        let secondColor = UIColor(hexString: "FF6322", withAlpha: 1)
        
        customOrange = UIColor(gradientStyle: .leftToRight, withFrame: withFrame, andColors: [firstColor!, secondColor!])
    }
    
    //Gets the orange color
    func getColor() -> UIColor {
        return customOrange
    }
    
}
