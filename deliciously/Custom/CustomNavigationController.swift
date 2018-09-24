//
//  CustomNavigationController.swift
//  deliciously
//
//  Created by Cory Barton on 9/10/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController {
    
    //First Loading Func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        super.viewDidLoad()
        
        //Makes the Navigation Bar invisible and clear
        func makeBarInvisible() {
            
            navigationBar.setBackgroundImage(UIImage(), for: .default)
            navigationBar.shadowImage = UIImage()
            navigationBar.isTranslucent = true
            
        }
        
    }
    
    
    
}
