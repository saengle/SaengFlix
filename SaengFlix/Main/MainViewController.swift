//
//  MainViewController.swift
//  SaengFlix
//
//  Created by 쌩 on 6/4/24.
//

import UIKit

class MainViewController: UIViewController {
    
    let mainView = MainView()
    
    
    lazy var leftBarItem: UIBarButtonItem = {
        let button = UIBarButtonItem(title: "Ssaeng 님", style: .plain, target: self, action: #selector(searchButtonClicked))
        button.tintColor = .white
        button.isSelected = false
        button.tag = 1
        return button
    }()
    
    lazy var rightBarButton: UIBarButtonItem = {
        let button =  UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(searchButtonClicked))
        button.tintColor = .white
        button.tag = 2
        return button
        
    }()

    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "쌩님"
        navigationItem.leftBarButtonItem = leftBarItem
        navigationItem.rightBarButtonItem = rightBarButton
    }
}

extension MainViewController {
    @objc func searchButtonClicked() {}
}
