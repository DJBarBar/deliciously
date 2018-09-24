//
//  CustomTabBarController.swift
//  deliciously
//
//  Created by Cory Barton on 9/24/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    //First loading func
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProperties()
    }
    
    //Initial setup
    func setUpProperties(){
        let orange = CustomColor(withFrame: tabBar.frame).getColor()
        self.tabBar.tintColor = orange
        self.tabBar.backgroundColor = .white
    }
    
    
}
