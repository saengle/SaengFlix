//
//  LoginView.swift
//  SaengFlix
//
//  Created by 쌩 on 6/4/24.
//

import UIKit

import SnapKit

class LoginView: UIView {
    
    let mainTitleLabel: UILabel = {
        let lb = UILabel()
        lb.text = "SAENGFLIX"
        lb.textColor = #colorLiteral(red: 0.9283923507, green: 0.1438079178, blue: 0.09826222807, alpha: 1)
        lb.font = .boldSystemFont(ofSize: 30)
        return lb
    }()
    
    let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 8
        view.alignment = .fill
        return view
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "이메일", attributes: [NSAttributedString.Key.foregroundColor : UIColor.systemGray6])
        textField.layer.cornerRadius = 10
        textField.layer.masksToBounds = true
        textField.textAlignment = .center
        textField.backgroundColor = .systemGray
        
        return textField
    }()
    
    let paswordTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.systemGray6])
        textField.layer.cornerRadius = 10
        textField.layer.masksToBounds = true
        textField.textAlignment = .center
        textField.backgroundColor = .systemGray
        
        return textField
    }()
    
    let nicknameTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor : UIColor.systemGray6])
        textField.layer.cornerRadius = 10
        textField.layer.masksToBounds = true
        textField.textAlignment = .center
        textField.backgroundColor = .systemGray
        
        return textField
    }()
    
    let locationTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "주소", attributes: [NSAttributedString.Key.foregroundColor : UIColor.systemGray6])
        textField.layer.cornerRadius = 10
        textField.layer.masksToBounds = true
        textField.textAlignment = .center
        textField.backgroundColor = .systemGray
        
        return textField
    }()
    
    let codeTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.systemGray6])
        textField.layer.cornerRadius = 10
        textField.layer.masksToBounds = true
        textField.textAlignment = .center
        textField.backgroundColor = .systemGray
        
        return textField
    }()
    
    let signinButton: UIButton = {
        let button = UIButton()
        button.setTitle("회원가입", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        return button
    }()
    
    let toggleStackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        
        
        return sv
    }()
    
    let additionalLabel: UILabel = {
        let label = UILabel()
        label.text = "추가 정보 입력"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20)
        
        return label
    }()
    
    let toggleSwitch: UISwitch = {
       let toggle = UISwitch()
        toggle.onTintColor = .red
        toggle.isOn = true
        return toggle
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.07058823529, green: 0.07058823529, blue: 0.07058823529, alpha: 1)
        //            setup()
        configureHierachy()
        configureLayout()
    }
    
    // MARK: - init
    // 생성자 재정의 시 상위에 구현된 필수 생성자도 구현해야 함.
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LoginView {
    private func configureUI() {
        
    }
    
    private func configureHierachy() {
        [mainTitleLabel, stackView].forEach{addSubview($0)}
        [emailTextField, paswordTextField, nicknameTextField, locationTextField, codeTextField, signinButton, toggleStackView].forEach{stackView.addSubview($0)}
        [additionalLabel, toggleSwitch].forEach{toggleStackView.addSubview($0)}
    }
    
    private func configureLayout() {
        mainTitleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.height.equalTo(40)
        }
        
        stackView.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(self.safeAreaLayoutGuide).inset(20)
            make.top.equalTo(mainTitleLabel.snp.bottom).offset(100)
            make.height.equalTo(460)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
            make.height.equalTo(52)
            make.top.equalToSuperview()
        }
        paswordTextField.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
            make.height.equalTo(52)
            make.top.equalTo(emailTextField.snp.bottom).offset(16)
        }
        nicknameTextField.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
            make.height.equalTo(52)
            make.top.equalTo(paswordTextField.snp.bottom).offset(16)
        }
        locationTextField.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
            make.height.equalTo(52)
            make.top.equalTo(nicknameTextField.snp.bottom).offset(16)
        }
        codeTextField.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
            make.height.equalTo(52)
            make.top.equalTo(locationTextField.snp.bottom).offset(16)
        }
        
        signinButton.snp.makeConstraints { make in
            make.top.equalTo(codeTextField.snp.bottom).offset(16)
            make.horizontalEdges.equalToSuperview()
            make.height.equalTo(60)
        }
        
        toggleStackView.snp.makeConstraints { make in
            make.top.equalTo(signinButton.snp.bottom).offset(16)
            make.bottom.equalToSuperview()
            make.horizontalEdges.bottom.equalToSuperview()
        }
        
        additionalLabel.snp.makeConstraints { make in
            make.centerY.leading.equalToSuperview()
        }
        
        toggleSwitch.snp.makeConstraints { make in
            make.centerY.trailing.equalToSuperview()
        }
    }
}

#Preview {
    LoginViewController()
}
