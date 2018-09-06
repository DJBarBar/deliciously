//
//  LoginViewController.swift
//  deliciously
//
//  Created by Cory Barton on 8/24/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    //UI View Properties
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    //First Load Func
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProperties()
       
    }
    
    //Sets up thr UI elements
    func setUpProperties() {
        
        //Textfield
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor(hexString: "E0E0E0").cgColor
        
        emailTextField.attributedPlaceholder = NSAttributedString(string: emailTextField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : UIColor(hexString: "9E9E9E")])
        emailTextField.layer.sublayerTransform = CATransform3DMakeTranslation(12, 0, 0)
        
    }


}
