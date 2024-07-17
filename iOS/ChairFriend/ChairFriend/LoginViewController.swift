//
//  LoginViewController.swift
//  ChairFriend
//
//  Created by 김동현 on 7/13/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loginButton.layer.masksToBounds = true
        self.loginButton.layer.cornerRadius = 30
    }
}
