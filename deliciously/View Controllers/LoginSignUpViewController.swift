//
//  LoginSignUpViewController.swift
//  deliciously
//
//  Created by Cory Barton on 8/22/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import UIKit
import Chameleon

class LoginSignUpViewController: UIViewController {
    
    
    
    //MARK: Outlets
    @IBOutlet weak var loginButton: CustomButton!
    @IBOutlet weak var dontHaveAccountLabel: UILabel!
    @IBOutlet weak var signUpButton: CustomButton!
    
    
    //First Loading Func
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    
    //Set up UI properties
    func setUpViews() {
        self.navigationController?.navigationBar.frame.origin.y = 20
        signUpButton.makeBackgroundWhiteWithBorder()
        
    }
    
    //Hides status bar
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
