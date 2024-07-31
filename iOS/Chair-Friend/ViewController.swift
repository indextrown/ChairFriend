//
//  ViewController.swift
//  Chair-Friend
//
//  Created by 김동현 on 7/31/24.
//

import UIKit
import AuthenticationServices   // Apple ID 인증기능 제공

class ViewController: UIViewController {
    @IBOutlet weak var kakaoLoginButton: UIButton!
    
    // 버튼 인스턴스 생성
    let appleLoginButton = ASAuthorizationAppleIDButton()
    
    // viewDidLoad가 메모리에 로드된 후 호출
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // 사용자 인터페이스 설정
    private func configureUI() {
        setAdditionalPropertyAttributes()
        setConstraints()
        setButtonImageFill()
    }
    
    // authorizationAppleIDButton에 대한 속성설정, 버튼이 눌리면 handleAuthorizationAppleIDButton메서드가 호출되도록 타겟을 추가
    private func setAdditionalPropertyAttributes() {
        appleLoginButton.addTarget(self, action: #selector(handleAuthorizationAppleIDButton(_:)), for: .touchUpInside)
    }

    // authorizationAppleIDButton을 뷰에 추가하고 자동 크기 조정 속성을 비활성화
    // 버튼을 뷰의 중앙에 배치하도록 제약 조건을 설정
    private func setConstraints() {
        view.addSubview(appleLoginButton)
        appleLoginButton.translatesAutoresizingMaskIntoConstraints = false
        kakaoLoginButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            // 카카오톡 버튼 크기 설정
            kakaoLoginButton.widthAnchor.constraint(equalToConstant: 200),
            kakaoLoginButton.heightAnchor.constraint(equalToConstant: 50),

            // 애플 로그인 버튼 위치 및 크기 설정
            appleLoginButton.topAnchor.constraint(equalTo: kakaoLoginButton.bottomAnchor, constant: 20),
            appleLoginButton.centerXAnchor.constraint(equalTo: kakaoLoginButton.centerXAnchor),
            appleLoginButton.widthAnchor.constraint(equalTo: kakaoLoginButton.widthAnchor),
            appleLoginButton.heightAnchor.constraint(equalTo: kakaoLoginButton.heightAnchor)
        ])
    }
//    private func setConstraints() {
//        view.addSubview(appleLoginButton)
//        appleLoginButton.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            appleLoginButton.topAnchor.constraint(equalTo: kakaoLoginButton.bottomAnchor, constant: 20),
//            appleLoginButton.centerXAnchor.constraint(equalTo: kakaoLoginButton.centerXAnchor),
//            appleLoginButton.widthAnchor.constraint(equalToConstant: 200),
//            appleLoginButton.heightAnchor.constraint(equalToConstant: 50)
//            
////            appleLoginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
////            appleLoginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//            
//        ])
//    }
    
    // 카카오톡 버튼 이미지 채우기 설정
    private func setButtonImageFill() {
        kakaoLoginButton.imageView?.contentMode = .scaleAspectFill
    }
    
    @objc private func handleAuthorizationAppleIDButton(_ sender: ASAuthorizationAppleIDButton) {
        print(#function)
    }

    

}

