//
//  ViewController.swift
//  SaengFlix
//
//  Created by 쌩 on 6/4/24.
//

import UIKit

class ViewController: UITabBarController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
//        view.addSubview(tabBarCon.view)
        createTabBarController()
    }
    
    
}
extension ViewController {
    
    func createTabBarController() {
        self.tabBar.tintColor = .white
        
        let firstVC = UINavigationController(rootViewController: MainViewController())
        firstVC.tabBarItem =  UITabBarItem(title: "홈", image: UIImage(systemName: "house.fill"), tag: 0)
       
//        let secondVC = UINavigationController(rootViewController: SecondViewController())
//        secondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .topRated, tag: 1)
        
        self.viewControllers = [firstVC
//                                     , secondVC
        ]
    }
    
}
