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
        signinButtonAddTarget()
        navigationController?.isNavigationBarHidden = true
    }
    
    
}


extension LoginViewController {
    private func signinButtonAddTarget() {
        self.loginView.signinButton.addTarget(self, action: #selector(pushVc), for: .touchUpInside)
        print(#function)
    }
    
    @objc func pushVc() {
        print(#function)
        let vc = MainViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
//        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
