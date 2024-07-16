//
//  WelcomeController.swift
//  ChairFriend
//
//  Created by 김동현 on 7/13/24.
//

import UIKit




class WelcomeViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loginButton.layer.masksToBounds = true
        self.loginButton.layer.cornerRadius = 30
        
        self.signUpButton.layer.masksToBounds = true
        self.signUpButton.layer.cornerRadius = 30
    }
}


