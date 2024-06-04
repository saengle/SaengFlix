//
//  LoginViewController.swift
//  SaengFlix
//
//  Created by 쌩 on 6/4/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginView = LoginView()
    
    override func loadView() {
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}


extension LoginViewController {
    private func signinButtonAddTarget() {
        self.loginView.signinButton.addTarget(self, action: #selector(pushVc), for: .touchUpInside)
    }
    
    @objc func pushVc() {
        
    }
    
}
