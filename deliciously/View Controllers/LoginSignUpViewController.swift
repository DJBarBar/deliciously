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
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var dontHaveAccountLabel: UILabel!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpProperties()
        
    }
    
    //Set up the UI Elements
    func setUpProperties() {
        
        
        let orange = CustomColor(withFrame: loginButton.frame).getOrangeColor()
        
        //LOGIN BUTTON
        loginButton.layer.backgroundColor = orange.cgColor
        loginButton.layer.cornerRadius = loginButton.layer.frame.height/2
        
        //SIGN UP BUTTON
        signUpButton.layer.borderWidth = 2
        signUpButton.layer.borderColor = orange.cgColor
        signUpButton.layer.cornerRadius = signUpButton.layer.frame.height/2
        
        //SPACING
        let spacing = 1.5
        let buttonAtrributedString = NSMutableAttributedString(string: (loginButton.titleLabel?.text)!)
        buttonAtrributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSMakeRange(0, buttonAtrributedString.length))
        loginButton.setAttributedTitle(buttonAtrributedString, for: .normal)
        
        
    }

}
