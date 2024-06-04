//
//  MainView.swift
//  SaengFlix
//
//  Created by 쌩 on 6/4/24.
//

import UIKit

import SnapKit


class MainView: UIView {
    
    let mainView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear // 추후 삭제요망
        return view
    }()
    
    let mainPosterImageView: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 16
        view.layer.masksToBounds = true
        view.backgroundColor = .white
        return view
    }()
    
    let mainPosterDescriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "긴장감 넘치는 | 점입가경 스릴러"
        return label
    }()
    
    let playButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 6
        button.layer.masksToBounds = true
        button.backgroundColor = .gray
        return button
    }()
    
    let addWishButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 6
        button.layer.masksToBounds = true
        button.backgroundColor = .gray
        button.tintColor = .white
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.setTitle("내가 찜한 리스트", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = #colorLiteral(red: 0.07058823529, green: 0.07058823529, blue: 0.07058823529, alpha: 1)
        configureHierachy()
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MainView {
    private func configureHierachy() {
        [mainView].forEach{addSubview($0)}
        [mainPosterImageView, mainPosterDescriptionLabel, playButton, addWishButton].forEach{mainView.addSubview($0)}
//        [additionalLabel, toggleSwitch].forEach{toggleStackView.addSubview($0)}
    }
    
    private func configureLayout() {
        mainView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.leading.trailing.equalTo(self.safeAreaLayoutGuide).inset(16)
            make.height.equalTo(480)
        }
        mainPosterImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        mainPosterDescriptionLabel.snp.makeConstraints { make in
            make.bottom.equalTo(playButton.snp.top).offset(-16)
            make.centerX.equalToSuperview()
        }
        playButton.snp.makeConstraints { make in
            make.bottom.leading.equalToSuperview().inset(16)
            make.trailing.equalTo(mainView.snp.centerX).offset(-8)
            make.height.equalTo(52)
        }
        addWishButton.snp.makeConstraints { make in
            make.bottom.trailing.equalToSuperview().inset(16)
            make.leading.equalTo(mainView.snp.centerX).offset(8)
            make.height.equalTo(52)
        }
    }
        
    
}

