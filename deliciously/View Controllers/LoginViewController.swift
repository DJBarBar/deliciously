//
//  LoginViewController.swift
//  deliciously
//
//  Created by Cory Barton on 8/24/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    //UI View Properties
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInLabel: CustomLabel!
    @IBOutlet weak var goodToSeeYouLabel: CustomLabel!
    
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    //First loading Func
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViewProperties()
        
    }
    
    //Pops current VC in stack
    @IBAction func backButtonTapped(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
        
    }
    
    //Sets up the view properties
    func setUpViewProperties() {
        //self.navigationController?.navigationBar.frame.origin.y = 20
    }
    
    
}



//MARK: -Keyboard Hide/Show
extension LoginViewController {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.navigationController?.navigationBar.isHidden = true
        self.logInLabel.isHidden = true
        self.goodToSeeYouLabel.isHidden = true
        self.topConstraint.constant = CGFloat(10)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        topConstraint.constant = CGFloat(74)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.navigationController?.navigationBar.isHidden = false
        self.logInLabel.isHidden = false
        self.goodToSeeYouLabel.isHidden = false
        self.topConstraint.constant = CGFloat(74)
        textField.resignFirstResponder()
        return true
    }
    
    
}

