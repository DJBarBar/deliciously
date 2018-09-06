//
//  LoginSignUpViewController.swift
//  deliciously
//
//  Created by Cory Barton on 8/22/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import UIKit

class LoginSignUpViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var loginButton: CustomButton!
    @IBOutlet weak var dontHaveAccountLabel: UILabel!
    @IBOutlet weak var signUpButton: CustomButton!
    @IBOutlet weak var deliciouslyLabel: CustomLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpProperties()
        
    }
    
    //Set up the UI Elements
    func setUpProperties() {
        
        signUpButton.makeCustomWhiteButton()
        deliciouslyLabel.setSpacing(space: 1.75)
        
    }
    
    //HIDES STATUS BAR
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
