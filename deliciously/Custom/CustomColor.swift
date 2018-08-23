//
//  CustomColor.swift
//  deliciously
//
//  Created by Cory Barton on 8/22/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import Foundation
import Chameleon

struct CustomColor {
    
    let orange: UIColor!
    
    init(withFrame: CGRect) {
        
        let firstColor = UIColor(hexString: "FF8C38", withAlpha: 1)
        let secondColor = UIColor(hexString: "FF6322", withAlpha: 1)
        
        orange = UIColor(gradientStyle: .leftToRight, withFrame: withFrame, andColors: [firstColor!, secondColor!])
        
    }
    
    func getOrangeColor() -> UIColor {
        return orange
    }
    
}
