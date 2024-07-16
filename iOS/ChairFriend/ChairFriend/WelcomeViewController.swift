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
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        print("Login button tapped")
        let storyboard = UIStoryboard(name: "Main", bundle: nil) // Main.storyboard 가져오기
        guard let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginView") as? LoginViewController else {
            print("LoginViewController could not be instantiated.")
            return
        }
        loginVC.modalPresentationStyle = .fullScreen
        self.present(loginVC, animated: true, completion: nil)
    }
}


