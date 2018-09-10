//
//  SignUpViewController.swift
//  deliciously
//
//  Created by Cory Barton on 9/6/18.
//  Copyright © 2018 Cory Barton. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

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
