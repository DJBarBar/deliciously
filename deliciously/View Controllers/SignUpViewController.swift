//
//  SignUpViewController.swift
//  deliciously
//
//  Created by Cory Barton on 9/6/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var niceToMeetYouLabel: CustomLabel!
    @IBOutlet weak var signUpLabel: CustomLabel!
    @IBOutlet weak var usernameTextField: CustomTextField!
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    //First loading func
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //Pops current VC in stack
    @IBAction func backButtonTapped(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
        
    }
    
    //HIDES STATUS BAR
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}

//Slide Up Keyboard
extension SignUpViewController {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.navigationController?.navigationBar.isHidden = true
        self.signUpLabel.isHidden = true
        self.niceToMeetYouLabel.isHidden = true
        self.topConstraint.constant = CGFloat(40)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        topConstraint.constant = CGFloat(80)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.navigationController?.navigationBar.isHidden = false
        self.signUpLabel.isHidden = false
        self.niceToMeetYouLabel.isHidden = false
        self.topConstraint.constant = CGFloat(80)
        textField.resignFirstResponder()
        return true
    }
}
